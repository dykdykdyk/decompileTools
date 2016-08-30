package com.amap.api.services.core;

public class ar$a
{
  private String a;
  private String b;
  private String c;
  private boolean d = true;
  private String e = "standard";
  private String[] f = null;

  public ar$a(String paramString1, String paramString2, String paramString3)
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

  public ar a()
    throws ai
  {
    if (this.f == null)
      throw new ai("sdk packages is null");
    return new ar(this, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ar.a
 * JD-Core Version:    0.6.2
 */