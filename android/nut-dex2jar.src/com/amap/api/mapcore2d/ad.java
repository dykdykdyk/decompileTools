package com.amap.api.mapcore2d;

import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.amap.api.maps2d.AMap.CancelableCallback;
import com.amap.api.maps2d.AMap.InfoWindowAdapter;
import com.amap.api.maps2d.AMap.OnCacheRemoveListener;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnInfoWindowClickListener;
import com.amap.api.maps2d.AMap.OnMapClickListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMapLongClickListener;
import com.amap.api.maps2d.AMap.OnMapScreenShotListener;
import com.amap.api.maps2d.AMap.OnMapTouchListener;
import com.amap.api.maps2d.AMap.OnMarkerClickListener;
import com.amap.api.maps2d.AMap.OnMarkerDragListener;
import com.amap.api.maps2d.AMap.OnMyLocationChangeListener;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.util.List;

public abstract interface ad
{
  public abstract void Q();

  public abstract List<Marker> R()
    throws RemoteException;

  public abstract void S()
    throws RemoteException;

  public abstract ae a(CircleOptions paramCircleOptions)
    throws RemoteException;

  public abstract af a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException;

  public abstract al a(PolygonOptions paramPolygonOptions)
    throws RemoteException;

  public abstract am a(PolylineOptions paramPolylineOptions)
    throws RemoteException;

  public abstract Marker a(MarkerOptions paramMarkerOptions)
    throws RemoteException;

  public abstract Text a(TextOptions paramTextOptions)
    throws RemoteException;

  public abstract TileOverlay a(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException;

  public abstract void a(double paramDouble1, double paramDouble2, x paramx);

  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt1, int paramInt2, x paramx);

  public abstract void a(Location paramLocation);

  public abstract void a(r paramr)
    throws RemoteException;

  public abstract void a(r paramr, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;

  public abstract void a(r paramr, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;

  public abstract void a(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException;

  public abstract void a(AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
    throws RemoteException;

  public abstract void a(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException;

  public abstract void a(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMapScreenShotListener paramOnMapScreenShotListener);

  public abstract void a(AMap.OnMapTouchListener paramOnMapTouchListener)
    throws RemoteException;

  public abstract void a(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException;

  public abstract void a(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException;

  public abstract void a(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
    throws RemoteException;

  public abstract void a(LocationSource paramLocationSource)
    throws RemoteException;

  public abstract void a(MyLocationStyle paramMyLocationStyle)
    throws RemoteException;

  public abstract void a(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a(String paramString)
    throws RemoteException;

  public abstract int b();

  public abstract bi b(MarkerOptions paramMarkerOptions)
    throws RemoteException;

  public abstract void b(double paramDouble1, double paramDouble2, ak paramak);

  public abstract void b(float paramFloat)
    throws RemoteException;

  public abstract void b(int paramInt);

  public abstract void b(r paramr)
    throws RemoteException;

  public abstract void b(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean b(String paramString);

  public abstract int c();

  public abstract void c(int paramInt);

  public abstract void c(String paramString)
    throws RemoteException;

  public abstract void c(boolean paramBoolean)
    throws RemoteException;

  public abstract View d()
    throws RemoteException;

  public abstract void d(boolean paramBoolean);

  public abstract float e();

  public abstract void e(boolean paramBoolean);

  public abstract CameraPosition f()
    throws RemoteException;

  public abstract void f(boolean paramBoolean);

  public abstract float g();

  public abstract void g(boolean paramBoolean);

  public abstract float h();

  public abstract void i()
    throws RemoteException;

  public abstract void j()
    throws RemoteException;

  public abstract int k()
    throws RemoteException;

  public abstract boolean l()
    throws RemoteException;

  public abstract boolean m()
    throws RemoteException;

  public abstract Location o()
    throws RemoteException;

  public abstract ar p()
    throws RemoteException;

  public abstract an q()
    throws RemoteException;

  public abstract bs r()
    throws RemoteException;

  public abstract void u();

  public abstract float v();

  public abstract void x();

  public abstract void y();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ad
 * JD-Core Version:    0.6.2
 */