package com.amap.api.mapcore2d;

public abstract class fh
  implements Runnable
{
  fh.a d;

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
      dn.a(localThrowable, "ThreadTask", "run");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fh
 * JD-Core Version:    0.6.2
 */