package com.amap.api.services.poisearch;

import android.content.Context;

abstract class b<T, V> extends com.amap.api.services.core.b<T, V>
{
  public b(Context paramContext, T paramT)
  {
    super(paramContext, paramT);
  }

  protected boolean d(String paramString)
  {
    return (paramString == null) || (paramString.equals("")) || (paramString.equals("[]"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.b
 * JD-Core Version:    0.6.2
 */