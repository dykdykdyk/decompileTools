package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppLinkData
{
  private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
  private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
  private static final String APPLINK_VERSION_KEY = "version";
  public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
  public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
  public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
  public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
  private static final String BRIDGE_ARGS_METHOD_KEY = "method";
  private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
  static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
  private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
  private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
  private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
  private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
  private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
  private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
  private static final String METHOD_ARGS_REF_KEY = "ref";
  private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
  private static final String REFERER_DATA_REF_KEY = "fb_ref";
  private static final String TAG = AppLinkData.class.getCanonicalName();
  private Bundle argumentBundle;
  private JSONObject arguments;
  private String ref;
  private Uri targetUri;

  public static AppLinkData createFromActivity(Activity paramActivity)
  {
    Validate.notNull(paramActivity, "activity");
    Intent localIntent = paramActivity.getIntent();
    Object localObject;
    if (localIntent == null)
      localObject = null;
    do
    {
      return localObject;
      localObject = createFromAlApplinkData(localIntent);
      paramActivity = (Activity)localObject;
      if (localObject == null)
        paramActivity = createFromJson(localIntent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
      localObject = paramActivity;
    }
    while (paramActivity != null);
    return createFromUri(localIntent.getData());
  }

  private static AppLinkData createFromAlApplinkData(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getBundleExtra("al_applink_data");
    if (localBundle == null)
      return null;
    AppLinkData localAppLinkData = new AppLinkData();
    localAppLinkData.targetUri = paramIntent.getData();
    if (localAppLinkData.targetUri == null)
    {
      paramIntent = localBundle.getString("target_url");
      if (paramIntent != null)
        localAppLinkData.targetUri = Uri.parse(paramIntent);
    }
    localAppLinkData.argumentBundle = localBundle;
    localAppLinkData.arguments = null;
    paramIntent = localBundle.getBundle("referer_data");
    if (paramIntent != null)
      localAppLinkData.ref = paramIntent.getString("fb_ref");
    return localAppLinkData;
  }

  private static AppLinkData createFromJson(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return null;
      try
      {
        paramString = new JSONObject(paramString);
        Object localObject = paramString.getString("version");
        if ((paramString.getJSONObject("bridge_args").getString("method").equals("applink")) && (((String)localObject).equals("2")))
        {
          localObject = new AppLinkData();
          ((AppLinkData)localObject).arguments = paramString.getJSONObject("method_args");
          if (((AppLinkData)localObject).arguments.has("ref"))
            ((AppLinkData)localObject).ref = ((AppLinkData)localObject).arguments.getString("ref");
          while (true)
          {
            if (((AppLinkData)localObject).arguments.has("target_url"))
              ((AppLinkData)localObject).targetUri = Uri.parse(((AppLinkData)localObject).arguments.getString("target_url"));
            ((AppLinkData)localObject).argumentBundle = toBundle(((AppLinkData)localObject).arguments);
            return localObject;
            if (((AppLinkData)localObject).arguments.has("referer_data"))
            {
              paramString = ((AppLinkData)localObject).arguments.getJSONObject("referer_data");
              if (paramString.has("fb_ref"))
                ((AppLinkData)localObject).ref = paramString.getString("fb_ref");
            }
          }
        }
      }
      catch (JSONException paramString)
      {
        Log.d(TAG, "Unable to parse AppLink JSON", paramString);
        return null;
      }
      catch (FacebookException paramString)
      {
        Log.d(TAG, "Unable to parse AppLink JSON", paramString);
      }
    }
    return null;
  }

  private static AppLinkData createFromUri(Uri paramUri)
  {
    if (paramUri == null)
      return null;
    AppLinkData localAppLinkData = new AppLinkData();
    localAppLinkData.targetUri = paramUri;
    return localAppLinkData;
  }

  public static void fetchDeferredAppLinkData(Context paramContext, AppLinkData.CompletionHandler paramCompletionHandler)
  {
    fetchDeferredAppLinkData(paramContext, null, paramCompletionHandler);
  }

  public static void fetchDeferredAppLinkData(Context paramContext, String paramString, AppLinkData.CompletionHandler paramCompletionHandler)
  {
    Validate.notNull(paramContext, "context");
    Validate.notNull(paramCompletionHandler, "completionHandler");
    String str = paramString;
    if (paramString == null)
      str = Utility.getMetadataApplicationId(paramContext);
    Validate.notNull(str, "applicationId");
    paramContext = paramContext.getApplicationContext();
    Settings.getExecutor().execute(new AppLinkData.1(paramContext, str, paramCompletionHandler));
  }

  // ERROR //
  private static void fetchDeferredAppLinkFromServer(Context paramContext, String paramString, AppLinkData.CompletionHandler paramCompletionHandler)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: invokestatic 239	com/facebook/model/GraphObject$Factory:create	()Lcom/facebook/model/GraphObject;
    //   9: astore 5
    //   11: aload 5
    //   13: ldc 241
    //   15: ldc 47
    //   17: invokeinterface 247 3 0
    //   22: aload 5
    //   24: aload_0
    //   25: invokestatic 253	com/facebook/internal/AttributionIdentifiers:getAttributionIdentifiers	(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    //   28: aload_0
    //   29: invokestatic 258	com/facebook/AppEventsLogger:getAnonymousAppDeviceGUID	(Landroid/content/Context;)Ljava/lang/String;
    //   32: aload_0
    //   33: invokestatic 262	com/facebook/Settings:getLimitEventAndDataUsage	(Landroid/content/Context;)Z
    //   36: invokestatic 266	com/facebook/internal/Utility:setAppEventAttributionParameters	(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    //   39: aload 5
    //   41: ldc_w 268
    //   44: aload_0
    //   45: invokevirtual 271	android/content/Context:getPackageName	()Ljava/lang/String;
    //   48: invokeinterface 247 3 0
    //   53: ldc 50
    //   55: iconst_1
    //   56: anewarray 4	java/lang/Object
    //   59: dup
    //   60: iconst_0
    //   61: aload_1
    //   62: aastore
    //   63: invokestatic 275	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   66: astore_1
    //   67: aload 7
    //   69: astore_0
    //   70: aconst_null
    //   71: aload_1
    //   72: aload 5
    //   74: aconst_null
    //   75: invokestatic 281	com/facebook/Request:newPostRequest	(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    //   78: invokevirtual 285	com/facebook/Request:executeAndWait	()Lcom/facebook/Response;
    //   81: invokevirtual 290	com/facebook/Response:getGraphObject	()Lcom/facebook/model/GraphObject;
    //   84: astore_1
    //   85: aload_1
    //   86: ifnull +291 -> 377
    //   89: aload 7
    //   91: astore_0
    //   92: aload_1
    //   93: invokeinterface 294 1 0
    //   98: astore 5
    //   100: aload 6
    //   102: astore_1
    //   103: aload 5
    //   105: ifnull +264 -> 369
    //   108: aload 7
    //   110: astore_0
    //   111: aload 5
    //   113: ldc 38
    //   115: invokevirtual 297	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   118: astore 10
    //   120: aload 7
    //   122: astore_0
    //   123: aload 5
    //   125: ldc 44
    //   127: ldc2_w 298
    //   130: invokevirtual 303	org/json/JSONObject:optLong	(Ljava/lang/String;J)J
    //   133: lstore_3
    //   134: aload 7
    //   136: astore_0
    //   137: aload 5
    //   139: ldc 41
    //   141: invokevirtual 297	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   144: astore 8
    //   146: aload 7
    //   148: astore_0
    //   149: aload 5
    //   151: ldc 53
    //   153: invokevirtual 297	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   156: astore 9
    //   158: aload 6
    //   160: astore_1
    //   161: aload 7
    //   163: astore_0
    //   164: aload 10
    //   166: invokestatic 309	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifne +200 -> 369
    //   172: aload 7
    //   174: astore_0
    //   175: aload 10
    //   177: invokestatic 118	com/facebook/AppLinkData:createFromJson	(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    //   180: astore 5
    //   182: lload_3
    //   183: ldc2_w 298
    //   186: lcmp
    //   187: ifeq +57 -> 244
    //   190: aload 5
    //   192: astore_0
    //   193: aload 5
    //   195: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   198: ifnull +18 -> 216
    //   201: aload 5
    //   203: astore_0
    //   204: aload 5
    //   206: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   209: ldc 26
    //   211: lload_3
    //   212: invokevirtual 313	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   215: pop
    //   216: aload 5
    //   218: astore_0
    //   219: aload 5
    //   221: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   224: ifnull +20 -> 244
    //   227: aload 5
    //   229: astore_0
    //   230: aload 5
    //   232: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   235: ldc 26
    //   237: lload_3
    //   238: invokestatic 319	java/lang/Long:toString	(J)Ljava/lang/String;
    //   241: invokevirtual 323	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   244: aload 8
    //   246: ifnull +56 -> 302
    //   249: aload 5
    //   251: astore_0
    //   252: aload 5
    //   254: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   257: ifnull +19 -> 276
    //   260: aload 5
    //   262: astore_0
    //   263: aload 5
    //   265: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   268: ldc 17
    //   270: aload 8
    //   272: invokevirtual 326	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   275: pop
    //   276: aload 5
    //   278: astore_0
    //   279: aload 5
    //   281: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   284: ifnull +18 -> 302
    //   287: aload 5
    //   289: astore_0
    //   290: aload 5
    //   292: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   295: ldc 17
    //   297: aload 8
    //   299: invokevirtual 323	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   302: aload 5
    //   304: astore_1
    //   305: aload 9
    //   307: ifnull +62 -> 369
    //   310: aload 5
    //   312: astore_0
    //   313: aload 5
    //   315: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   318: ifnull +19 -> 337
    //   321: aload 5
    //   323: astore_0
    //   324: aload 5
    //   326: getfield 148	com/facebook/AppLinkData:arguments	Lorg/json/JSONObject;
    //   329: ldc 20
    //   331: aload 9
    //   333: invokevirtual 326	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   336: pop
    //   337: aload 5
    //   339: astore_1
    //   340: aload 5
    //   342: astore_0
    //   343: aload 5
    //   345: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   348: ifnull +21 -> 369
    //   351: aload 5
    //   353: astore_0
    //   354: aload 5
    //   356: getfield 146	com/facebook/AppLinkData:argumentBundle	Landroid/os/Bundle;
    //   359: ldc 20
    //   361: aload 9
    //   363: invokevirtual 323	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   366: aload 5
    //   368: astore_1
    //   369: aload_2
    //   370: aload_1
    //   371: invokeinterface 332 2 0
    //   376: return
    //   377: aconst_null
    //   378: astore 5
    //   380: goto -280 -> 100
    //   383: astore_0
    //   384: aload 5
    //   386: astore_0
    //   387: getstatic 79	com/facebook/AppLinkData:TAG	Ljava/lang/String;
    //   390: ldc_w 334
    //   393: invokestatic 337	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   396: pop
    //   397: goto -153 -> 244
    //   400: astore_1
    //   401: getstatic 79	com/facebook/AppLinkData:TAG	Ljava/lang/String;
    //   404: ldc_w 339
    //   407: invokestatic 342	com/facebook/internal/Utility:logd	(Ljava/lang/String;Ljava/lang/String;)V
    //   410: aload_0
    //   411: astore_1
    //   412: goto -43 -> 369
    //   415: astore_0
    //   416: aload 5
    //   418: astore_0
    //   419: getstatic 79	com/facebook/AppLinkData:TAG	Ljava/lang/String;
    //   422: ldc_w 334
    //   425: invokestatic 337	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   428: pop
    //   429: goto -127 -> 302
    //   432: astore_0
    //   433: aload 5
    //   435: astore_0
    //   436: getstatic 79	com/facebook/AppLinkData:TAG	Ljava/lang/String;
    //   439: ldc_w 334
    //   442: invokestatic 337	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   445: pop
    //   446: aload 5
    //   448: astore_1
    //   449: goto -80 -> 369
    //
    // Exception table:
    //   from	to	target	type
    //   193	201	383	org/json/JSONException
    //   204	216	383	org/json/JSONException
    //   219	227	383	org/json/JSONException
    //   230	244	383	org/json/JSONException
    //   70	85	400	java/lang/Exception
    //   92	100	400	java/lang/Exception
    //   111	120	400	java/lang/Exception
    //   123	134	400	java/lang/Exception
    //   137	146	400	java/lang/Exception
    //   149	158	400	java/lang/Exception
    //   164	172	400	java/lang/Exception
    //   175	182	400	java/lang/Exception
    //   193	201	400	java/lang/Exception
    //   204	216	400	java/lang/Exception
    //   219	227	400	java/lang/Exception
    //   230	244	400	java/lang/Exception
    //   252	260	400	java/lang/Exception
    //   263	276	400	java/lang/Exception
    //   279	287	400	java/lang/Exception
    //   290	302	400	java/lang/Exception
    //   313	321	400	java/lang/Exception
    //   324	337	400	java/lang/Exception
    //   343	351	400	java/lang/Exception
    //   354	366	400	java/lang/Exception
    //   387	397	400	java/lang/Exception
    //   419	429	400	java/lang/Exception
    //   436	446	400	java/lang/Exception
    //   252	260	415	org/json/JSONException
    //   263	276	415	org/json/JSONException
    //   279	287	415	org/json/JSONException
    //   290	302	415	org/json/JSONException
    //   313	321	432	org/json/JSONException
    //   324	337	432	org/json/JSONException
    //   343	351	432	org/json/JSONException
    //   354	366	432	org/json/JSONException
  }

  private static Bundle toBundle(JSONObject paramJSONObject)
    throws JSONException
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject1 = paramJSONObject.get(str);
      if ((localObject1 instanceof JSONObject))
      {
        localBundle.putBundle(str, toBundle((JSONObject)localObject1));
      }
      else if ((localObject1 instanceof JSONArray))
      {
        localObject1 = (JSONArray)localObject1;
        if (((JSONArray)localObject1).length() == 0)
        {
          localBundle.putStringArray(str, new String[0]);
        }
        else
        {
          Object localObject2 = ((JSONArray)localObject1).get(0);
          int i;
          if ((localObject2 instanceof JSONObject))
          {
            localObject2 = new Bundle[((JSONArray)localObject1).length()];
            i = 0;
            while (i < ((JSONArray)localObject1).length())
            {
              localObject2[i] = toBundle(((JSONArray)localObject1).getJSONObject(i));
              i += 1;
            }
            localBundle.putParcelableArray(str, (Parcelable[])localObject2);
          }
          else
          {
            if ((localObject2 instanceof JSONArray))
              throw new FacebookException("Nested arrays are not supported.");
            localObject2 = new String[((JSONArray)localObject1).length()];
            i = 0;
            while (i < ((JSONArray)localObject1).length())
            {
              localObject2[i] = ((JSONArray)localObject1).get(i).toString();
              i += 1;
            }
            localBundle.putStringArray(str, (String[])localObject2);
          }
        }
      }
      else
      {
        localBundle.putString(str, localObject1.toString());
      }
    }
    return localBundle;
  }

  public Bundle getArgumentBundle()
  {
    return this.argumentBundle;
  }

  @Deprecated
  public JSONObject getArguments()
  {
    return this.arguments;
  }

  public String getRef()
  {
    return this.ref;
  }

  public Bundle getRefererData()
  {
    if (this.argumentBundle != null)
      return this.argumentBundle.getBundle("referer_data");
    return null;
  }

  public Uri getTargetUri()
  {
    return this.targetUri;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppLinkData
 * JD-Core Version:    0.6.2
 */