package com.nut.blehunter.ui.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Location;
import android.location.LocationManager;
import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.o;
import java.util.Iterator;
import java.util.List;

public final class i
{
  public static d a(Context paramContext)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    Iterator localIterator = localLocationManager.getProviders(true).iterator();
    Object localObject1 = null;
    Location localLocation;
    while (true)
      if (localIterator.hasNext())
      {
        localLocation = localLocationManager.getLastKnownLocation((String)localIterator.next());
        if (localLocation != null)
        {
          localObject2 = localLocation;
          if (localObject1 != null)
            if (localLocation.getAccuracy() >= ((Location)localObject1).getAccuracy())
              break label196;
        }
      }
    label196: for (Object localObject2 = localLocation; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      int i;
      if ((localObject1 != null) && (((Location)localObject1).getLatitude() != 0.0D) && (((Location)localObject1).getLongitude() != 0.0D))
        if (!o.a().a(((Location)localObject1).getLatitude(), ((Location)localObject1).getLongitude()))
          i = 1;
      while (i != 0)
        if (b(paramContext))
        {
          return new e();
          i = 0;
          continue;
          localObject1 = m.a().b();
          if ((localObject1 != null) && (((User)localObject1).a(paramContext)))
            i = 1;
          else
            i = 0;
        }
        else
        {
          n.c(paramContext, 2131099837);
          return null;
        }
      return new a();
    }
  }

  private static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo("com.google.android.gms", 0);
      paramContext = paramContext.getPackageManager().getApplicationInfo("com.google.android.gsf", 0);
      boolean bool1 = bool2;
      if (localApplicationInfo != null)
      {
        bool1 = bool2;
        if (paramContext != null)
          bool1 = true;
      }
      return bool1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.i
 * JD-Core Version:    0.6.2
 */