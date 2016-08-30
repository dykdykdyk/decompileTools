package com.loc;

import android.telephony.CellLocation;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

public final class di
{
  int a = 2147483647;
  int b = 2147483647;
  int c = 2147483647;
  int d = 2147483647;
  int e = 2147483647;

  di(CellLocation paramCellLocation)
  {
    if (paramCellLocation != null)
    {
      if (!(paramCellLocation instanceof GsmCellLocation))
        break label67;
      paramCellLocation = (GsmCellLocation)paramCellLocation;
      this.e = paramCellLocation.getCid();
      this.d = paramCellLocation.getLac();
    }
    label67: 
    while (!(paramCellLocation instanceof CdmaCellLocation))
      return;
    paramCellLocation = (CdmaCellLocation)paramCellLocation;
    this.c = paramCellLocation.getBaseStationId();
    this.b = paramCellLocation.getNetworkId();
    this.a = paramCellLocation.getSystemId();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.di
 * JD-Core Version:    0.6.2
 */