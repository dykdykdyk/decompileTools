package com.tencent.a.a.a.a;

import android.content.Context;

public abstract class f
{
  protected Context a = null;

  protected f(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(c paramc)
  {
    if (paramc == null);
    do
    {
      return;
      paramc = paramc.toString();
    }
    while (!a());
    a(h.d(paramc));
  }

  protected abstract void a(String paramString);

  protected abstract boolean a();

  protected abstract String b();

  public final c c()
  {
    c localc = null;
    if (a());
    for (String str = h.c(b()); ; str = null)
    {
      if (str != null)
        localc = c.a(str);
      return localc;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a.a.f
 * JD-Core Version:    0.6.2
 */