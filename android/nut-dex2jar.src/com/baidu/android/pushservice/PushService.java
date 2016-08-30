package com.baidu.android.pushservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import com.baidu.android.pushservice.b.a.a;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.util.m;

public class PushService extends Service
{
  private boolean a = false;
  private Handler b = new Handler();
  private SDcardRemovedReceiver c;
  private boolean d = false;
  private Runnable e = new PushService.1(this);
  private int f = 0;
  private final a.a g = new PushService.2(this);

  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramBoolean1;
    b.a("PushService", "stopSelf : exitOnDestroy=" + paramBoolean1 + " --- immediate=" + paramBoolean2, getApplicationContext());
    if (paramBoolean2)
    {
      this.e.run();
      return;
    }
    this.b.removeCallbacks(this.e);
    this.b.postDelayed(this.e, 1000L);
  }

  public IBinder onBind(Intent paramIntent)
  {
    this.f += 1;
    a.c("PushService", "onBind(" + this.f + "), intent=" + paramIntent + " cur: " + getApplicationContext().getPackageName() + " initSuc: " + this.d);
    if (this.d)
      return this.g;
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    b.a("PushService", "onCreate from : " + getPackageName(), getApplicationContext());
    m.a("PushService onCreate from : " + getPackageName() + " at Time :" + System.currentTimeMillis(), getApplicationContext());
    try
    {
      this.c = new SDcardRemovedReceiver();
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
      localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
      registerReceiver(this.c, localIntentFilter);
      this.d = g.a(this).a();
      if (!this.d)
        a(true, true);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.c("TAG", "sdcard receiver register failed");
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    b.a("PushService", "onDestroy from : " + getPackageName(), getApplicationContext());
    m.a("PushService onDestroy from : " + getPackageName() + " at Time :" + System.currentTimeMillis(), getApplicationContext());
    try
    {
      unregisterReceiver(this.c);
      g.b();
      if (this.a)
        Process.killProcess(Process.myPid());
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.c("TAG", "sdcard receiver unregister failed");
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Intent localIntent = paramIntent;
    if (paramIntent == null)
    {
      localIntent = new Intent();
      b.c("PushService", "--- onStart by null intent!", getApplicationContext());
    }
    a.c("PushService", "-- onStartCommand -- " + localIntent.toUri(0));
    m.a("PushService onStartCommand from " + getPackageName() + " Intent " + localIntent.toUri(0) + " at Time " + System.currentTimeMillis(), getApplicationContext());
    this.b.removeCallbacks(this.e);
    try
    {
      this.d = g.a(this).a(localIntent);
      if (!this.d)
      {
        a(true, true);
        return 2;
      }
    }
    catch (Exception paramIntent)
    {
      b.b("PushService", "error : " + paramIntent, getApplicationContext());
      a(true, true);
      return 2;
    }
    return 1;
  }

  public boolean onUnbind(Intent paramIntent)
  {
    this.f -= 1;
    a.c("PushService", "onUnbind(" + this.f + "), intent=" + paramIntent);
    return super.onUnbind(paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushService
 * JD-Core Version:    0.6.2
 */