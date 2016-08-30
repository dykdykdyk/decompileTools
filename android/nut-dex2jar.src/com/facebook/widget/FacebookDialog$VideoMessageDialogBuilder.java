package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

public class FacebookDialog$VideoMessageDialogBuilder extends FacebookDialog.VideoDialogBuilderBase<VideoMessageDialogBuilder>
{
  public FacebookDialog$VideoMessageDialogBuilder(Activity paramActivity)
  {
    super(paramActivity);
  }

  protected EnumSet<FacebookDialog.MessageDialogFeature> getDialogFeatures()
  {
    return EnumSet.of(FacebookDialog.MessageDialogFeature.MESSAGE_DIALOG, FacebookDialog.MessageDialogFeature.VIDEO);
  }

  public VideoMessageDialogBuilder setPlace(String paramString)
  {
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.VideoMessageDialogBuilder
 * JD-Core Version:    0.6.2
 */