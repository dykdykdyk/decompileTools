package com.nut.blehunter.ui;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

final class bd
  implements Session.StatusCallback
{
  private bd(LoginActivity paramLoginActivity)
  {
  }

  public final void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    LoginActivity.a(this.a, paramSession, paramSessionState, paramException);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bd
 * JD-Core Version:    0.6.2
 */