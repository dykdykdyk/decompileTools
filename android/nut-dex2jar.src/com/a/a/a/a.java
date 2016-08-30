package com.a.a.a;

public final class a
{
  public static int a(char paramChar)
  {
    paramChar -= '一';
    if ((paramChar >= 0) && (paramChar < '᭘'))
      return a(b.a, b.b, paramChar);
    if (('᭘' <= paramChar) && (paramChar < '㚰'))
      return a(c.a, c.b, paramChar - '᭘');
    return a(d.a, d.b, paramChar - '㚰');
  }

  private static short a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    int i = paramInt / 8;
    short s2 = (short)(paramArrayOfByte2[paramInt] & 0xFF);
    short s1 = s2;
    if ((paramArrayOfByte1[i] & e.a[(paramInt % 8)]) != 0)
      s1 = (short)(s2 | 0x100);
    return s1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.a.a.a.a
 * JD-Core Version:    0.6.2
 */