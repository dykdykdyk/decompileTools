package com.baidu.android.pushservice.i;

import android.text.TextUtils;

public class a
{
  private int a;
  private String b;
  private long c;
  private String d;
  private int e;
  private String f;
  private int g;
  private String h;
  private int i;
  private String j;
  private String k;

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
    return this.j;
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
    return new q(this.b, this.c, this.d, this.i, this.j);
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
    return new j(c());
  }

  public void d(int paramInt)
  {
    this.i = paramInt;
  }

  public void d(String paramString)
  {
    this.h = paramString;
  }

  public b e()
  {
    b localb = new b(c());
    localb.c = this.e;
    localb.a = this.f;
    localb.b = this.g;
    if (!TextUtils.isEmpty(this.k))
      localb.e = this.k;
    if (!TextUtils.isEmpty(this.h))
      localb.d = this.h;
    return localb;
  }

  public void e(String paramString)
  {
    this.j = paramString;
  }

  public void f(String paramString)
  {
    this.k = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.a
 * JD-Core Version:    0.6.2
 */