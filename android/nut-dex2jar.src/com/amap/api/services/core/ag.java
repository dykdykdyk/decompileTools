package com.amap.api.services.core;

import android.content.Context;

public abstract class ag<T, V> extends b<T, V>
{
  public ag(Context paramContext, T paramT)
  {
    super(paramContext, paramT);
  }

  public String g()
  {
    return h.a() + "/weather/weatherInfo?";
  }

  public T i()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ag
 * JD-Core Version:    0.6.2
 */