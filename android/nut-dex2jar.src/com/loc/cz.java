package com.loc;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.GpsStatus.NmeaListener;
import android.location.LocationManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class cz
  implements GpsStatus.Listener, GpsStatus.NmeaListener
{
  private long a = 0L;
  private long b = 0L;
  private boolean c = false;
  private List d = new ArrayList();
  private String e = null;
  private String f = null;
  private String g = null;

  protected cz(ce paramce)
  {
  }

  public final void a(String paramString)
  {
    if ((System.currentTimeMillis() - this.b > 400L) && (this.c) && (this.d.size() > 0));
    try
    {
      do localdo = new do(this.e, this.g);
      if (localdo.a)
      {
        ce.c(this.h, ce.a(this.h, localdo, ce.n(this.h)));
        if (ce.o(this.h) > 0)
          ce.b(String.format(Locale.CHINA, "&nmea=%.1f|%.1f&g_tp=%d", new Object[] { Double.valueOf(localdo.c), Double.valueOf(localdo.b), Integer.valueOf(ce.o(this.h)) }));
      }
      while (true)
      {
        this.d.clear();
        this.g = null;
        this.f = null;
        this.e = null;
        this.c = false;
        if (!paramString.startsWith("$GPGGA"))
          break;
        this.c = true;
        this.e = paramString.trim();
        this.b = System.currentTimeMillis();
        return;
        ce.c(this.h, 0);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        ce.c(this.h, 0);
        continue;
        if (paramString.startsWith("$GPGSV"))
          this.d.add(paramString.trim());
        else if (paramString.startsWith("$GPGSA"))
          this.g = paramString.trim();
      }
    }
  }

  public final void onGpsStatusChanged(int paramInt)
  {
    int i = 0;
    try
    {
      if (ce.d(this.h) == null)
      {
        return;
        ce.b(this.h, 0);
        return;
        if ((ce.a) || (System.currentTimeMillis() - this.a >= 10000L))
        {
          if (ce.f(this.h) == null)
            ce.a(this.h, ce.d(this.h).getGpsStatus(null));
          int j;
          while (true)
          {
            Iterator localIterator = ce.f(this.h).getSatellites().iterator();
            ce.g(this.h);
            ce.h(this.h);
            ce.a(this.h, new HashMap());
            paramInt = 0;
            j = 0;
            while (localIterator.hasNext())
            {
              GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
              int n = paramInt + 1;
              int k = j;
              if (localGpsSatellite.usedInFix())
                k = j + 1;
              int m = i;
              if (localGpsSatellite.getSnr() > 0.0F)
                m = i + 1;
              i = m;
              j = k;
              paramInt = n;
              if (localGpsSatellite.getSnr() >= ce.n())
              {
                ce.i(this.h);
                i = m;
                j = k;
                paramInt = n;
              }
            }
            ce.d(this.h).getGpsStatus(ce.f(this.h));
          }
          if ((ce.j(this.h) == -1) || ((j >= 4) && (ce.j(this.h) < 4)) || ((j < 4) && (ce.j(this.h) >= 4)))
          {
            ce.a(this.h, j);
            if (j >= 4)
              break label390;
            if (ce.k(this.h) != null)
              ce.k(this.h).m();
          }
          while (true)
          {
            ce.b(this.h, i);
            ce.b(this.h, ce.l(this.h));
            if ((ce.a) || ((j <= 3) && (paramInt <= 15)) || (ce.d(this.h).getLastKnownLocation("gps") == null))
              break;
            this.a = System.currentTimeMillis();
            return;
            label390: if (ce.k(this.h) != null)
              ce.k(this.h).l();
          }
        }
        return;
      }
      switch (paramInt)
      {
      case 2:
      case 4:
      case 3:
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void onNmeaReceived(long paramLong, String paramString)
  {
    try
    {
      if (!ce.a)
        return;
      if ((paramString != null) && (!paramString.equals("")) && (paramString.length() >= 9) && (paramString.length() <= 150) && (ce.m(this.h) != null))
      {
        ce.m(this.h).sendMessage(ce.m(this.h).obtainMessage(1, paramString));
        return;
      }
    }
    catch (Exception paramString)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cz
 * JD-Core Version:    0.6.2
 */