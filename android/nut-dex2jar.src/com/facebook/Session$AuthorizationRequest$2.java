package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;

class Session$AuthorizationRequest$2
  implements Session.StartActivityDelegate
{
  Session$AuthorizationRequest$2(Session.AuthorizationRequest paramAuthorizationRequest, Fragment paramFragment)
  {
  }

  public Activity getActivityContext()
  {
    return this.val$fragment.getActivity();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    this.val$fragment.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.2
 * JD-Core Version:    0.6.2
 */