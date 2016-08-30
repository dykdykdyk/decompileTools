package com.facebook.widget;

import com.facebook.FacebookRequestError;
import com.facebook.Request.GraphUserCallback;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.internal.SessionTracker;
import com.facebook.model.GraphUser;

class LoginButton$2
  implements Request.GraphUserCallback
{
  LoginButton$2(LoginButton paramLoginButton, Session paramSession)
  {
  }

  public void onCompleted(GraphUser paramGraphUser, Response paramResponse)
  {
    if (this.val$currentSession == LoginButton.access$400(this.this$0).getOpenSession())
    {
      LoginButton.access$502(this.this$0, paramGraphUser);
      if (LoginButton.access$600(this.this$0) != null)
        LoginButton.access$600(this.this$0).onUserInfoFetched(LoginButton.access$500(this.this$0));
    }
    if (paramResponse.getError() != null)
      this.this$0.handleError(paramResponse.getError().getException());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.LoginButton.2
 * JD-Core Version:    0.6.2
 */