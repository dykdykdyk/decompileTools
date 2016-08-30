package com.amap.api.services.core;

import android.content.Context;

public class u extends b<String, Integer>
{
  private Context h;
  private String i;

  public u(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
    this.h = paramContext;
    this.i = paramString;
  }

  protected Integer d(String paramString)
    throws AMapException
  {
    return Integer.valueOf(0);
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.h));
    localStringBuffer.append("&userid=").append(this.i);
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.b() + "/nearby/data/delete";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.u
 * JD-Core Version:    0.6.2
 */