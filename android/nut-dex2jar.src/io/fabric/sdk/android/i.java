package io.fabric.sdk.android;

import android.content.Context;
import android.os.Handler;
import io.fabric.sdk.android.services.concurrency.w;

public final class i
{
  final Context a;
  o[] b;
  w c;
  Handler d;
  r e;
  boolean f;
  String g;
  String h;
  l<f> i;

  public i(Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("Context must not be null.");
    this.a = paramContext.getApplicationContext();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.i
 * JD-Core Version:    0.6.2
 */