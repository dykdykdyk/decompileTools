package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.al;
import com.amap.api.mapcore2d.cz;
import java.util.List;

public final class Polygon
{
  private al a;

  public Polygon(al paramal)
  {
    this.a = paramal;
  }

  public final boolean contains(LatLng paramLatLng)
  {
    try
    {
      if (this.a == null)
        return false;
      boolean bool = this.a.a(paramLatLng);
      return bool;
    }
    catch (RemoteException paramLatLng)
    {
      cz.a(paramLatLng, "Polygon", "contains");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polygon));
    while (true)
    {
      return false;
      try
      {
        if (this.a != null)
        {
          boolean bool = this.a.a(((Polygon)paramObject).a);
          return bool;
        }
      }
      catch (RemoteException paramObject)
      {
        cz.a(paramObject, "Polygon", "equeals");
      }
    }
    return false;
  }

  public final int getFillColor()
  {
    try
    {
      if (this.a == null)
        return 0;
      int i = this.a.h();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Polygon", "getFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final String getId()
  {
    try
    {
      if (this.a == null)
        return null;
      String str = this.a.c();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Polygon", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final List<LatLng> getPoints()
  {
    try
    {
      if (this.a == null)
        return null;
      List localList = this.a.i();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Polygon", "getPoints");
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
      cz.a(localRemoteException, "Polygon", "getStrokeColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getStrokeWidth()
  {
    try
    {
      if (this.a == null)
        return 0.0F;
      float f = this.a.g();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Polygon", "getStrokeWidth");
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
      cz.a(localRemoteException, "Polygon", "getZIndex");
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
      cz.a(localRemoteException, "Polygon", "hashCode");
    }
    return super.hashCode();
  }

  public final boolean isVisible()
  {
    try
    {
      if (this.a == null)
        return true;
      boolean bool = this.a.e();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
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
      cz.a(localRemoteException, "Polygon", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setFillColor(int paramInt)
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
      cz.a(localRemoteException, "Polygon", "setFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setPoints(List<LatLng> paramList)
  {
    try
    {
      if (this.a == null)
        return;
      this.a.a(paramList);
      return;
    }
    catch (RemoteException paramList)
    {
      cz.a(paramList, "Polygon", "setPoints");
    }
    throw new RuntimeRemoteException(paramList);
  }

  public final void setStrokeColor(int paramInt)
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
      cz.a(localRemoteException, "Polygon", "setStrokeColor");
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
      cz.a(localRemoteException, "Polygon", "setStrokeWidth");
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
      cz.a(localRemoteException, "Polygon", "setVisible");
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
      cz.a(localRemoteException, "Polygon", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.Polygon
 * JD-Core Version:    0.6.2
 */