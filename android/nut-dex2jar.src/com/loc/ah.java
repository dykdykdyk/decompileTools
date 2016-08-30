package com.loc;

import java.util.TimerTask;

final class ah extends TimerTask
{
  ah(ag paramag)
  {
  }

  public final void run()
  {
    Thread.currentThread().setPriority(1);
    if (by.b() - ag.h(this.b) < 10000L)
      return;
    if (ag.f(this.b))
    {
      ag.a(this.b, this.a);
      return;
    }
    ag.i(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ah
 * JD-Core Version:    0.6.2
 */