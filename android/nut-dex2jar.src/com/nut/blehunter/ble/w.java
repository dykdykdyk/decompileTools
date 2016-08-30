package com.nut.blehunter.ble;

final class w
  implements Runnable
{
  private v a;

  public w(v paramv)
  {
    this.a = paramv;
  }

  public final void run()
  {
    this.a.sendEmptyMessage(1001);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.w
 * JD-Core Version:    0.6.2
 */