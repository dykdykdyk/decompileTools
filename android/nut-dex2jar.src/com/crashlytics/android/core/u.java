package com.crashlytics.android.core;

import java.util.concurrent.CountDownLatch;

final class u
{
  boolean a = false;
  final CountDownLatch b = new CountDownLatch(1);

  final void a(boolean paramBoolean)
  {
    this.a = paramBoolean;
    this.b.countDown();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.u
 * JD-Core Version:    0.6.2
 */