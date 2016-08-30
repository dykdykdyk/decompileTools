package com.nut.blehunter.ble;

final class u
  implements Runnable
{
  private v a;

  public u(v paramv)
  {
    this.a = paramv;
  }

  public final void run()
  {
    this.a.sendEmptyMessage(1000);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.u
 * JD-Core Version:    0.6.2
 */