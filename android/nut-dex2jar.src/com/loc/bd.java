package com.loc;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

final class bd extends PhoneStateListener
{
  bd(bc parambc)
  {
  }

  public final void onCellLocationChanged(CellLocation paramCellLocation)
  {
    try
    {
      if (!this.a.a(paramCellLocation))
        return;
      this.a.h = paramCellLocation;
      return;
    }
    catch (Throwable paramCellLocation)
    {
    }
  }

  public final void onServiceStateChanged(ServiceState paramServiceState)
  {
    try
    {
      switch (paramServiceState.getState())
      {
      case 1:
        this.a.e();
        return;
      case 0:
        this.a.d();
        return;
      }
      return;
    }
    catch (Throwable paramServiceState)
    {
    }
  }

  public final void onSignalStrengthChanged(int paramInt)
  {
    int i = -113;
    while (true)
    {
      try
      {
        switch (this.a.a)
        {
        case 1:
          bc.a(this.a, paramInt);
          return;
          paramInt = by.a(paramInt);
          break;
        case 2:
          paramInt = by.a(paramInt);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        return;
      }
      paramInt = i;
    }
  }

  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    if (paramSignalStrength == null)
      return;
    int i = -113;
    try
    {
      switch (this.a.a)
      {
      case 1:
      case 2:
      }
      while (true)
      {
        bc.a(this.a, i);
        return;
        i = by.a(paramSignalStrength.getGsmSignalStrength());
        continue;
        i = paramSignalStrength.getCdmaDbm();
      }
    }
    catch (Throwable paramSignalStrength)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bd
 * JD-Core Version:    0.6.2
 */