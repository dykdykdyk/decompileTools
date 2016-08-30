package com.tencent.open.utils;

final class r
  implements Runnable
{
  r(q paramq, Runnable paramRunnable)
  {
  }

  public final void run()
  {
    try
    {
      this.a.run();
      return;
    }
    finally
    {
      this.b.a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.r
 * JD-Core Version:    0.6.2
 */