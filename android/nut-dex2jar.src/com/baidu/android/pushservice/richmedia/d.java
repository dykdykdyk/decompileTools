package com.baidu.android.pushservice.richmedia;

import android.util.Log;

public class d
{
  public static c a(c.a parama, String paramString)
  {
    c localc = new c();
    localc.a(parama);
    switch (d.1.a[parama.ordinal()])
    {
    default:
      Log.e("RequestFactory", "illegal request type " + parama);
      return localc;
    case 1:
    }
    localc.b(paramString);
    localc.a("GET");
    return localc;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.d
 * JD-Core Version:    0.6.2
 */