package com.google.zxing.b.a;

public final class h extends q
{
  private final String[] a;
  private final String[] b;
  private final String[] c;
  private final String d;
  private final String e;

  h(String paramString)
  {
    this(new String[] { paramString }, null, null, null, null);
  }

  h(String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String paramString1, String paramString2)
  {
    super(r.b);
    this.a = paramArrayOfString1;
    this.b = paramArrayOfString2;
    this.c = paramArrayOfString3;
    this.d = paramString1;
    this.e = paramString2;
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    a(this.a, localStringBuilder);
    a(this.b, localStringBuilder);
    a(this.c, localStringBuilder);
    a(this.d, localStringBuilder);
    a(this.e, localStringBuilder);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.h
 * JD-Core Version:    0.6.2
 */