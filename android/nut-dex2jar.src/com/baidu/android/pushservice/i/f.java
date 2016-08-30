package com.baidu.android.pushservice.i;

import android.text.TextUtils;

public class f
{
  private int a;
  private String b;
  private long c;
  private String d;
  private int e;
  private String f;
  private int g;
  private String h;
  private String i;
  private int j;
  private int k;
  private String l;
  private String m;
  private String n;

  public String a()
  {
    return this.b;
  }

  public void a(int paramInt)
  {
    this.a = paramInt;
  }

  public void a(long paramLong)
  {
    this.c = paramLong;
  }

  public void a(String paramString)
  {
    this.b = paramString;
  }

  public String b()
  {
    return this.l;
  }

  public void b(int paramInt)
  {
    this.e = paramInt;
  }

  public void b(String paramString)
  {
    this.d = paramString;
  }

  public q c()
  {
    return new q(this.b, this.c, this.d, this.k, this.l);
  }

  public void c(int paramInt)
  {
    this.g = paramInt;
  }

  public void c(String paramString)
  {
    this.f = paramString;
  }

  public j d()
  {
    j localj = new j(c());
    localj.a = this.j;
    localj.l = this.h;
    return localj;
  }

  public void d(int paramInt)
  {
    this.j = paramInt;
  }

  public void d(String paramString)
  {
    this.h = paramString;
  }

  public n e()
  {
    n localn = new n(c());
    localn.c = this.e;
    localn.a = this.f;
    localn.b = this.g;
    String str = this.n;
    if (!TextUtils.isEmpty(str))
      localn.d = str;
    return localn;
  }

  public void e(int paramInt)
  {
    this.k = paramInt;
  }

  public void e(String paramString)
  {
    this.i = paramString;
  }

  public c f()
  {
    c localc = new c(c());
    localc.a = this.h;
    localc.b = this.i;
    localc.c = this.m;
    return localc;
  }

  public void f(String paramString)
  {
    this.l = paramString;
  }

  public g g()
  {
    g localg = new g(c());
    localg.a = this.h;
    return localg;
  }

  public void g(String paramString)
  {
    this.m = paramString;
  }

  public void h(String paramString)
  {
    this.n = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.f
 * JD-Core Version:    0.6.2
 */