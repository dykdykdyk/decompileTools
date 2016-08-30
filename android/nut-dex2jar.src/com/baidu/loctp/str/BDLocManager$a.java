package com.baidu.loctp.str;

import java.util.Locale;

class BDLocManager$a
{
  public int a = -1;
  public int b = -1;
  public int c = -1;
  public int d = -1;
  public char e = '\000';

  private BDLocManager$a(BDLocManager paramBDLocManager)
  {
  }

  private boolean a()
  {
    return (this.a >= 0) && (this.b > 0);
  }

  public String toString()
  {
    if (!a())
      return null;
    StringBuffer localStringBuffer = new StringBuffer(128);
    localStringBuffer.append(this.e);
    localStringBuffer.append("h");
    if (this.c != 460)
      localStringBuffer.append(this.c);
    localStringBuffer.append(String.format(Locale.CHINA, "h%xh%xh%x", new Object[] { Integer.valueOf(this.d), Integer.valueOf(this.a), Integer.valueOf(this.b) }));
    return localStringBuffer.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.loctp.str.BDLocManager.a
 * JD-Core Version:    0.6.2
 */