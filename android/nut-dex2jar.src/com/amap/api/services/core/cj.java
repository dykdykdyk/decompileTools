package com.amap.api.services.core;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.util.Map;

public abstract class cj
{
  int e = 20000;
  int f = 20000;
  Proxy g = null;

  public final void a(Proxy paramProxy)
  {
    this.g = paramProxy;
  }

  public abstract Map<String, String> b();

  public abstract Map<String, String> c();

  public final void c(int paramInt)
  {
    this.e = paramInt;
  }

  public final void d(int paramInt)
  {
    this.f = paramInt;
  }

  public byte[] f()
  {
    return null;
  }

  public abstract String g();

  String n()
  {
    Object localObject = f();
    if ((localObject == null) || (localObject.length == 0))
      return g();
    localObject = b();
    if (localObject == null)
      return g();
    localObject = cg.a((Map)localObject);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(g()).append("?").append((String)localObject);
    return localStringBuffer.toString();
  }

  byte[] o()
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
      str = cg.a(b());
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
      ay.a(localUnsupportedEncodingException, "Request", "getConnectionDatas");
    }
    return arrayOfByte2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.cj
 * JD-Core Version:    0.6.2
 */