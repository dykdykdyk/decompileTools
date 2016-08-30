package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.bb;
import com.google.android.gms.common.internal.bc;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.k;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class i extends bc
{
  private int a;

  protected i(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 25);
    for (boolean bool = true; ; bool = false)
    {
      int i = paramArrayOfByte.length;
      b.b(bool, 55 + "cert hash data has incorrect length. length=" + i);
      this.a = Arrays.hashCode(paramArrayOfByte);
      return;
    }
  }

  protected static byte[] a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("ISO-8859-1");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    throw new AssertionError(paramString);
  }

  public final h a()
  {
    return k.a(c());
  }

  public final int b()
  {
    return hashCode();
  }

  abstract byte[] c();

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof bb)))
      return false;
    try
    {
      paramObject = (bb)paramObject;
      if (paramObject.b() != hashCode())
        return false;
      paramObject = paramObject.a();
      if (paramObject == null)
        return false;
      paramObject = (byte[])k.a(paramObject);
      boolean bool = Arrays.equals(c(), paramObject);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      Log.e("GoogleCertificates", "iCertData failed to retrive data from remote");
    }
    return false;
  }

  public int hashCode()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.i
 * JD-Core Version:    0.6.2
 */