package com.amap.api.mapcore2d;

class ca
{
  private Thread[] a;

  public ca(int paramInt, Runnable paramRunnable1, Runnable paramRunnable2)
  {
    this.a = new Thread[paramInt];
    int i = 0;
    if (i < paramInt)
    {
      if ((i == 0) && (paramInt > 1))
        this.a[i] = new Thread(paramRunnable1);
      while (true)
      {
        i += 1;
        break;
        this.a[i] = new Thread(paramRunnable2);
      }
    }
  }

  public void a()
  {
    Thread[] arrayOfThread = this.a;
    int j = arrayOfThread.length;
    int i = 0;
    while (i < j)
    {
      Thread localThread = arrayOfThread[i];
      localThread.setDaemon(true);
      localThread.start();
      i += 1;
    }
  }

  public void b()
  {
    if (this.a == null)
      return;
    int j = this.a.length;
    int i = 0;
    while (i < j)
    {
      this.a[i].interrupt();
      this.a[i] = null;
      i += 1;
    }
    this.a = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ca
 * JD-Core Version:    0.6.2
 */