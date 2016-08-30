package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.am;
import com.amap.api.mapcore2d.cz;
import java.util.List;

public class Polyline
{
  private final am a;

  public Polyline(am paramam)
  {
    this.a = paramam;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polyline));
    while (true)
    {
      return false;
      try
      {
        if (this.a != null)
        {
          boolean bool = this.a.a(((Polyline)paramObject).a);
          return bool;
        }
      }
      catch (RemoteException paramObject)
      {
        cz.a(paramObject, "Polyline", "equals");
      }
    }
    throw new RuntimeRemoteException(paramObject);
  }

  public int getColor()
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
      cz.a(localRemoteException, "Polyline", "getColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public String getId()
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
      cz.a(localRemoteException, "Polyline", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public List<LatLng> getPoints()
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
      cz.a(localRemoteException, "Polyline", "getPoints");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public float getWidth()
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
      cz.a(localRemoteException, "Polyline", "getWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public float getZIndex()
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
      cz.a(localRemoteException, "Polyline", "getZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public int hashCode()
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
      cz.a(localRemoteException, "Polyline", "hashCode");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public boolean isDottedLine()
  {
    if (this.a == null)
      return false;
    return this.a.j();
  }

  public boolean isGeodesic()
  {
    if (this.a == null)
      return false;
    return this.a.k();
  }

  public boolean isVisible()
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
      cz.a(localRemoteException, "Polyline", "isVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void remove()
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
      cz.a(localRemoteException, "Polyline", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void setColor(int paramInt)
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
      cz.a(localRemoteException, "Polyline", "setColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void setDottedLine(boolean paramBoolean)
  {
    if (this.a == null)
      return;
    this.a.b(paramBoolean);
  }

  public void setGeodesic(boolean paramBoolean)
  {
    try
    {
      if (this.a == null)
        return;
      if (this.a.k() != paramBoolean)
      {
        List localList = getPoints();
        this.a.c(paramBoolean);
        setPoints(localList);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Polyline", "setGeodesic");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void setPoints(List<LatLng> paramList)
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
      cz.a(paramList, "Polyline", "setPoints");
    }
    throw new RuntimeRemoteException(paramList);
  }

  public void setVisible(boolean paramBoolean)
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
      cz.a(localRemoteException, "Polyline", "setVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void setWidth(float paramFloat)
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
      cz.a(localRemoteException, "Polyline", "setWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public void setZIndex(float paramFloat)
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
      cz.a(localRemoteException, "Polyline", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.Polyline
 * JD-Core Version:    0.6.2
 */