package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.e.o;

final class aw
{
  final o a;
  private final Context b;

  public aw(Context paramContext, o paramo)
  {
    this.b = paramContext;
    this.a = paramo;
  }

  final String a(String paramString1, String paramString2)
  {
    paramString1 = l.d(this.b, paramString1);
    if ((paramString1 == null) || (paramString1.length() == 0));
    for (int i = 1; i != 0; i = 0)
      return paramString2;
    return paramString1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.aw
 * JD-Core Version:    0.6.2
 */