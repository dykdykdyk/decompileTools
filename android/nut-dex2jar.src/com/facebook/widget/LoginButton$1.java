package com.facebook.widget;

import android.os.AsyncTask;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.FetchedAppSettings;

class LoginButton$1 extends AsyncTask<Void, Void, Utility.FetchedAppSettings>
{
  LoginButton$1(LoginButton paramLoginButton, String paramString)
  {
  }

  protected Utility.FetchedAppSettings doInBackground(Void[] paramArrayOfVoid)
  {
    return Utility.queryAppSettings(this.val$appId, false);
  }

  protected void onPostExecute(Utility.FetchedAppSettings paramFetchedAppSettings)
  {
    LoginButton.access$300(this.this$0, paramFetchedAppSettings);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.LoginButton.1
 * JD-Core Version:    0.6.2
 */