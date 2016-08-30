package com.amap.api.mapcore2d;

import android.graphics.Color;
import android.os.RemoteException;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;

class bo
{
  private ad a;
  private ah b;
  private ae c;
  private MyLocationStyle d;
  private LatLng e;
  private double f;

  bo(ad paramad)
  {
    this.a = paramad;
  }

  private void b()
  {
    if (this.d == null)
    {
      c();
      return;
    }
    d();
  }

  private void c()
  {
    try
    {
      this.c = this.a.a(new CircleOptions().strokeWidth(1.0F).fillColor(Color.argb(20, 0, 0, 180)).strokeColor(Color.argb(255, 0, 0, 220)).center(new LatLng(0.0D, 0.0D)));
      this.c.a(200.0D);
      this.b = this.a.b(new MarkerOptions().anchor(0.5F, 0.5F).icon(BitmapDescriptorFactory.fromAsset(ao.a.c.name() + ".png")).position(new LatLng(0.0D, 0.0D)));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MyLocationOverlay", "defaultLocStyle");
    }
  }

  private void d()
  {
    if (this.d == null);
    while (true)
    {
      return;
      try
      {
        this.c = this.a.a(new CircleOptions().strokeWidth(this.d.getStrokeWidth()).fillColor(this.d.getRadiusFillColor()).strokeColor(this.d.getStrokeColor()).center(new LatLng(0.0D, 0.0D)));
        if (this.e != null)
          this.c.a(this.e);
        this.c.a(this.f);
        this.b = this.a.b(new MarkerOptions().anchor(this.d.getAnchorU(), this.d.getAnchorV()).icon(this.d.getMyLocationIcon()).position(new LatLng(0.0D, 0.0D)));
        if (this.e != null)
        {
          this.b.b(this.e);
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }
  }

  public void a()
    throws RemoteException
  {
    if (this.c != null)
    {
      this.a.a(this.c.c());
      this.c = null;
    }
    if (this.b != null)
    {
      this.a.b(this.b.d());
      this.b = null;
    }
  }

  public void a(float paramFloat)
  {
    if (this.b != null);
    try
    {
      this.b.a(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MyLocationOverlay", "setRotateAngle");
    }
  }

  public void a(LatLng paramLatLng, double paramDouble)
  {
    this.e = paramLatLng;
    this.f = paramDouble;
    if ((this.b == null) && (this.c == null))
      b();
    if (this.b == null);
    while (true)
    {
      return;
      this.b.b(paramLatLng);
      try
      {
        this.c.a(paramLatLng);
        if (paramDouble != -1.0D)
        {
          this.c.a(paramDouble);
          return;
        }
      }
      catch (RemoteException paramLatLng)
      {
        cz.a(paramLatLng, "MyLocationOverlay", "setCentAndRadius");
      }
    }
  }

  public void a(MyLocationStyle paramMyLocationStyle)
  {
    this.d = paramMyLocationStyle;
    if ((this.b == null) && (this.c == null))
      return;
    try
    {
      a();
      d();
      return;
    }
    catch (RemoteException paramMyLocationStyle)
    {
      while (true)
        cz.a(paramMyLocationStyle, "MyLocationOverlay", "setMyLocationStyle");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bo
 * JD-Core Version:    0.6.2
 */