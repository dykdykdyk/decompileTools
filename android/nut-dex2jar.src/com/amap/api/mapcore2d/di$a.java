package com.amap.api.mapcore2d;

public class di$a
{
  private String a;
  private String b;
  private String c;
  private boolean d = true;
  private String e = "standard";
  private String[] f = null;

  public di$a(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString2;
    this.c = paramString3;
    this.b = paramString1;
  }

  public a a(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public a a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    return this;
  }

  public a a(String[] paramArrayOfString)
  {
    this.f = ((String[])paramArrayOfString.clone());
    return this;
  }

  public di a()
    throws da
  {
    if (this.f == null)
      throw new da("sdk packages is null");
    return new di(this, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.di.a
 * JD-Core Version:    0.6.2
 */