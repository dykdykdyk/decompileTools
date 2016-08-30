package com.google.android.gms.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class c extends Handler
{
  private final Context a;

  c(Context paramContext)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i;
    switch (paramMessage.what)
    {
    default:
      i = paramMessage.what;
      Log.w("GooglePlayServicesUtil", 50 + "Don't know how to handle this message: " + i);
    case 1:
    }
    do
    {
      return;
      i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.a);
    }
    while (!GooglePlayServicesUtil.isUserRecoverableError(i));
    GooglePlayServicesUtil.zzb(i, this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.c
 * JD-Core Version:    0.6.2
 */