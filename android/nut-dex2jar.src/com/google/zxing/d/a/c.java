package com.google.zxing.d.a;

import com.google.zxing.ChecksumException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.common.reedsolomon.a;

public final class c
{
  private final com.google.zxing.common.reedsolomon.c a = new com.google.zxing.common.reedsolomon.c(a.h);

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws ChecksumException
  {
    int k = 0;
    int m = paramInt2 + paramInt3;
    if (paramInt4 == 0);
    int[] arrayOfInt;
    for (int i = 1; ; i = 2)
    {
      arrayOfInt = new int[m / i];
      int j = 0;
      while (j < m)
      {
        if ((paramInt4 == 0) || (j % 2 == paramInt4 - 1))
          arrayOfInt[(j / i)] = (paramArrayOfByte[(j + paramInt1)] & 0xFF);
        j += 1;
      }
    }
    try
    {
      this.a.a(arrayOfInt, paramInt3 / i);
      paramInt3 = k;
      while (paramInt3 < paramInt2)
      {
        if ((paramInt4 == 0) || (paramInt3 % 2 == paramInt4 - 1))
          paramArrayOfByte[(paramInt3 + paramInt1)] = ((byte)arrayOfInt[(paramInt3 / i)]);
        paramInt3 += 1;
      }
    }
    catch (ReedSolomonException paramArrayOfByte)
    {
      throw ChecksumException.a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.d.a.c
 * JD-Core Version:    0.6.2
 */