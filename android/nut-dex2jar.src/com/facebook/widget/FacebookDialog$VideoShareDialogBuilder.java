package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

public class FacebookDialog$VideoShareDialogBuilder extends FacebookDialog.VideoDialogBuilderBase<VideoShareDialogBuilder>
{
  public FacebookDialog$VideoShareDialogBuilder(Activity paramActivity)
  {
    super(paramActivity);
  }

  protected EnumSet<? extends FacebookDialog.DialogFeature> getDialogFeatures()
  {
    return EnumSet.of(FacebookDialog.ShareDialogFeature.SHARE_DIALOG, FacebookDialog.ShareDialogFeature.VIDEO);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.VideoShareDialogBuilder
 * JD-Core Version:    0.6.2
 */