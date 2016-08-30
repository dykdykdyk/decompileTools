package com.loc;

import android.location.GpsStatus.NmeaListener;

final class cr
  implements GpsStatus.NmeaListener
{
  private cr(co paramco)
  {
  }

  public final void onNmeaReceived(long paramLong, String paramString)
  {
    try
    {
      co.c(this.a, paramLong);
      co.a(this.a, paramString);
      return;
    }
    catch (Exception paramString)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cr
 * JD-Core Version:    0.6.2
 */