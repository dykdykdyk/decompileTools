package com.loc;

import java.util.Locale;

public final class bb
{
  public String a = "";
  public String b = "";
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  public int g = 0;
  public int h = 0;
  public int i = 0;
  public int j = -113;
  public int k = 9;

  protected bb(int paramInt)
  {
    this.k = paramInt;
  }

  public final String toString()
  {
    switch (this.k)
    {
    default:
      return "unknown";
    case 2:
      return String.format(Locale.US, "CDMA bid=%d, nid=%d, sid=%d", new Object[] { Integer.valueOf(this.i), Integer.valueOf(this.h), Integer.valueOf(this.g) });
    case 1:
    }
    return String.format(Locale.US, "GSM lac=%d, cid=%d, mnc=%s", new Object[] { Integer.valueOf(this.c), Integer.valueOf(this.d), this.b });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bb
 * JD-Core Version:    0.6.2
 */