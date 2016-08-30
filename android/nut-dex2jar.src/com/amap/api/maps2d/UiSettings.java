package com.amap.api.maps2d;

import android.os.RemoteException;
import com.amap.api.mapcore2d.ar;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public final class UiSettings
{
  private final ar a;

  UiSettings(ar paramar)
  {
    this.a = paramar;
  }

  public final int getLogoPosition()
  {
    try
    {
      int i = this.a.g();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "getLogoPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final int getZoomPosition()
  {
    try
    {
      int i = this.a.h();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "getZoomPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isCompassEnabled()
  {
    try
    {
      boolean bool = this.a.c();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isCompassEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isMyLocationButtonEnabled()
  {
    try
    {
      boolean bool = this.a.d();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isMyLocationButtonEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isScaleControlsEnabled()
  {
    try
    {
      boolean bool = this.a.a();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isScaleControlsEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isScrollGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.e();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isScrollGestureEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isZoomControlsEnabled()
  {
    try
    {
      boolean bool = this.a.b();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isZoomControlsEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = this.a.f();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "isZoomGesturesEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setAllGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.g(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setAllGesturesEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setCompassEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setCompassEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setLogoPosition(int paramInt)
  {
    try
    {
      this.a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setLogoPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setMyLocationButtonEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.d(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setMyLocationButtonEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setScaleControlsEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.a(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setScaleControlsEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setScrollGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.e(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setScrollGesturesEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setZoomControlsEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.b(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setZoomControlsEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      this.a.f(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setZoomGesturesEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setZoomPosition(int paramInt)
  {
    try
    {
      this.a.b(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "UiSettings", "setZoomPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.UiSettings
 * JD-Core Version:    0.6.2
 */