package com.loc;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

final class cq extends PhoneStateListener
{
  private cq(co paramco)
  {
  }

  public final void onCellLocationChanged(CellLocation paramCellLocation)
  {
    try
    {
      co.b(this.a, System.currentTimeMillis());
      co.a(this.a, paramCellLocation);
      super.onCellLocationChanged(paramCellLocation);
      return;
    }
    catch (Exception paramCellLocation)
    {
    }
  }

  public final void onServiceStateChanged(ServiceState paramServiceState)
  {
    try
    {
      if (paramServiceState.getState() == 0)
      {
        co.a(this.a, true);
        String[] arrayOfString = co.a(co.f(this.a));
        co.a(this.a, Integer.parseInt(arrayOfString[0]));
        co.b(this.a, Integer.parseInt(arrayOfString[1]));
      }
      while (true)
      {
        super.onServiceStateChanged(paramServiceState);
        return;
        co.a(this.a, false);
      }
    }
    catch (Exception paramServiceState)
    {
    }
  }

  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    try
    {
      if (co.g(this.a))
        co.c(this.a, paramSignalStrength.getCdmaDbm());
      while (true)
      {
        super.onSignalStrengthsChanged(paramSignalStrength);
        return;
        co.c(this.a, paramSignalStrength.getGsmSignalStrength());
        if (co.h(this.a) == 99)
          co.c(this.a, -1);
        else
          co.c(this.a, co.h(this.a) * 2 - 113);
      }
    }
    catch (Exception paramSignalStrength)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cq
 * JD-Core Version:    0.6.2
 */