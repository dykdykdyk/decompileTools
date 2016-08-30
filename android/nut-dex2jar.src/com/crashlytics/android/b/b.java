package com.crashlytics.android.b;

import android.annotation.TargetApi;
import io.fabric.sdk.android.d;
import java.util.concurrent.ExecutorService;

@TargetApi(14)
final class b extends a
{
  final ExecutorService c;
  private final d d = new c(this);

  public b(io.fabric.sdk.android.a parama, ExecutorService paramExecutorService)
  {
    this.c = paramExecutorService;
    parama.a(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.b
 * JD-Core Version:    0.6.2
 */