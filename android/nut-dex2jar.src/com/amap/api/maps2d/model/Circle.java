package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.ae;
import com.amap.api.mapcore2d.cz;

public final class Circle
{
  private final ae a;

  public Circle(ae paramae)
  {
    this.a = paramae;
  }

  public final boolean contains(LatLng paramLatLng)
  {
    try
    {
      if (this.a == null)
        return false;
      boolean bool = this.a.b(paramLatLng);
      return bool;
    }
    catch (RemoteException paramLatLng)
    {
      cz.a(paramLatLng, "Circle", "contains");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Circle));
    while (true)
    {
      return false;
      try
      {
        if (this.a != null)
        {
          boolean bool = this.a.a(((Circle)paramObject).a);
          return bool;
        }
      }
      catch (RemoteException paramObject)
      {
        cz.a(paramObject, "Circle", "equals");
      }
    }
    throw new RuntimeRemoteException(paramObject);
  }

  public final LatLng getCenter()
  {
    try
    {
      if (this.a == null)
        return null;
      LatLng localLatLng = this.a.g();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getCenter");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final int getFillColor()
  {
    try
    {
      if (this.a == null)
        return 0;
      int i = this.a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final String getId()
  {
    try
    {
      if (this.a == null)
        return "";
      String str = this.a.c();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final double getRadius()
  {
    try
    {
      if (this.a == null)
        return 0.0D;
      double d = this.a.h();
      return d;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getRadius");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final int getStrokeColor()
  {
    try
    {
      if (this.a == null)
        return 0;
      int i = this.a.j();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getStrokeColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getStrokeWidth()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.i();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getStrokeWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getZIndex()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.d();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "getZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final int hashCode()
  {
    try
    {
      if (this.a == null)
        return 0;
      int i = this.a.f();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "hashCode");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isVisible()
  {
    try
    {
      if (this.a == null)
        return false;
      boolean bool = this.a.e();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "isVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void remove()
  {
    try
    {
      if (this.a == null)
        return;
      this.a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setCenter(LatLng paramLatLng)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      cz.a(paramLatLng, "Circle", "setCenter");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }

  public final void setFillColor(int paramInt)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.b(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setRadius(double paramDouble)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramDouble);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setRadius");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setStrokeColor(int paramInt)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setStrokeColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setStrokeWidth(float paramFloat)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.b(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setStrokeWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setVisible(boolean paramBoolean)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setZIndex(float paramFloat)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Circle", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.Circle
 * JD-Core Version:    0.6.2
 */