package com.umeng.analytics;

public abstract class z
  implements Runnable
{
  public abstract void a();

  public void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.z
 * JD-Core Version:    0.6.2
 */