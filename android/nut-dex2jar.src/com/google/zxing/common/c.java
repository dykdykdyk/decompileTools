package com.google.zxing.common;

public final class c
{
  public int a;
  public int b;
  private final byte[] c;

  public c(byte[] paramArrayOfByte)
  {
    this.c = paramArrayOfByte;
  }

  public final int a()
  {
    return (this.c.length - this.a) * 8 - this.b;
  }

  public final int a(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 32) || (paramInt > a()))
      throw new IllegalArgumentException(String.valueOf(paramInt));
    int j;
    int i;
    int k;
    if (this.b > 0)
    {
      j = 8 - this.b;
      if (paramInt < j)
      {
        i = paramInt;
        j -= i;
        k = this.c[this.a];
        this.b = (i + this.b);
        if (this.b == 8)
        {
          this.b = 0;
          this.a += 1;
        }
        k = (255 >> 8 - i << j & k) >> j;
        j = paramInt - i;
      }
    }
    for (paramInt = k; ; paramInt = i)
    {
      i = paramInt;
      if (j > 0)
      {
        while (true)
          if (j >= 8)
          {
            paramInt = paramInt << 8 | this.c[this.a] & 0xFF;
            this.a += 1;
            j -= 8;
            continue;
            i = j;
            break;
          }
        i = paramInt;
        if (j > 0)
        {
          i = 8 - j;
          i = paramInt << j | (255 >> i << i & this.c[this.a]) >> i;
          this.b = (j + this.b);
        }
      }
      return i;
      i = 0;
      j = paramInt;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.c
 * JD-Core Version:    0.6.2
 */