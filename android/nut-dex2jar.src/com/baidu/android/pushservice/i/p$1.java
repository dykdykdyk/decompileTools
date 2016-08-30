package com.baidu.android.pushservice.i;

class p$1
  implements Runnable
{
  p$1(p paramp, boolean paramBoolean)
  {
  }

  public void run()
  {
    if (!com.baidu.android.pushservice.f.a.b(this.b.a))
    {
      com.baidu.android.pushservice.h.a.d("Statistics-BaseSender", "Network is not reachable!");
      return;
    }
    p.a(this.b, this.a);
    p.b(this.b, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.p.1
 * JD-Core Version:    0.6.2
 */