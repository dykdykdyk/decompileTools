package android.support.v7.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.b.n;
import android.util.Log;
import android.view.Window;
import android.view.Window.Callback;
import java.util.Calendar;

class y extends x
{
  private static bb w;
  boolean p = true;
  private int x = -100;
  private boolean y;

  y(Context paramContext, Window paramWindow, t paramt)
  {
    super(paramContext, paramWindow, paramt);
  }

  Window.Callback a(Window.Callback paramCallback)
  {
    return new z(this, paramCallback);
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if ((paramBundle != null) && (this.x == -100))
      this.x = paramBundle.getInt("appcompat:local_night_mode", -100);
  }

  public final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    if (this.x != -100)
      paramBundle.putInt("appcompat:local_night_mode", this.x);
  }

  int f(int paramInt)
  {
    Location localLocation1 = null;
    Object localObject;
    bc localbc;
    boolean bool;
    switch (paramInt)
    {
    default:
      return paramInt;
    case 0:
      if (w == null)
        w = new bb(this.b.getApplicationContext());
      localObject = w;
      localbc = bb.a;
      if (bb.a(localbc))
      {
        bool = localbc.a;
        if (bool)
          return 2;
      }
      else
      {
        if (n.a(((bb)localObject).b, "android.permission.ACCESS_COARSE_LOCATION") != 0)
          break label231;
      }
      break;
    case -100:
    }
    label188: label231: for (Location localLocation2 = ((bb)localObject).a("network"); ; localLocation2 = null)
    {
      if (n.a(((bb)localObject).b, "android.permission.ACCESS_FINE_LOCATION") == 0)
        localLocation1 = ((bb)localObject).a("gps");
      if ((localLocation1 != null) && (localLocation2 != null))
      {
        localObject = localLocation2;
        if (localLocation1.getTime() > localLocation2.getTime())
          localObject = localLocation1;
      }
      while (true)
      {
        if (localObject == null)
          break label188;
        bb.a((Location)localObject);
        bool = localbc.a;
        break;
        localObject = localLocation2;
        if (localLocation1 != null)
          localObject = localLocation1;
      }
      Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
      paramInt = Calendar.getInstance().get(11);
      if ((paramInt < 6) || (paramInt >= 22))
      {
        bool = true;
        break;
      }
      bool = false;
      break;
      return 1;
      return -1;
    }
  }

  public final boolean i()
  {
    this.y = true;
    Resources localResources;
    Configuration localConfiguration;
    int j;
    if (this.x == -100)
    {
      i = u.a;
      i = f(i);
      if (i == -1)
        break label116;
      localResources = this.b.getResources();
      localConfiguration = localResources.getConfiguration();
      j = localConfiguration.uiMode;
      if (i != 2)
        break label108;
    }
    label108: for (int i = 32; ; i = 16)
    {
      if ((j & 0x30) == i)
        break label114;
      localConfiguration = new Configuration(localConfiguration);
      localConfiguration.uiMode = (i | localConfiguration.uiMode & 0xFFFFFFCF);
      localResources.updateConfiguration(localConfiguration, null);
      return true;
      i = this.x;
      break;
    }
    label114: return false;
    label116: return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.y
 * JD-Core Version:    0.6.2
 */