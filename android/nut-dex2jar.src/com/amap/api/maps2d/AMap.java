package com.amap.api.maps2d;

import android.location.Location;
import android.os.RemoteException;
import com.amap.api.mapcore2d.ad;
import com.amap.api.mapcore2d.cw;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlay;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.Polygon;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.Polyline;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.RuntimeRemoteException;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.util.List;

public final class AMap
{
  public static final String CHINESE = "zh_cn";
  public static final String ENGLISH = "en";
  public static final int MAP_TYPE_NORMAL = 1;
  public static final int MAP_TYPE_SATELLITE = 2;
  private final ad a;
  private UiSettings b;
  private Projection c;

  protected AMap(ad paramad)
  {
    this.a = paramad;
  }

  private ad a()
  {
    return this.a;
  }

  public static String getVersion()
  {
    return "2.8.0";
  }

  public final Circle addCircle(CircleOptions paramCircleOptions)
  {
    try
    {
      paramCircleOptions = new Circle(a().a(paramCircleOptions));
      return paramCircleOptions;
    }
    catch (RemoteException paramCircleOptions)
    {
      cz.a(paramCircleOptions, "AMap", "addCircle");
    }
    throw new RuntimeRemoteException(paramCircleOptions);
  }

  public final GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
  {
    try
    {
      paramGroundOverlayOptions = new GroundOverlay(a().a(paramGroundOverlayOptions));
      return paramGroundOverlayOptions;
    }
    catch (RemoteException paramGroundOverlayOptions)
    {
      cz.a(paramGroundOverlayOptions, "AMap", "addGroundOverlay");
    }
    throw new RuntimeRemoteException(paramGroundOverlayOptions);
  }

  public final Marker addMarker(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a().a(paramMarkerOptions);
      return paramMarkerOptions;
    }
    catch (RemoteException paramMarkerOptions)
    {
      cz.a(paramMarkerOptions, "AMap", "addMarker");
    }
    throw new RuntimeRemoteException(paramMarkerOptions);
  }

  public final Polygon addPolygon(PolygonOptions paramPolygonOptions)
  {
    try
    {
      paramPolygonOptions = new Polygon(a().a(paramPolygonOptions));
      return paramPolygonOptions;
    }
    catch (RemoteException paramPolygonOptions)
    {
      cz.a(paramPolygonOptions, "AMap", "addPolygon");
    }
    throw new RuntimeRemoteException(paramPolygonOptions);
  }

  public final Polyline addPolyline(PolylineOptions paramPolylineOptions)
  {
    try
    {
      paramPolylineOptions = new Polyline(a().a(paramPolylineOptions));
      return paramPolylineOptions;
    }
    catch (RemoteException paramPolylineOptions)
    {
      cz.a(paramPolylineOptions, "AMap", "addPolyline");
    }
    throw new RuntimeRemoteException(paramPolylineOptions);
  }

  public final Text addText(TextOptions paramTextOptions)
  {
    try
    {
      paramTextOptions = this.a.a(paramTextOptions);
      return paramTextOptions;
    }
    catch (RemoteException paramTextOptions)
    {
      cz.a(paramTextOptions, "AMap", "addText");
    }
    throw new RuntimeRemoteException(paramTextOptions);
  }

  public final TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
  {
    try
    {
      paramTileOverlayOptions = a().a(paramTileOverlayOptions);
      return paramTileOverlayOptions;
    }
    catch (RemoteException paramTileOverlayOptions)
    {
      cz.a(paramTileOverlayOptions, "AMap", "addtileOverlay");
    }
    throw new RuntimeRemoteException(paramTileOverlayOptions);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().b(paramCameraUpdate.a());
      return;
    }
    catch (RemoteException paramCameraUpdate)
    {
      cz.a(paramCameraUpdate, "AMap", "animateCamera");
    }
    throw new RuntimeRemoteException(paramCameraUpdate);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate, long paramLong, AMap.CancelableCallback paramCancelableCallback)
  {
    boolean bool;
    if (paramLong > 0L)
      bool = true;
    try
    {
      while (true)
      {
        cw.b(bool, "durationMs must be positive");
        a().a(paramCameraUpdate.a(), paramLong, paramCancelableCallback);
        return;
        bool = false;
      }
    }
    catch (RemoteException paramCameraUpdate)
    {
      cz.a(paramCameraUpdate, "AMap", "animateCamera");
    }
    throw new RuntimeRemoteException(paramCameraUpdate);
  }

  public final void animateCamera(CameraUpdate paramCameraUpdate, AMap.CancelableCallback paramCancelableCallback)
  {
    try
    {
      a().a(paramCameraUpdate.a(), paramCancelableCallback);
      return;
    }
    catch (RemoteException paramCameraUpdate)
    {
      cz.a(paramCameraUpdate, "AMap", "animateCamera");
    }
    throw new RuntimeRemoteException(paramCameraUpdate);
  }

  public final void clear()
  {
    try
    {
      if (a() != null)
        a().j();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "clear");
      throw new RuntimeRemoteException(localRemoteException);
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "AMap", "clear");
    }
  }

  public final CameraPosition getCameraPosition()
  {
    try
    {
      CameraPosition localCameraPosition = a().f();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getCameraPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final List<Marker> getMapScreenMarkers()
  {
    try
    {
      List localList = this.a.R();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getMapScreenaMarkers");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void getMapScreenShot(AMap.OnMapScreenShotListener paramOnMapScreenShotListener)
  {
    a().a(paramOnMapScreenShotListener);
    invalidate();
  }

  public final int getMapType()
  {
    try
    {
      int i = a().k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getMapType");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getMaxZoomLevel()
  {
    return a().g();
  }

  public final float getMinZoomLevel()
  {
    return a().h();
  }

  public final Location getMyLocation()
  {
    try
    {
      Location localLocation = a().o();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getMyLocation");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final Projection getProjection()
  {
    try
    {
      if (this.c == null)
        this.c = new Projection(a().q());
      Projection localProjection = this.c;
      return localProjection;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getProjection");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final float getScalePerPixel()
  {
    return a().v();
  }

  public final UiSettings getUiSettings()
  {
    try
    {
      if (this.b == null)
        this.b = new UiSettings(a().p());
      UiSettings localUiSettings = this.b;
      return localUiSettings;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "getUiSettings");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void invalidate()
  {
    postInvalidate();
  }

  public final boolean isMyLocationEnabled()
  {
    try
    {
      boolean bool = a().m();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "isMyLocationEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean isTrafficEnabled()
  {
    try
    {
      boolean bool = a().l();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "isTrafficEnable");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void moveCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().a(paramCameraUpdate.a());
      return;
    }
    catch (RemoteException paramCameraUpdate)
    {
      cz.a(paramCameraUpdate, "AMap", "moveCamera");
    }
    throw new RuntimeRemoteException(paramCameraUpdate);
  }

  public final void postInvalidate()
  {
    a().Q();
  }

  public final void removecache()
  {
    try
    {
      this.a.S();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "removecache");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void removecache(AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
  {
    try
    {
      this.a.a(paramOnCacheRemoveListener);
      return;
    }
    catch (RemoteException paramOnCacheRemoveListener)
    {
      cz.a(paramOnCacheRemoveListener, "AMap", "removecache");
    }
    throw new RuntimeRemoteException(paramOnCacheRemoveListener);
  }

  public final void setInfoWindowAdapter(AMap.InfoWindowAdapter paramInfoWindowAdapter)
  {
    try
    {
      a().a(paramInfoWindowAdapter);
      return;
    }
    catch (RemoteException paramInfoWindowAdapter)
    {
      cz.a(paramInfoWindowAdapter, "AMap", "setInfoWindowAdapter");
    }
    throw new RuntimeRemoteException(paramInfoWindowAdapter);
  }

  public final void setLocationSource(LocationSource paramLocationSource)
  {
    try
    {
      a().a(paramLocationSource);
      return;
    }
    catch (RemoteException paramLocationSource)
    {
      cz.a(paramLocationSource, "AMap", "setLocationSource");
    }
    throw new RuntimeRemoteException(paramLocationSource);
  }

  public final void setMapLanguage(String paramString)
  {
    try
    {
      this.a.c(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      cz.a(paramString, "AMap", "setMapLanguage");
    }
    throw new RuntimeRemoteException(paramString);
  }

  public final void setMapType(int paramInt)
  {
    try
    {
      a().a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "setMapType");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setMyLocationEnabled(boolean paramBoolean)
  {
    try
    {
      a().c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "setMyLocationEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setMyLocationRotateAngle(float paramFloat)
  {
    try
    {
      this.a.b(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "setMyLocationRoteteAngle");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void setMyLocationStyle(MyLocationStyle paramMyLocationStyle)
  {
    try
    {
      a().a(paramMyLocationStyle);
      return;
    }
    catch (RemoteException paramMyLocationStyle)
    {
      cz.a(paramMyLocationStyle, "AMap", "setMyLocationStyle");
    }
    throw new RuntimeRemoteException(paramMyLocationStyle);
  }

  public final void setOnCameraChangeListener(AMap.OnCameraChangeListener paramOnCameraChangeListener)
  {
    try
    {
      a().a(paramOnCameraChangeListener);
      return;
    }
    catch (RemoteException paramOnCameraChangeListener)
    {
      cz.a(paramOnCameraChangeListener, "AMap", "setOnCameraChangeListener");
    }
    throw new RuntimeRemoteException(paramOnCameraChangeListener);
  }

  public final void setOnInfoWindowClickListener(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
  {
    try
    {
      a().a(paramOnInfoWindowClickListener);
      return;
    }
    catch (RemoteException paramOnInfoWindowClickListener)
    {
      cz.a(paramOnInfoWindowClickListener, "AMap", "setOnInfoWindowClickListener");
    }
    throw new RuntimeRemoteException(paramOnInfoWindowClickListener);
  }

  public final void setOnMapClickListener(AMap.OnMapClickListener paramOnMapClickListener)
  {
    try
    {
      a().a(paramOnMapClickListener);
      return;
    }
    catch (RemoteException paramOnMapClickListener)
    {
      cz.a(paramOnMapClickListener, "AMap", "setOnMapClickListener");
    }
    throw new RuntimeRemoteException(paramOnMapClickListener);
  }

  public final void setOnMapLoadedListener(AMap.OnMapLoadedListener paramOnMapLoadedListener)
  {
    try
    {
      a().a(paramOnMapLoadedListener);
      return;
    }
    catch (RemoteException paramOnMapLoadedListener)
    {
      cz.a(paramOnMapLoadedListener, "AMap", "setOnMapLoadedListener");
    }
    throw new RuntimeRemoteException(paramOnMapLoadedListener);
  }

  public final void setOnMapLongClickListener(AMap.OnMapLongClickListener paramOnMapLongClickListener)
  {
    try
    {
      a().a(paramOnMapLongClickListener);
      return;
    }
    catch (RemoteException paramOnMapLongClickListener)
    {
      cz.a(paramOnMapLongClickListener, "AMap", "setOnMapLongClickListener");
    }
    throw new RuntimeRemoteException(paramOnMapLongClickListener);
  }

  public final void setOnMapTouchListener(AMap.OnMapTouchListener paramOnMapTouchListener)
  {
    try
    {
      this.a.a(paramOnMapTouchListener);
      return;
    }
    catch (RemoteException paramOnMapTouchListener)
    {
      cz.a(paramOnMapTouchListener, "AMap", "setOnMapTouchListener");
    }
    throw new RuntimeRemoteException(paramOnMapTouchListener);
  }

  public final void setOnMarkerClickListener(AMap.OnMarkerClickListener paramOnMarkerClickListener)
  {
    try
    {
      a().a(paramOnMarkerClickListener);
      return;
    }
    catch (RemoteException paramOnMarkerClickListener)
    {
      cz.a(paramOnMarkerClickListener, "AMap", "setOnMarkerClickListener");
    }
    throw new RuntimeRemoteException(paramOnMarkerClickListener);
  }

  public final void setOnMarkerDragListener(AMap.OnMarkerDragListener paramOnMarkerDragListener)
  {
    try
    {
      a().a(paramOnMarkerDragListener);
      return;
    }
    catch (RemoteException paramOnMarkerDragListener)
    {
      cz.a(paramOnMarkerDragListener, "AMap", "setOnMarkerDragListener");
    }
    throw new RuntimeRemoteException(paramOnMarkerDragListener);
  }

  public final void setOnMyLocationChangeListener(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    try
    {
      a().a(paramOnMyLocationChangeListener);
      return;
    }
    catch (RemoteException paramOnMyLocationChangeListener)
    {
      cz.a(paramOnMyLocationChangeListener, "AMap", "setOnMyLocaitonChangeListener");
    }
    throw new RuntimeRemoteException(paramOnMyLocationChangeListener);
  }

  public final void setTrafficEnabled(boolean paramBoolean)
  {
    try
    {
      a().b(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "setTradficEnabled");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void stopAnimation()
  {
    try
    {
      a().i();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "AMap", "stopAnimation");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.AMap
 * JD-Core Version:    0.6.2
 */