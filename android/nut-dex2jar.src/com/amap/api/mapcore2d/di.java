package com.amap.api.mapcore2d;

public class di
{
  String a;
  String b;
  String c;
  private boolean d = true;
  private String e = "standard";
  private String[] f = null;

  private di(di.a parama)
  {
    this.a = di.a.a(parama);
    this.c = di.a.b(parama);
    this.b = di.a.c(parama);
    this.d = di.a.d(parama);
    this.e = di.a.e(parama);
    this.f = di.a.f(parama);
  }

  public String a()
  {
    return this.c;
  }

  public String b()
  {
    return this.a;
  }

  public String c()
  {
    return this.b;
  }

  public String d()
  {
    return this.e;
  }

  public boolean e()
  {
    return this.d;
  }

  public String[] f()
  {
    return (String[])this.f.clone();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.di
 * JD-Core Version:    0.6.2
 */