package com.google.zxing.b.a;

public final class aj extends q
{
  private final String a;
  private final String b;
  private final String c;
  private final boolean d;

  public aj(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    super(r.j);
    this.a = paramString2;
    this.b = paramString1;
    this.c = paramString3;
    this.d = paramBoolean;
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    a(this.a, localStringBuilder);
    a(this.b, localStringBuilder);
    a(this.c, localStringBuilder);
    a(Boolean.toString(this.d), localStringBuilder);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.aj
 * JD-Core Version:    0.6.2
 */