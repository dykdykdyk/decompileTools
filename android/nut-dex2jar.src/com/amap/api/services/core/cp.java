package com.amap.api.services.core;

public abstract class cp
  implements Runnable
{
  cp.a d;

  public abstract void a();

  public final void run()
  {
    try
    {
      if (this.d != null)
        this.d.a(this);
      if (Thread.interrupted())
        return;
      a();
      if ((!Thread.interrupted()) && (this.d != null))
      {
        this.d.b(this);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "ThreadTask", "run");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.cp
 * JD-Core Version:    0.6.2
 */