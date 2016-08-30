package com.amap.api.maps2d;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.amap.api.mapcore2d.ad;
import com.amap.api.mapcore2d.ag;
import com.amap.api.mapcore2d.ba;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public class MapView extends FrameLayout
{
  private ag a;
  private AMap b;

  public MapView(Context paramContext)
  {
    super(paramContext);
    getMapFragmentDelegate().a(paramContext);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    getMapFragmentDelegate().a(paramContext);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    getMapFragmentDelegate().a(paramContext);
  }

  public MapView(Context paramContext, AMapOptions paramAMapOptions)
  {
    super(paramContext);
    getMapFragmentDelegate().a(paramContext);
    getMapFragmentDelegate().a(paramAMapOptions);
  }

  public AMap getMap()
  {
    Object localObject = getMapFragmentDelegate();
    if (localObject == null);
    while (true)
    {
      return null;
      try
      {
        localObject = ((ag)localObject).a();
        if (localObject == null)
          continue;
        if (this.b == null)
          this.b = new AMap((ad)localObject);
        return this.b;
      }
      catch (RemoteException localRemoteException)
      {
        cz.a(localRemoteException, "MapView", "getMap");
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }

  protected ag getMapFragmentDelegate()
  {
    if (this.a == null)
      this.a = new ba();
    return this.a;
  }

  public final void onCreate(Bundle paramBundle)
  {
    try
    {
      addView(getMapFragmentDelegate().a(null, null, paramBundle), new ViewGroup.LayoutParams(-1, -1));
      return;
    }
    catch (RemoteException paramBundle)
    {
      cz.a(paramBundle, "MapView", "onCreate");
      return;
    }
    catch (Throwable paramBundle)
    {
      cz.a(paramBundle, "MapView", "onCreate");
    }
  }

  public final void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MapView", "onDestroy");
    }
  }

  public final void onLowMemory()
  {
    try
    {
      getMapFragmentDelegate().f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MapView", "onLowMemory");
    }
  }

  public final void onPause()
  {
    try
    {
      getMapFragmentDelegate().c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MapView", "onPause");
    }
  }

  public final void onResume()
  {
    try
    {
      getMapFragmentDelegate().b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "MapView", "onResume");
    }
  }

  public final void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      cz.a(paramBundle, "MapView", "onSaveInstanceState");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.MapView
 * JD-Core Version:    0.6.2
 */