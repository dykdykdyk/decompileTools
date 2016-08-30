package com.google.zxing.b.a;

public final class w extends q
{
  private final String[] a;
  private final String[] b;
  private final String c;
  private final String d;

  public w(String paramString1, String paramString2)
  {
    super(r.h);
    this.a = new String[] { paramString1 };
    this.b = new String[] { null };
    this.c = null;
    this.d = paramString2;
  }

  public w(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2)
  {
    super(r.h);
    this.a = paramArrayOfString1;
    this.b = paramArrayOfString2;
    this.c = paramString1;
    this.d = paramString2;
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    a(this.a, localStringBuilder);
    a(this.c, localStringBuilder);
    a(this.d, localStringBuilder);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.w
 * JD-Core Version:    0.6.2
 */