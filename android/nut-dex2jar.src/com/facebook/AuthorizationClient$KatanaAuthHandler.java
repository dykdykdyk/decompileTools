package com.facebook;

import android.content.ActivityNotFoundException;
import android.content.Intent;

abstract class AuthorizationClient$KatanaAuthHandler extends AuthorizationClient.AuthHandler
{
  private static final long serialVersionUID = 1L;

  AuthorizationClient$KatanaAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }

  protected boolean tryIntent(Intent paramIntent, int paramInt)
  {
    if (paramIntent == null)
      return false;
    try
    {
      this.this$0.getStartActivityDelegate().startActivityForResult(paramIntent, paramInt);
      return true;
    }
    catch (ActivityNotFoundException paramIntent)
    {
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AuthorizationClient.KatanaAuthHandler
 * JD-Core Version:    0.6.2
 */