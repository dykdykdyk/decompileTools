package com.loc;

import java.net.ServerSocket;

final class dg extends Thread
{
  dg(dd paramdd)
  {
  }

  public final void run()
  {
    try
    {
      if (!dd.j(this.a))
        dd.k(this.a);
      if (!this.a.q)
      {
        this.a.q = true;
        this.a.p = new ServerSocket(43689);
      }
      while (this.a.q)
      {
        this.a.r = this.a.p.accept();
        dd.a(this.a, this.a.r);
      }
    }
    catch (Throwable localThrowable)
    {
      super.run();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dg
 * JD-Core Version:    0.6.2
 */