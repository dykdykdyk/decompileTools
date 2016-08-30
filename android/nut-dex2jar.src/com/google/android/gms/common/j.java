package com.google.android.gms.common;

import java.util.Arrays;

final class j extends i
{
  private final byte[] a;

  j(byte[] paramArrayOfByte)
  {
    super(Arrays.copyOfRange(paramArrayOfByte, 0, 25));
    this.a = paramArrayOfByte;
  }

  final byte[] c()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.j
 * JD-Core Version:    0.6.2
 */