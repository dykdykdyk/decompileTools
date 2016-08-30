package com.nut.blehunter.qrcode;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.util.Log;

final class k
{
  private static final String a = k.class.getSimpleName();
  private final Activity b;
  private final BroadcastReceiver c;
  private boolean d;
  private AsyncTask<Object, Object, Object> e;

  k(Activity paramActivity)
  {
    this.b = paramActivity;
    this.c = new m(this, (byte)0);
    this.d = false;
    a();
  }

  final void a()
  {
    try
    {
      d();
      this.e = new l(this, (byte)0);
      this.e.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b()
  {
    try
    {
      d();
      if (this.d)
      {
        this.b.unregisterReceiver(this.c);
        this.d = false;
      }
      while (true)
      {
        return;
        Log.w(a, "PowerStatusReceiver was never registered?");
      }
    }
    finally
    {
    }
  }

  public final void c()
  {
    try
    {
      if (this.d)
        Log.w(a, "PowerStatusReceiver was already registered?");
      while (true)
      {
        a();
        return;
        this.b.registerReceiver(this.c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.d = true;
      }
    }
    finally
    {
    }
  }

  final void d()
  {
    try
    {
      AsyncTask localAsyncTask = this.e;
      if (localAsyncTask != null)
      {
        localAsyncTask.cancel(true);
        this.e = null;
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.k
 * JD-Core Version:    0.6.2
 */