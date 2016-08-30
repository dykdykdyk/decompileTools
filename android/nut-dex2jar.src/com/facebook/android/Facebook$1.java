package com.facebook.android;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class Facebook$1
  implements Session.StatusCallback
{
  Facebook$1(Facebook paramFacebook, Facebook.DialogListener paramDialogListener)
  {
  }

  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    Facebook.access$000(this.this$0, paramSession, paramSessionState, paramException, this.val$listener);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.android.Facebook.1
 * JD-Core Version:    0.6.2
 */