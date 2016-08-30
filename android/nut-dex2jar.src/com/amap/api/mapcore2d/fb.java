package com.amap.api.mapcore2d;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.util.Map;

public abstract class fb
{
  int b = 20000;
  int c = 20000;
  Proxy d = null;

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(Proxy paramProxy)
  {
    this.d = paramProxy;
  }

  public byte[] a_()
  {
    return null;
  }

  public abstract Map<String, String> b();

  public final void b(int paramInt)
  {
    this.c = paramInt;
  }

  public abstract Map<String, String> c();

  public abstract String d();

  String h()
  {
    Object localObject = a_();
    if ((localObject == null) || (localObject.length == 0))
      return d();
    localObject = c();
    if (localObject == null)
      return d();
    localObject = ey.a((Map)localObject);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(d()).append("?").append((String)localObject);
    return localStringBuffer.toString();
  }

  byte[] i()
  {
    byte[] arrayOfByte2 = a_();
    byte[] arrayOfByte1;
    String str;
    if (arrayOfByte2 != null)
    {
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2.length != 0);
    }
    else
    {
      str = ey.a(c());
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
      dq.a(localUnsupportedEncodingException, "Request", "getConnectionDatas");
    }
    return arrayOfByte2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fb
 * JD-Core Version:    0.6.2
 */