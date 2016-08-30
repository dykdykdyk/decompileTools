package com.loc;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.util.Map;

public abstract class ad
{
  int a = 20000;
  int b = 20000;
  Proxy c = null;

  public abstract Map<String, String> a();

  public abstract Map<String, String> b();

  public abstract String c();

  final String d()
  {
    Object localObject = f();
    if ((localObject == null) || (localObject.length == 0))
      return c();
    localObject = a();
    if (localObject == null)
      return c();
    localObject = ac.a((Map)localObject);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(c()).append("?").append((String)localObject);
    return localStringBuffer.toString();
  }

  final byte[] e()
  {
    byte[] arrayOfByte2 = f();
    byte[] arrayOfByte1;
    String str;
    if (arrayOfByte2 != null)
    {
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2.length != 0);
    }
    else
    {
      str = ac.a(a());
      arrayOfByte1 = arrayOfByte2;
    }
    try
    {
      if (!TextUtils.isEmpty(str))
        arrayOfByte1 = str.getBytes("UTF-8");
      return arrayOfByte1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      arrayOfByte2 = str.getBytes();
      localUnsupportedEncodingException.printStackTrace();
    }
    return arrayOfByte2;
  }

  public byte[] f()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ad
 * JD-Core Version:    0.6.2
 */