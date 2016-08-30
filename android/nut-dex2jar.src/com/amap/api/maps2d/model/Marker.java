package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.ah;
import com.amap.api.mapcore2d.cz;
import java.util.ArrayList;

public final class Marker
{
  ah a;

  public Marker(ah paramah)
  {
    this.a = paramah;
  }

  public Marker(MarkerOptions paramMarkerOptions)
  {
  }

  public final void destroy()
  {
    try
    {
      if (this.a != null)
        this.a.l();
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "Marker", "destroy");
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Marker))
      return false;
    return this.a.a(((Marker)paramObject).a);
  }

  public final ArrayList<BitmapDescriptor> getIcons()
  {
    try
    {
      ArrayList localArrayList = this.a.p();
      return localArrayList;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Marker", "getIcons");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final String getId()
  {
    return this.a.d();
  }

  public final Object getObject()
  {
    if (this.a != null)
      return this.a.u();
    return null;
  }

  public final int getPeriod()
  {
    try
    {
      int i = this.a.o();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Marker", "getPeriod");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final LatLng getPosition()
  {
    return this.a.t();
  }

  public final String getSnippet()
  {
    return this.a.g();
  }

  public final String getTitle()
  {
    return this.a.f();
  }

  public final float getZIndex()
  {
    return this.a.r();
  }

  public final int hashCode()
  {
    return this.a.m();
  }

  public final void hideInfoWindow()
  {
    this.a.j();
  }

  public final boolean isDraggable()
  {
    return this.a.h();
  }

  public final boolean isInfoWindowShown()
  {
    return this.a.k();
  }

  public final boolean isVisible()
  {
    return this.a.s();
  }

  public final void remove()
  {
    try
    {
      this.a.a();
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "Marker", "remove");
    }
  }

  public final void setAnchor(float paramFloat1, float paramFloat2)
  {
    this.a.a(paramFloat1, paramFloat2);
  }

  public final void setDraggable(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public final void setIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    if (paramBitmapDescriptor != null)
      this.a.a(paramBitmapDescriptor);
  }

  public final void setIcons(ArrayList<BitmapDescriptor> paramArrayList)
  {
    try
    {
      this.a.a(paramArrayList);
      return;
    }
    catch (RemoteException paramArrayList)
    {
      cz.a(paramArrayList, "Marker", "setIcons");
    }
    throw new RuntimeRemoteException(paramArrayList);
  }

  public final void setObject(Object paramObject)
  {
    this.a.a(paramObject);
  }

  public final void setPeriod(int paramInt)
  {
    try
    {
      this.a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Marker", "setPeriod");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setPosition(LatLng paramLatLng)
  {
    this.a.b(paramLatLng);
  }

  public final void setPositionByPixels(int paramInt1, int paramInt2)
  {
    try
    {
      this.a.a(paramInt1, paramInt2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Marker", "setPositionByPixels");
      localRemoteException.printStackTrace();
    }
  }

  public final void setRotateAngle(float paramFloat)
  {
    try
    {
      this.a.a(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Marker", "setRotateAngle");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setSnippet(String paramString)
  {
    this.a.b(paramString);
  }

  public final void setTitle(String paramString)
  {
    this.a.a(paramString);
  }

  public final void setVisible(boolean paramBoolean)
  {
    this.a.b(paramBoolean);
  }

  public final void setZIndex(float paramFloat)
  {
    this.a.b(paramFloat);
  }

  public final void showInfoWindow()
  {
    if (this.a != null)
      this.a.i();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.Marker
 * JD-Core Version:    0.6.2
 */