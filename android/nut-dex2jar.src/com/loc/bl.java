package com.loc;

import java.util.Locale;

public final class bl
{
  String a;
  int b;
  private String c;
  private long d;

  public bl(String paramString1, long paramLong, int paramInt, String paramString2)
  {
    this.a = paramString1;
    this.d = paramLong;
    this.b = paramInt;
    this.c = paramString2;
  }

  public final String toString()
  {
    return String.format(Locale.US, "##h=%s, n=%d, t=%d, ex=%s##", new Object[] { this.a, Integer.valueOf(this.b), Long.valueOf(this.d), this.c });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bl
 * JD-Core Version:    0.6.2
 */