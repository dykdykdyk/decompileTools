package android.support.v7.a;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;

final class bb
{
  static final bc a = new bc((byte)0);
  final Context b;
  private final LocationManager c;

  bb(Context paramContext)
  {
    this.b = paramContext;
    this.c = ((LocationManager)paramContext.getSystemService("location"));
  }

  static void a(Location paramLocation)
  {
    bc localbc = a;
    long l1 = System.currentTimeMillis();
    if (ba.a == null)
      ba.a = new ba();
    ba localba = ba.a;
    localba.a(l1 - 86400000L, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l2 = localba.b;
    localba.a(l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    if (localba.d == 1);
    long l3;
    long l4;
    long l5;
    for (boolean bool = true; ; bool = false)
    {
      l3 = localba.c;
      l4 = localba.b;
      localba.a(86400000L + l1, paramLocation.getLatitude(), paramLocation.getLongitude());
      l5 = localba.c;
      if ((l3 != -1L) && (l4 != -1L))
        break;
      l1 = 43200000L + l1;
      localbc.a = bool;
      localbc.b = l2;
      localbc.c = l3;
      localbc.d = l4;
      localbc.e = l5;
      localbc.f = l1;
      return;
    }
    if (l1 > l4)
      l1 = 0L + l5;
    while (true)
    {
      l1 += 60000L;
      break;
      if (l1 > l3)
        l1 = 0L + l4;
      else
        l1 = 0L + l3;
    }
  }

  static boolean a(bc parambc)
  {
    return (parambc != null) && (parambc.f > System.currentTimeMillis());
  }

  final Location a(String paramString)
  {
    if (this.c != null)
      try
      {
        if (this.c.isProviderEnabled(paramString))
        {
          paramString = this.c.getLastKnownLocation(paramString);
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        Log.d("TwilightManager", "Failed to get last known location", paramString);
      }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.bb
 * JD-Core Version:    0.6.2
 */