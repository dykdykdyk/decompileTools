package com.facebook;

import android.app.Activity;
import android.content.Intent;

class Session$AuthorizationRequest$1
  implements Session.StartActivityDelegate
{
  Session$AuthorizationRequest$1(Session.AuthorizationRequest paramAuthorizationRequest, Activity paramActivity)
  {
  }

  public Activity getActivityContext()
  {
    return this.val$activity;
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    this.val$activity.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.1
 * JD-Core Version:    0.6.2
 */