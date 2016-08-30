package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class k extends i
{
  private static final WeakReference<byte[]> b = new WeakReference(null);
  private WeakReference<byte[]> a = b;

  k(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }

  final byte[] c()
  {
    try
    {
      byte[] arrayOfByte2 = (byte[])this.a.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = d();
        this.a = new WeakReference(arrayOfByte1);
      }
      return arrayOfByte1;
    }
    finally
    {
    }
  }

  protected abstract byte[] d();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.k
 * JD-Core Version:    0.6.2
 */