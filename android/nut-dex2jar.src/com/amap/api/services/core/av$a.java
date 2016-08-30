package com.amap.api.services.core;

import android.content.Context;

class av$a
  implements ch
{
  private Context a;

  av$a(Context paramContext)
  {
    this.a = paramContext;
  }

  public void a()
  {
    try
    {
      bd.b(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "LogNetListener", "onNetCompleted");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.av.a
 * JD-Core Version:    0.6.2
 */