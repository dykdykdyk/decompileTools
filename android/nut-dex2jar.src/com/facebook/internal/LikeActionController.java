package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.b.j;
import android.util.Log;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookRequestError;
import com.facebook.RequestBatch;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class LikeActionController
{
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
  public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
  private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
  public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
  public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
  private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
  private static final String JSON_BUNDLE_PENDING_CALL_ANALYTICS_BUNDLE = "pending_call_analytics_bundle";
  private static final String JSON_INT_VERSION_KEY = "com.facebook.internal.LikeActionController.version";
  private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
  private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
  private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
  private static final String JSON_STRING_PENDING_CALL_ID_KEY = "pending_call_id";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
  private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
  private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
  private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
  private static final int LIKE_ACTION_CONTROLLER_VERSION = 2;
  private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
  private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
  private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
  private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final int MAX_CACHE_SIZE = 128;
  private static final int MAX_OBJECT_SUFFIX = 1000;
  private static final String TAG = LikeActionController.class.getSimpleName();
  private static Context applicationContext;
  private static final ConcurrentHashMap<String, LikeActionController> cache = new ConcurrentHashMap();
  private static FileLruCache controllerDiskCache;
  private static WorkQueue diskIOWorkQueue = new WorkQueue(1);
  private static Handler handler;
  private static boolean isInitialized;
  private static boolean isPendingBroadcastReset;
  private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
  private static String objectIdForPendingController;
  private static volatile int objectSuffix;
  private AppEventsLogger appEventsLogger;
  private boolean isObjectLiked;
  private boolean isObjectLikedOnServer;
  private boolean isPendingLikeOrUnlike;
  private String likeCountStringWithLike;
  private String likeCountStringWithoutLike;
  private String objectId;
  private boolean objectIsPage;
  private Bundle pendingCallAnalyticsBundle;
  private UUID pendingCallId;
  private Session session;
  private String socialSentenceWithLike;
  private String socialSentenceWithoutLike;
  private String unlikeToken;
  private String verifiedObjectId;

  private LikeActionController(Session paramSession, String paramString)
  {
    this.session = paramSession;
    this.objectId = paramString;
    this.appEventsLogger = AppEventsLogger.newLogger(applicationContext, paramSession);
  }

  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString)
  {
    broadcastAction(paramLikeActionController, paramString, null);
  }

  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramString);
    paramString = paramBundle;
    if (paramLikeActionController != null)
    {
      paramString = paramBundle;
      if (paramBundle == null)
        paramString = new Bundle();
      paramString.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", paramLikeActionController.getObjectId());
    }
    if (paramString != null)
      localIntent.putExtras(paramString);
    j.a(applicationContext).a(localIntent);
  }

  private boolean canUseOGPublish()
  {
    return (!this.objectIsPage) && (this.verifiedObjectId != null) && (this.session != null) && (this.session.getPermissions() != null) && (this.session.getPermissions().contains("publish_actions"));
  }

  private static void createControllerForObjectId(String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    Object localObject = getControllerFromInMemoryCache(paramString);
    if (localObject != null)
    {
      invokeCallbackWithController(paramCreationCallback, (LikeActionController)localObject);
      return;
    }
    LikeActionController localLikeActionController = deserializeFromDiskSynchronously(paramString);
    localObject = localLikeActionController;
    if (localLikeActionController == null)
    {
      localObject = new LikeActionController(Session.getActiveSession(), paramString);
      serializeToDiskAsync((LikeActionController)localObject);
    }
    putControllerInMemoryCache(paramString, (LikeActionController)localObject);
    handler.post(new LikeActionController.2((LikeActionController)localObject));
    invokeCallbackWithController(paramCreationCallback, (LikeActionController)localObject);
  }

  // ERROR //
  private static LikeActionController deserializeFromDiskSynchronously(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 367	com/facebook/internal/LikeActionController:getCacheKeyForObjectId	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_0
    //   10: getstatic 274	com/facebook/internal/LikeActionController:controllerDiskCache	Lcom/facebook/internal/FileLruCache;
    //   13: aload_0
    //   14: invokevirtual 373	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload 4
    //   20: astore_2
    //   21: aload_0
    //   22: ifnull +32 -> 54
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: invokestatic 379	com/facebook/internal/Utility:readStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: astore_2
    //   36: aload_0
    //   37: astore_1
    //   38: aload 5
    //   40: invokestatic 383	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   43: ifne +11 -> 54
    //   46: aload_0
    //   47: astore_1
    //   48: aload 5
    //   50: invokestatic 386	com/facebook/internal/LikeActionController:deserializeFromJson	(Ljava/lang/String;)Lcom/facebook/internal/LikeActionController;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull +9 -> 66
    //   60: aload_0
    //   61: invokestatic 390	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: getstatic 128	com/facebook/internal/LikeActionController:TAG	Ljava/lang/String;
    //   76: ldc_w 392
    //   79: aload_2
    //   80: invokestatic 398	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_3
    //   85: astore_1
    //   86: aload_0
    //   87: ifnull -21 -> 66
    //   90: aload_0
    //   91: invokestatic 390	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull +7 -> 107
    //   103: aload_1
    //   104: invokestatic 390	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   107: aload_0
    //   108: athrow
    //   109: astore_0
    //   110: goto -11 -> 99
    //   113: astore_2
    //   114: goto -43 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   5	18	68	java/io/IOException
    //   5	18	96	finally
    //   27	33	109	finally
    //   38	46	109	finally
    //   48	54	109	finally
    //   73	84	109	finally
    //   27	33	113	java/io/IOException
    //   38	46	113	java/io/IOException
    //   48	54	113	java/io/IOException
  }

  private static LikeActionController deserializeFromJson(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.optInt("com.facebook.internal.LikeActionController.version", -1) != 2)
        return null;
      LikeActionController localLikeActionController = new LikeActionController(Session.getActiveSession(), paramString.getString("object_id"));
      localLikeActionController.likeCountStringWithLike = paramString.optString("like_count_string_with_like", null);
      localLikeActionController.likeCountStringWithoutLike = paramString.optString("like_count_string_without_like", null);
      localLikeActionController.socialSentenceWithLike = paramString.optString("social_sentence_with_like", null);
      localLikeActionController.socialSentenceWithoutLike = paramString.optString("social_sentence_without_like", null);
      localLikeActionController.isObjectLiked = paramString.optBoolean("is_object_liked");
      localLikeActionController.unlikeToken = paramString.optString("unlike_token", null);
      Object localObject = paramString.optString("pending_call_id", null);
      if (!Utility.isNullOrEmpty((String)localObject))
        localLikeActionController.pendingCallId = UUID.fromString((String)localObject);
      localObject = paramString.optJSONObject("pending_call_analytics_bundle");
      paramString = localLikeActionController;
      if (localObject != null)
      {
        localLikeActionController.pendingCallAnalyticsBundle = BundleJSONConverter.convertToBundle((JSONObject)localObject);
        paramString = localLikeActionController;
      }
      return paramString;
    }
    catch (JSONException paramString)
    {
      while (true)
      {
        Log.e(TAG, "Unable to deserialize controller from JSON", paramString);
        paramString = null;
      }
    }
  }

  private static void ensureApplicationContextExists(Context paramContext)
  {
    try
    {
      if (applicationContext == null)
        applicationContext = paramContext.getApplicationContext();
      return;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  private void fetchVerifiedObjectId(LikeActionController.RequestCompletionCallback paramRequestCompletionCallback)
  {
    if (!Utility.isNullOrEmpty(this.verifiedObjectId))
    {
      if (paramRequestCompletionCallback != null)
        paramRequestCompletionCallback.onComplete();
      return;
    }
    LikeActionController.GetOGObjectIdRequestWrapper localGetOGObjectIdRequestWrapper = new LikeActionController.GetOGObjectIdRequestWrapper(this, this.objectId);
    LikeActionController.GetPageIdRequestWrapper localGetPageIdRequestWrapper = new LikeActionController.GetPageIdRequestWrapper(this, this.objectId);
    RequestBatch localRequestBatch = new RequestBatch();
    localGetOGObjectIdRequestWrapper.addToBatch(localRequestBatch);
    localGetPageIdRequestWrapper.addToBatch(localRequestBatch);
    localRequestBatch.addCallback(new LikeActionController.10(this, localGetOGObjectIdRequestWrapper, localGetPageIdRequestWrapper, paramRequestCompletionCallback));
    localRequestBatch.executeAsync();
  }

  private static String getCacheKeyForObjectId(String paramString)
  {
    Object localObject2 = null;
    Session localSession = Session.getActiveSession();
    Object localObject1 = localObject2;
    if (localSession != null)
    {
      localObject1 = localObject2;
      if (localSession.isOpened())
        localObject1 = localSession.getAccessToken();
    }
    localObject2 = localObject1;
    if (localObject1 != null)
      localObject2 = Utility.md5hash((String)localObject1);
    return String.format("%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, Utility.coerceValueIfNullOrEmpty((String)localObject2, ""), Integer.valueOf(objectSuffix) });
  }

  public static void getControllerForObjectId(Context paramContext, String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    ensureApplicationContextExists(paramContext);
    if (!isInitialized)
      performFirstInitialize();
    paramContext = getControllerFromInMemoryCache(paramString);
    if (paramContext != null)
    {
      invokeCallbackWithController(paramCreationCallback, paramContext);
      return;
    }
    diskIOWorkQueue.addActiveWorkItem(new LikeActionController.CreateLikeActionControllerWorkItem(paramString, paramCreationCallback));
  }

  private static LikeActionController getControllerFromInMemoryCache(String paramString)
  {
    paramString = getCacheKeyForObjectId(paramString);
    LikeActionController localLikeActionController = (LikeActionController)cache.get(paramString);
    if (localLikeActionController != null)
      mruCacheWorkQueue.addActiveWorkItem(new LikeActionController.MRUCacheWorkItem(paramString, false));
    return localLikeActionController;
  }

  private FacebookDialog.Callback getFacebookDialogCallback(Bundle paramBundle)
  {
    return new LikeActionController.5(this, paramBundle);
  }

  public static boolean handleOnActivityResult(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    ensureApplicationContextExists(paramContext);
    paramContext = NativeProtocol.getCallIdFromIntent(paramIntent);
    if (paramContext == null);
    do
    {
      return false;
      if (Utility.isNullOrEmpty(objectIdForPendingController))
        objectIdForPendingController = applicationContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
    }
    while (Utility.isNullOrEmpty(objectIdForPendingController));
    getControllerForObjectId(applicationContext, objectIdForPendingController, new LikeActionController.1(paramInt1, paramInt2, paramIntent, paramContext));
    return true;
  }

  private static void invokeCallbackWithController(LikeActionController.CreationCallback paramCreationCallback, LikeActionController paramLikeActionController)
  {
    if (paramCreationCallback == null)
      return;
    handler.post(new LikeActionController.3(paramCreationCallback, paramLikeActionController));
  }

  private void logAppEventForError(String paramString, Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", this.objectId);
    paramBundle.putString("current_action", paramString);
    this.appEventsLogger.logSdkEvent("fb_like_control_error", null, paramBundle);
  }

  private void logAppEventForError(String paramString, FacebookRequestError paramFacebookRequestError)
  {
    Bundle localBundle = new Bundle();
    if (paramFacebookRequestError != null)
    {
      paramFacebookRequestError = paramFacebookRequestError.getRequestResult();
      if (paramFacebookRequestError != null)
        localBundle.putString("error", paramFacebookRequestError.toString());
    }
    logAppEventForError(paramString, localBundle);
  }

  private boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent, UUID paramUUID)
  {
    if ((this.pendingCallId == null) || (!this.pendingCallId.equals(paramUUID)));
    do
    {
      return false;
      paramUUID = PendingCallStore.getInstance().getPendingCallById(this.pendingCallId);
    }
    while (paramUUID == null);
    FacebookDialog.handleActivityResult(applicationContext, paramUUID, paramInt1, paramIntent, getFacebookDialogCallback(this.pendingCallAnalyticsBundle));
    stopTrackingPendingCall();
    return true;
  }

  private static void performFirstInitialize()
  {
    try
    {
      boolean bool = isInitialized;
      if (bool);
      while (true)
      {
        return;
        handler = new Handler(Looper.getMainLooper());
        objectSuffix = applicationContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
        controllerDiskCache = new FileLruCache(applicationContext, TAG, new FileLruCache.Limits());
        registerSessionBroadcastReceivers();
        isInitialized = true;
      }
    }
    finally
    {
    }
  }

  private void presentLikeDialog(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    LikeActionController.LikeDialogBuilder localLikeDialogBuilder = new LikeActionController.LikeDialogBuilder(paramActivity, this.objectId);
    localLikeDialogBuilder.setFragment(paramFragment);
    if (localLikeDialogBuilder.canPresent())
    {
      trackPendingCall(localLikeDialogBuilder.build().present(), paramBundle);
      this.appEventsLogger.logSdkEvent("fb_like_control_did_present_dialog", null, paramBundle);
    }
    do
    {
      return;
      paramFragment = localLikeDialogBuilder.getWebFallbackUrl();
    }
    while ((Utility.isNullOrEmpty(paramFragment)) || (!FacebookWebFallbackDialog.presentWebFallback(paramActivity, paramFragment, localLikeDialogBuilder.getApplicationId(), localLikeDialogBuilder.getAppCall(), getFacebookDialogCallback(paramBundle))));
    this.appEventsLogger.logSdkEvent("fb_like_control_did_present_fallback_dialog", null, paramBundle);
  }

  private void publishAgainIfNeeded(Bundle paramBundle)
  {
    if ((this.isObjectLiked != this.isObjectLikedOnServer) && (!publishLikeOrUnlikeAsync(this.isObjectLiked, paramBundle)))
      if (this.isObjectLiked)
        break label38;
    label38: for (boolean bool = true; ; bool = false)
    {
      publishDidError(bool);
      return;
    }
  }

  private void publishDidError(boolean paramBoolean)
  {
    updateLikeState(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    broadcastAction(this, "com.facebook.sdk.LikeActionController.DID_ERROR", localBundle);
  }

  private void publishLikeAsync(Bundle paramBundle)
  {
    this.isPendingLikeOrUnlike = true;
    fetchVerifiedObjectId(new LikeActionController.6(this, paramBundle));
  }

  private boolean publishLikeOrUnlikeAsync(boolean paramBoolean, Bundle paramBundle)
  {
    if (canUseOGPublish())
    {
      if (paramBoolean)
      {
        publishLikeAsync(paramBundle);
        return true;
      }
      if (!Utility.isNullOrEmpty(this.unlikeToken))
      {
        publishUnlikeAsync(paramBundle);
        return true;
      }
    }
    return false;
  }

  private void publishUnlikeAsync(Bundle paramBundle)
  {
    this.isPendingLikeOrUnlike = true;
    RequestBatch localRequestBatch = new RequestBatch();
    LikeActionController.PublishUnlikeRequestWrapper localPublishUnlikeRequestWrapper = new LikeActionController.PublishUnlikeRequestWrapper(this, this.unlikeToken);
    localPublishUnlikeRequestWrapper.addToBatch(localRequestBatch);
    localRequestBatch.addCallback(new LikeActionController.7(this, localPublishUnlikeRequestWrapper, paramBundle));
    localRequestBatch.executeAsync();
  }

  private static void putControllerInMemoryCache(String paramString, LikeActionController paramLikeActionController)
  {
    paramString = getCacheKeyForObjectId(paramString);
    mruCacheWorkQueue.addActiveWorkItem(new LikeActionController.MRUCacheWorkItem(paramString, true));
    cache.put(paramString, paramLikeActionController);
  }

  private void refreshStatusAsync()
  {
    if ((this.session == null) || (this.session.isClosed()) || (SessionState.CREATED.equals(this.session.getState())))
      refreshStatusViaService();
    while (!this.session.isOpened())
      return;
    fetchVerifiedObjectId(new LikeActionController.8(this));
  }

  private void refreshStatusViaService()
  {
    LikeStatusClient localLikeStatusClient = new LikeStatusClient(applicationContext, Settings.getApplicationId(), this.objectId);
    if (!localLikeStatusClient.start())
      return;
    localLikeStatusClient.setCompletedListener(new LikeActionController.9(this));
  }

  private static void registerSessionBroadcastReceivers()
  {
    j localj = j.a(applicationContext);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
    localj.a(new LikeActionController.4(), localIntentFilter);
  }

  private static void serializeToDiskAsync(LikeActionController paramLikeActionController)
  {
    String str = serializeToJson(paramLikeActionController);
    paramLikeActionController = getCacheKeyForObjectId(paramLikeActionController.objectId);
    if ((!Utility.isNullOrEmpty(str)) && (!Utility.isNullOrEmpty(paramLikeActionController)))
      diskIOWorkQueue.addActiveWorkItem(new LikeActionController.SerializeToDiskWorkItem(paramLikeActionController, str));
  }

  private static void serializeToDiskSynchronously(String paramString1, String paramString2)
  {
    Object localObject = null;
    String str = null;
    try
    {
      paramString1 = controllerDiskCache.openPutStream(paramString1);
      str = paramString1;
      localObject = paramString1;
      paramString1.write(paramString2.getBytes());
      if (paramString1 != null)
        Utility.closeQuietly(paramString1);
      return;
    }
    catch (IOException paramString1)
    {
      do
      {
        localObject = str;
        Log.e(TAG, "Unable to serialize controller to disk", paramString1);
      }
      while (str == null);
      Utility.closeQuietly(str);
      return;
    }
    finally
    {
      if (localObject != null)
        Utility.closeQuietly((Closeable)localObject);
    }
    throw paramString1;
  }

  private static String serializeToJson(LikeActionController paramLikeActionController)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("com.facebook.internal.LikeActionController.version", 2);
      localJSONObject.put("object_id", paramLikeActionController.objectId);
      localJSONObject.put("like_count_string_with_like", paramLikeActionController.likeCountStringWithLike);
      localJSONObject.put("like_count_string_without_like", paramLikeActionController.likeCountStringWithoutLike);
      localJSONObject.put("social_sentence_with_like", paramLikeActionController.socialSentenceWithLike);
      localJSONObject.put("social_sentence_without_like", paramLikeActionController.socialSentenceWithoutLike);
      localJSONObject.put("is_object_liked", paramLikeActionController.isObjectLiked);
      localJSONObject.put("unlike_token", paramLikeActionController.unlikeToken);
      if (paramLikeActionController.pendingCallId != null)
        localJSONObject.put("pending_call_id", paramLikeActionController.pendingCallId.toString());
      if (paramLikeActionController.pendingCallAnalyticsBundle != null)
      {
        paramLikeActionController = BundleJSONConverter.convertToJSON(paramLikeActionController.pendingCallAnalyticsBundle);
        if (paramLikeActionController != null)
          localJSONObject.put("pending_call_analytics_bundle", paramLikeActionController);
      }
      return localJSONObject.toString();
    }
    catch (JSONException paramLikeActionController)
    {
      Log.e(TAG, "Unable to serialize controller to JSON", paramLikeActionController);
    }
    return null;
  }

  private void stopTrackingPendingCall()
  {
    PendingCallStore.getInstance().stopTrackingPendingCall(this.pendingCallId);
    this.pendingCallId = null;
    this.pendingCallAnalyticsBundle = null;
    storeObjectIdForPendingController(null);
  }

  private void storeObjectIdForPendingController(String paramString)
  {
    objectIdForPendingController = paramString;
    applicationContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", objectIdForPendingController).apply();
  }

  private void trackPendingCall(FacebookDialog.PendingCall paramPendingCall, Bundle paramBundle)
  {
    PendingCallStore.getInstance().trackPendingCall(paramPendingCall);
    this.pendingCallId = paramPendingCall.getCallId();
    storeObjectIdForPendingController(this.objectId);
    this.pendingCallAnalyticsBundle = paramBundle;
    serializeToDiskAsync(this);
  }

  private void updateLikeState(boolean paramBoolean)
  {
    updateState(paramBoolean, this.likeCountStringWithLike, this.likeCountStringWithoutLike, this.socialSentenceWithLike, this.socialSentenceWithoutLike, this.unlikeToken);
  }

  private void updateState(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = Utility.coerceValueIfNullOrEmpty(paramString1, null);
    paramString2 = Utility.coerceValueIfNullOrEmpty(paramString2, null);
    paramString3 = Utility.coerceValueIfNullOrEmpty(paramString3, null);
    paramString4 = Utility.coerceValueIfNullOrEmpty(paramString4, null);
    paramString5 = Utility.coerceValueIfNullOrEmpty(paramString5, null);
    if ((paramBoolean != this.isObjectLiked) || (!Utility.areObjectsEqual(paramString1, this.likeCountStringWithLike)) || (!Utility.areObjectsEqual(paramString2, this.likeCountStringWithoutLike)) || (!Utility.areObjectsEqual(paramString3, this.socialSentenceWithLike)) || (!Utility.areObjectsEqual(paramString4, this.socialSentenceWithoutLike)) || (!Utility.areObjectsEqual(paramString5, this.unlikeToken)));
    for (int i = 1; i == 0; i = 0)
      return;
    this.isObjectLiked = paramBoolean;
    this.likeCountStringWithLike = paramString1;
    this.likeCountStringWithoutLike = paramString2;
    this.socialSentenceWithLike = paramString3;
    this.socialSentenceWithoutLike = paramString4;
    this.unlikeToken = paramString5;
    serializeToDiskAsync(this);
    broadcastAction(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }

  public String getLikeCountString()
  {
    if (this.isObjectLiked)
      return this.likeCountStringWithLike;
    return this.likeCountStringWithoutLike;
  }

  public String getObjectId()
  {
    return this.objectId;
  }

  public String getSocialSentence()
  {
    if (this.isObjectLiked)
      return this.socialSentenceWithLike;
    return this.socialSentenceWithoutLike;
  }

  public boolean isObjectLiked()
  {
    return this.isObjectLiked;
  }

  public void toggleLike(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    boolean bool2 = true;
    this.appEventsLogger.logSdkEvent("fb_like_control_did_tap", null, paramBundle);
    if (!this.isObjectLiked)
    {
      bool1 = true;
      if (!canUseOGPublish())
        break label89;
      updateLikeState(bool1);
      if (!this.isPendingLikeOrUnlike)
        break label64;
      this.appEventsLogger.logSdkEvent("fb_like_control_did_undo_quickly", null, paramBundle);
    }
    label64: 
    while (publishLikeOrUnlikeAsync(bool1, paramBundle))
    {
      return;
      bool1 = false;
      break;
    }
    if (!bool1);
    for (boolean bool1 = bool2; ; bool1 = false)
    {
      updateLikeState(bool1);
      label89: presentLikeDialog(paramActivity, paramFragment, paramBundle);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController
 * JD-Core Version:    0.6.2
 */