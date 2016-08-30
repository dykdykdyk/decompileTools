package com.baidu.android.pushservice;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class h$1 extends Thread
{
  h$1(Context paramContext, SharedPreferences paramSharedPreferences)
  {
  }

  public final void run()
  {
    boolean bool1 = h.a(this.a.getApplicationContext(), h.f(), ".baidu.push.sa");
    boolean bool2 = h.a(this.a.getApplicationContext(), h.g(), ".baidu.push.http");
    if ((bool1) && (bool2))
    {
      SharedPreferences.Editor localEditor = this.b.edit();
      localEditor.putLong(".baidu.push.dns.refresh", System.currentTimeMillis());
      localEditor.commit();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.h.1
 * JD-Core Version:    0.6.2
 */