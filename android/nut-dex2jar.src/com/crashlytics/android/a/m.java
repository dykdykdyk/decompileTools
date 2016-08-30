package com.crashlytics.android.a;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;

final class m
{
  final ScheduledExecutorService a;
  final List<o> b = new ArrayList();
  volatile boolean c = true;
  final AtomicReference<ScheduledFuture<?>> d = new AtomicReference();
  boolean e = true;

  public m(ScheduledExecutorService paramScheduledExecutorService)
  {
    this.a = paramScheduledExecutorService;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.m
 * JD-Core Version:    0.6.2
 */