package com.google.zxing.b.a;

public final class ah extends q
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final int g;
  private final char h;
  private final String i;

  public ah(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt, char paramChar, String paramString7)
  {
    super(r.l);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramInt;
    this.h = paramChar;
    this.i = paramString7;
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(50);
    localStringBuilder.append(this.b).append(' ');
    localStringBuilder.append(this.c).append(' ');
    localStringBuilder.append(this.d).append('\n');
    if (this.e != null)
      localStringBuilder.append(this.e).append(' ');
    localStringBuilder.append(this.g).append(' ');
    localStringBuilder.append(this.h).append(' ');
    localStringBuilder.append(this.i).append('\n');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.ah
 * JD-Core Version:    0.6.2
 */