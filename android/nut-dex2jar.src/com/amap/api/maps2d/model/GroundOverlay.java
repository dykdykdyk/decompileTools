package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.af;
import com.amap.api.mapcore2d.cz;

public final class GroundOverlay
{
  private af a;

  public GroundOverlay(af paramaf)
  {
    this.a = paramaf;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GroundOverlay))
      return false;
    try
    {
      throw new RemoteException();
    }
    catch (RemoteException paramObject)
    {
      cz.a(paramObject, "GroundOverlay", "equals");
    }
    throw new RuntimeRemoteException(paramObject);
  }

  public final float getBearing()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.m();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "getBearing");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final LatLngBounds getBounds()
  {
    try
    {
      if (this.a == null)
        return null;
      LatLngBounds localLatLngBounds = this.a.k();
      return localLatLngBounds;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "getBounds");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getHeight()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.j();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "getHeight");
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
      cz.a(localRemoteException, "GroundOverlay", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final LatLng getPosition()
  {
    try
    {
      if (this.a == null)
        return null;
      LatLng localLatLng = this.a.h();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "getPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getTransparency()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.n();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "getTransparency");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getWidth()
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
      cz.a(localRemoteException, "GroundOverlay", "getWidth");
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
      cz.a(localRemoteException, "GroundOverlay", "getZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final int hashCode()
  {
    if (this.a == null)
      return 0;
    return this.a.hashCode();
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
      cz.a(localRemoteException, "GroundOverlay", "isVisible");
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
      cz.a(localRemoteException, "GroundOverlay", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setBearing(float paramFloat)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.c(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "setBearing");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setDimensions(float paramFloat)
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
      cz.a(localRemoteException, "GroundOverlay", "setDimensions");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setDimensions(float paramFloat1, float paramFloat2)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "setDimensions");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setImage(BitmapDescriptor paramBitmapDescriptor)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramBitmapDescriptor);
      return;
    }
    catch (RemoteException paramBitmapDescriptor)
    {
      cz.a(paramBitmapDescriptor, "GroundOverlay", "setImage");
    }
    throw new RuntimeRemoteException(paramBitmapDescriptor);
  }

  public final void setPosition(LatLng paramLatLng)
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
      cz.a(paramLatLng, "GroundOverlay", "setPosition");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }

  public final void setPositionFromBounds(LatLngBounds paramLatLngBounds)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramLatLngBounds);
      return;
    }
    catch (RemoteException paramLatLngBounds)
    {
      cz.a(paramLatLngBounds, "GroundOverlay", "setPositionFromBounds");
    }
    throw new RuntimeRemoteException(paramLatLngBounds);
  }

  public final void setTransparency(float paramFloat)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.d(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "GroundOverlay", "setTransparency");
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
      cz.a(localRemoteException, "GroundOverlay", "setVisible");
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
      cz.a(localRemoteException, "GroundOverlay", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.GroundOverlay
 * JD-Core Version:    0.6.2
 */