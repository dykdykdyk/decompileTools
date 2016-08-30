package com.facebook.android;

import android.os.Bundle;

public abstract interface Facebook$DialogListener
{
  public abstract void onCancel();

  public abstract void onComplete(Bundle paramBundle);

  public abstract void onError(DialogError paramDialogError);

  public abstract void onFacebookError(FacebookError paramFacebookError);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.android.Facebook.DialogListener
 * JD-Core Version:    0.6.2
 */