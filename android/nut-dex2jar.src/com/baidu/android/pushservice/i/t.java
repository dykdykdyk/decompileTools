package com.baidu.android.pushservice.i;

import android.content.Context;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.util.d;
import com.baidu.android.pushservice.util.k;

public class t
{
  private final Context a;
  private i b;
  private final r c;

  public t(Context paramContext)
  {
    this.a = paramContext;
    this.c = new r(paramContext);
    this.b = i.a(paramContext);
  }

  public static long a(Context paramContext, b paramb)
  {
    return k.a(paramContext, paramb);
  }

  public static long a(Context paramContext, c paramc)
  {
    return k.a(paramContext, paramc);
  }

  public static long a(Context paramContext, g paramg)
  {
    return k.a(paramContext, paramg);
  }

  public static long a(Context paramContext, j paramj)
  {
    return k.a(paramContext, paramj);
  }

  public static long a(Context paramContext, m paramm)
  {
    return k.a(paramContext, paramm);
  }

  public static long a(Context paramContext, n paramn)
  {
    return k.a(paramContext, paramn);
  }

  public static long a(Context paramContext, String paramString1, int paramInt, String paramString2)
  {
    j localj = new j();
    localj.g = System.currentTimeMillis();
    localj.h = com.baidu.android.pushservice.i.a.b.d(paramContext);
    localj.i = paramInt;
    localj.l = paramString2;
    localj.f = paramString1;
    return a(paramContext, localj);
  }

  public static void a(Context paramContext, String paramString)
  {
    new t.1(paramContext, paramString).start();
  }

  public static long b(Context paramContext, j paramj)
  {
    return k.b(paramContext, paramj);
  }

  private boolean b()
  {
    if ((PushSettings.i(this.a)) || (this.b.c()));
    while (true)
    {
      return false;
      long l2 = System.currentTimeMillis();
      long l3 = d.c(this.a);
      if (PushSettings.h(this.a));
      for (long l1 = PushSettings.g(this.a); l2 - l3 > l1; l1 = 43200000L)
        return true;
    }
  }

  public void a()
  {
    if (this.c != null)
      this.c.b();
  }

  public void a(boolean paramBoolean, com.baidu.android.pushservice.util.c paramc)
  {
    if (this.b == null)
      this.b = i.a(this.a);
    this.b.a(paramc);
    if ((paramBoolean) || (b()))
      this.b.b(paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.t
 * JD-Core Version:    0.6.2
 */