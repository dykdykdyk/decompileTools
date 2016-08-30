package com.nut.blehunter;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import android.text.TextUtils;
import com.nut.blehunter.d.c;
import com.nut.blehunter.d.f;
import com.nut.blehunter.d.g;
import com.nut.blehunter.d.k;
import com.nut.blehunter.entity.FindLocation;
import com.nut.blehunter.entity.Position;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.provider.h;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class o
  implements Runnable
{
  private static o f;
  protected com.nut.blehunter.ui.b.o a;
  public Context b;
  Handler c;
  LocationManager d = null;
  LocationListener e = new p(this);
  private boolean g;
  private String h;
  private Map<String, FindLocation> i = new HashMap();

  public static o a()
  {
    if (f == null)
      f = new o();
    return f;
  }

  private void a(double paramDouble1, double paramDouble2, float paramFloat)
  {
    long l = new Date().getTime() / 1000L;
    double d1 = paramDouble1;
    double d2 = paramDouble2;
    Object localObject;
    if (paramDouble1 == 0.0D)
    {
      d1 = paramDouble1;
      d2 = paramDouble2;
      if (paramDouble2 == 0.0D)
      {
        localObject = f();
        if (localObject != null);
      }
    }
    do
    {
      return;
      paramDouble1 = ((Location)localObject).getLatitude();
      paramDouble2 = ((Location)localObject).getLongitude();
      d1 = paramDouble1;
      d2 = paramDouble2;
      if (paramDouble1 == 0.0D)
      {
        d1 = paramDouble1;
        d2 = paramDouble2;
        if (paramDouble2 == 0.0D)
        {
          b.a.a.d("获取经纬度信息失败", new Object[0]);
          return;
        }
      }
      b.a.a.a("processLocation:<%f, %f> accuracy:%f", new Object[] { Double.valueOf(d1), Double.valueOf(d2), Float.valueOf(paramFloat) });
      localObject = new Position(l, d1, d2);
      ((Position)localObject).f = paramFloat;
      k.a(this.b, "save_latest_location", ((Position)localObject).a());
    }
    while (this.a == null);
    this.a.a(new com.nut.blehunter.entity.b(d1, d2));
  }

  private void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      if (g.b(this.b))
        paramString = "network";
    while (true)
    {
      b.a.a.a("requestLocationUpdateGoogle provider=%s", new Object[] { paramString });
      try
      {
        if (this.d == null)
          this.d = ((LocationManager)this.b.getSystemService("location"));
        this.d.requestLocationUpdates(paramString, 5000L, 0.0F, this.e);
        this.h = paramString;
        this.g = true;
        return;
        if (f.a(this.b))
        {
          paramString = "gps";
        }
        else
        {
          b.a.a.d("GPS或网络为开启，请求定位失败", new Object[0]);
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
    }
  }

  private void a(String paramString, double paramDouble1, double paramDouble2)
  {
    new com.nut.blehunter.b.b(this.b, paramDouble1, paramDouble2, new q(this, paramString));
  }

  private void e()
  {
    if (!f.a(this.b))
    {
      Position localPosition2 = k.a(this.b);
      Position localPosition1 = localPosition2;
      if (localPosition2 == null)
        localPosition1 = new Position(0L, 0.0D, 0.0D);
      a(localPosition1.d, localPosition1.c, localPosition1.f);
      d();
      return;
    }
    a("gps");
    this.c.postDelayed(this, 20000L);
  }

  private Location f()
  {
    this.d = ((LocationManager)this.b.getSystemService("location"));
    Object localObject2 = this.d.getProviders(true);
    Object localObject1 = null;
    Iterator localIterator = ((List)localObject2).iterator();
    Location localLocation;
    while (true)
      if (localIterator.hasNext())
      {
        localObject2 = (String)localIterator.next();
        localLocation = this.d.getLastKnownLocation((String)localObject2);
        if (localLocation != null)
        {
          localObject2 = localLocation;
          if (localObject1 != null)
            if (localLocation.getAccuracy() >= localObject1.getAccuracy())
              break label96;
        }
      }
    label96: for (localObject2 = localLocation; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      return localObject1;
    }
  }

  public final void a(FindLocation paramFindLocation)
  {
    if ((paramFindLocation == null) || (this.i == null))
    {
      b.a.a.d("params is null", new Object[0]);
      return;
    }
    this.i.put(paramFindLocation.b.a, paramFindLocation);
    h.b().a(paramFindLocation);
    double d1 = paramFindLocation.b.d;
    double d2 = paramFindLocation.b.c;
    a(paramFindLocation.b.a, Double.valueOf(d1).doubleValue(), Double.valueOf(d2).doubleValue());
  }

  public final void a(com.nut.blehunter.ui.b.o paramo)
  {
    this.a = paramo;
    if (!this.g)
    {
      b.a.a.b("requestLocation start", new Object[0]);
      a("network");
      this.c.postDelayed(this, 20000L);
    }
  }

  public final boolean a(double paramDouble1, double paramDouble2)
  {
    if ((paramDouble2 > 72.004000000000005D) && (paramDouble2 < 137.8347D) && (paramDouble1 > 0.8293D) && (paramDouble1 < 55.827100000000002D))
      return com.bingerz.android.a.a.a(this.b, paramDouble1, paramDouble2);
    return false;
  }

  public final boolean b()
  {
    Position localPosition = k.a(this.b);
    if (localPosition == null);
    while ((c.a() - localPosition.e > 120L) || (this.a == null))
      return false;
    this.a.a(new com.nut.blehunter.entity.b(localPosition.d, localPosition.c));
    return true;
  }

  public final boolean c()
  {
    Object localObject = k.a(this.b);
    double d2;
    double d1;
    if (localObject != null)
    {
      d2 = ((Position)localObject).d;
      d1 = ((Position)localObject).c;
    }
    while (true)
    {
      if ((d2 == 0.0D) && (d1 == 0.0D))
      {
        localObject = m.a().b();
        if ((localObject == null) || (!((User)localObject).a(this.b)));
      }
      while (!a(d2, d1))
      {
        return true;
        localObject = f();
        if (localObject == null)
          break label104;
        d2 = ((Location)localObject).getLatitude();
        d1 = ((Location)localObject).getLongitude();
        break;
        return false;
      }
      return false;
      label104: d1 = 0.0D;
      d2 = 0.0D;
    }
  }

  public final void d()
  {
    try
    {
      this.c.removeCallbacks(this);
      label8: if ((this.d != null) && (this.e != null))
      {
        this.d.removeUpdates(this.e);
        this.d = null;
      }
      this.g = false;
      return;
    }
    catch (Exception localException)
    {
      break label8;
    }
  }

  public final void run()
  {
    if ((!TextUtils.isEmpty(this.h)) && (this.h.equals("network")))
    {
      e();
      return;
    }
    if ((!TextUtils.isEmpty(this.h)) && (this.h.equals("gps")))
    {
      Position localPosition2 = k.a(this.b);
      Position localPosition1 = localPosition2;
      if (localPosition2 == null)
        localPosition1 = new Position(0L, 0.0D, 0.0D);
      a(localPosition1.d, localPosition1.c, localPosition1.f);
    }
    d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.o
 * JD-Core Version:    0.6.2
 */