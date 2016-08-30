package com.facebook.widget;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookException;
import com.facebook.NativeAppCallContentProvider;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.DialogFeatureConfig;
import com.facebook.internal.Validate;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public abstract class FacebookDialog$Builder<CONCRETE extends Builder<?>>
{
  protected final Activity activity;
  public final FacebookDialog.PendingCall appCall;
  public final String applicationId;
  protected String applicationName;
  protected Fragment fragment;
  protected HashMap<String, Bitmap> imageAttachments = new HashMap();
  protected HashMap<String, File> mediaAttachmentFiles = new HashMap();

  public FacebookDialog$Builder(Activity paramActivity)
  {
    Validate.notNull(paramActivity, "activity");
    this.activity = paramActivity;
    this.applicationId = Utility.getMetadataApplicationId(paramActivity);
    this.appCall = new FacebookDialog.PendingCall(64207);
  }

  protected CONCRETE addImageAttachment(String paramString, Bitmap paramBitmap)
  {
    this.imageAttachments.put(paramString, paramBitmap);
    return this;
  }

  protected CONCRETE addImageAttachment(String paramString, File paramFile)
  {
    this.mediaAttachmentFiles.put(paramString, paramFile);
    return this;
  }

  protected List<String> addImageAttachmentFiles(Collection<File> paramCollection)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      File localFile = (File)paramCollection.next();
      String str = UUID.randomUUID().toString();
      addImageAttachment(str, localFile);
      localArrayList.add(NativeAppCallContentProvider.getAttachmentUrl(this.applicationId, this.appCall.getCallId(), str));
    }
    return localArrayList;
  }

  protected List<String> addImageAttachments(Collection<Bitmap> paramCollection)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Bitmap localBitmap = (Bitmap)paramCollection.next();
      String str = UUID.randomUUID().toString();
      addImageAttachment(str, localBitmap);
      localArrayList.add(NativeAppCallContentProvider.getAttachmentUrl(this.applicationId, this.appCall.getCallId(), str));
    }
    return localArrayList;
  }

  protected CONCRETE addVideoAttachment(String paramString, File paramFile)
  {
    this.mediaAttachmentFiles.put(paramString, paramFile);
    return this;
  }

  protected String addVideoAttachmentFile(File paramFile)
  {
    String str = UUID.randomUUID().toString();
    addVideoAttachment(str, paramFile);
    return NativeAppCallContentProvider.getAttachmentUrl(this.applicationId, this.appCall.getCallId(), str);
  }

  public FacebookDialog build()
  {
    validate();
    String str = FacebookDialog.access$100(getDialogFeatures());
    int i = FacebookDialog.access$300(this.activity, str, FacebookDialog.access$200(this.applicationId, str, getDialogFeatures()));
    if (NativeProtocol.isVersionCompatibleWithBucketedIntent(i));
    Intent localIntent;
    for (Bundle localBundle = getMethodArguments(); ; localBundle = setBundleExtras(new Bundle()))
    {
      localIntent = NativeProtocol.createPlatformActivityIntent(this.activity, this.appCall.getCallId().toString(), str, i, this.applicationName, localBundle);
      if (localIntent != null)
        break;
      FacebookDialog.access$500(this.activity, this.fragment, FacebookDialog.access$400(str, localBundle.containsKey("com.facebook.platform.extra.PHOTOS"), false), "Failed");
      throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
    }
    FacebookDialog.PendingCall.access$600(this.appCall, localIntent);
    return new FacebookDialog(this.activity, this.fragment, this.appCall, getOnPresentCallback(), null);
  }

  public boolean canPresent()
  {
    return FacebookDialog.access$800(this.activity, getDialogFeatures());
  }

  public abstract EnumSet<? extends FacebookDialog.DialogFeature> getDialogFeatures();

  List<String> getImageAttachmentNames()
  {
    return new ArrayList(this.imageAttachments.keySet());
  }

  public abstract Bundle getMethodArguments();

  FacebookDialog.OnPresentCallback getOnPresentCallback()
  {
    return new FacebookDialog.Builder.1(this);
  }

  public String getWebFallbackUrlInternal()
  {
    Object localObject1 = getDialogFeatures().iterator();
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject1 = (FacebookDialog.DialogFeature)((Iterator)localObject1).next();
      localObject2 = ((FacebookDialog.DialogFeature)localObject1).name();
      localObject1 = ((FacebookDialog.DialogFeature)localObject1).getAction();
    }
    while (true)
    {
      localObject1 = Utility.getDialogFeatureConfig(this.applicationId, (String)localObject1, (String)localObject2);
      if (localObject1 != null)
      {
        localObject2 = ((Utility.DialogFeatureConfig)localObject1).getFallbackUrl();
        if (localObject2 != null)
          break label68;
      }
      label68: Bundle localBundle;
      do
      {
        return null;
        localObject1 = getMethodArguments();
        int i = NativeProtocol.getLatestKnownVersion();
        localBundle = ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(this.activity, this.appCall.getCallId().toString(), i, this.applicationName, (Bundle)localObject1);
      }
      while (localBundle == null);
      localObject1 = localObject2;
      if (((Uri)localObject2).isRelative())
        localObject1 = Utility.buildUri(ServerProtocol.getDialogAuthority(), ((Uri)localObject2).toString(), localBundle);
      return ((Uri)localObject1).toString();
      localObject1 = null;
      localObject2 = null;
    }
  }

  protected void putExtra(Bundle paramBundle, String paramString1, String paramString2)
  {
    if (paramString2 != null)
      paramBundle.putString(paramString1, paramString2);
  }

  public CONCRETE setApplicationName(String paramString)
  {
    this.applicationName = paramString;
    return this;
  }

  protected Bundle setBundleExtras(Bundle paramBundle)
  {
    return paramBundle;
  }

  public CONCRETE setFragment(Fragment paramFragment)
  {
    this.fragment = paramFragment;
    return this;
  }

  public CONCRETE setRequestCode(int paramInt)
  {
    FacebookDialog.PendingCall.access$000(this.appCall, paramInt);
    return this;
  }

  void validate()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.Builder
 * JD-Core Version:    0.6.2
 */