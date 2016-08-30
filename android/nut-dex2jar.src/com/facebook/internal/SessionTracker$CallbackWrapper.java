package com.facebook.internal;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class SessionTracker$CallbackWrapper
  implements Session.StatusCallback
{
  private final Session.StatusCallback wrapped;

  public SessionTracker$CallbackWrapper(SessionTracker paramSessionTracker, Session.StatusCallback paramStatusCallback)
  {
    this.wrapped = paramStatusCallback;
  }

  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if ((this.wrapped != null) && (this.this$0.isTracking()))
      this.wrapped.call(paramSession, paramSessionState, paramException);
    if ((paramSession == SessionTracker.access$200(this.this$0)) && (paramSessionState.isClosed()))
      this.this$0.setSession(null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.SessionTracker.CallbackWrapper
 * JD-Core Version:    0.6.2
 */