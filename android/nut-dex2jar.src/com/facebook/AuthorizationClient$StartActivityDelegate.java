package com.facebook;

import android.app.Activity;
import android.content.Intent;

abstract interface AuthorizationClient$StartActivityDelegate
{
  public abstract Activity getActivityContext();

  public abstract void startActivityForResult(Intent paramIntent, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.StartActivityDelegate
 * JD-Core Version:    0.6.2
 */