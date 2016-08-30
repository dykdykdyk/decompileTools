package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class a extends Thread
{
  CountDownLatch a;
  boolean b;
  private WeakReference<AdvertisingIdClient> c;
  private long d;

  public a(AdvertisingIdClient paramAdvertisingIdClient, long paramLong)
  {
    this.c = new WeakReference(paramAdvertisingIdClient);
    this.d = paramLong;
    this.a = new CountDownLatch(1);
    this.b = false;
    start();
  }

  private void a()
  {
    AdvertisingIdClient localAdvertisingIdClient = (AdvertisingIdClient)this.c.get();
    if (localAdvertisingIdClient != null)
    {
      localAdvertisingIdClient.finish();
      this.b = true;
    }
  }

  public final void run()
  {
    try
    {
      if (!this.a.await(this.d, TimeUnit.MILLISECONDS))
        a();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.ads.identifier.a
 * JD-Core Version:    0.6.2
 */