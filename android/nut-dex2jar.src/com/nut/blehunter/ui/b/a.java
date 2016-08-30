package com.nut.blehunter.ui.b;

import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.AMap.InfoWindowAdapter;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnInfoWindowClickListener;
import com.amap.api.maps2d.AMap.OnMapClickListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMarkerClickListener;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;
import com.amap.api.maps2d.MapView;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.overlay.PoiOverlay;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.amap.api.services.geocoder.RegeocodeQuery;
import com.amap.api.services.help.Inputtips;
import com.amap.api.services.poisearch.PoiResult;
import com.amap.api.services.poisearch.PoiSearch;
import com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener;
import com.amap.api.services.poisearch.PoiSearch.Query;
import com.nut.blehunter.entity.Nut;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a extends d
  implements AMapLocationListener, AMap.InfoWindowAdapter, AMap.OnCameraChangeListener, AMap.OnInfoWindowClickListener, AMap.OnMapClickListener, AMap.OnMapLoadedListener, AMap.OnMarkerClickListener, LocationSource, PoiSearch.OnPoiSearchListener
{
  private AMap m;
  private Circle n;
  private MapView o;
  private GeocodeSearch p;
  private PoiSearch.Query q;
  private AMapLocationClient r;
  private LocationSource.OnLocationChangedListener s;
  private Map<String, Marker> t = new HashMap();
  private AMapLocation u;

  private void a(CameraUpdate paramCameraUpdate, boolean paramBoolean)
  {
    if (this.m == null)
      return;
    if (paramBoolean)
    {
      this.m.animateCamera(paramCameraUpdate, 1000L, null);
      return;
    }
    this.m.moveCamera(paramCameraUpdate);
  }

  private static LatLng b(com.nut.blehunter.entity.b paramb)
  {
    return new LatLng(paramb.a, paramb.b);
  }

  private void c(String paramString, int paramInt)
  {
    if (getActivity() == null)
      return;
    switch (paramInt)
    {
    default:
      b.a.a.d(paramString + ":未知错误，请稍后重试!错误码为" + paramInt, new Object[0]);
      return;
    case 27:
      b.a.a.d(paramString + ":搜索失败,请检查网络连接！", new Object[0]);
      return;
    case 32:
    }
    b.a.a.d(paramString + ":key验证无效！", new Object[0]);
  }

  public final String a()
  {
    return a.class.getSimpleName();
  }

  public final String a(String paramString, com.nut.blehunter.entity.b paramb, int paramInt)
  {
    if (this.m == null)
    {
      b.a.a.d("addMarker params is error", new Object[0]);
      return null;
    }
    if (paramInt != 0);
    for (BitmapDescriptor localBitmapDescriptor = BitmapDescriptorFactory.fromResource(c(paramInt)); ; localBitmapDescriptor = BitmapDescriptorFactory.defaultMarker(0.0F))
    {
      MarkerOptions localMarkerOptions = new MarkerOptions();
      localMarkerOptions.position(b(paramb.a())).icon(localBitmapDescriptor).draggable(true);
      if (!TextUtils.isEmpty(paramString))
        localMarkerOptions.title(paramString);
      if (paramInt != 0)
        localMarkerOptions.anchor(0.5F, 0.5F);
      paramString = this.m.addMarker(localMarkerOptions);
      if (d(paramInt))
        paramString.showInfoWindow();
      if (this.t != null)
        this.t.put(paramString.getId(), paramString);
      return paramString.getId();
    }
  }

  public final String a(String paramString, com.nut.blehunter.entity.b paramb, int paramInt, Nut paramNut)
  {
    if ((this.m == null) || (paramNut == null) || (getActivity() == null))
    {
      b.a.a.d("addMarker params is error", new Object[0]);
      return null;
    }
    MarkerOptions localMarkerOptions = new MarkerOptions();
    localMarkerOptions.position(b(paramb.a())).icon(BitmapDescriptorFactory.fromView(a(getActivity(), paramInt, paramNut))).draggable(true);
    if (!TextUtils.isEmpty(paramString))
      localMarkerOptions.title(paramString);
    paramString = this.m.addMarker(localMarkerOptions);
    if (this.t != null)
      this.t.put(paramString.getId(), paramString);
    return paramString.getId();
  }

  public final void a(float paramFloat)
  {
    a(CameraUpdateFactory.zoomTo(paramFloat), true);
  }

  public final void a(int paramInt)
  {
    if (this.n != null)
    {
      this.n.setRadius(paramInt);
      if (this.m != null)
        this.m.invalidate();
    }
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    paramb = paramb.a();
    paramb = new LatLonPoint(paramb.a, paramb.b);
    RegeocodeQuery localRegeocodeQuery = new RegeocodeQuery(paramb, 200.0F, "autonavi");
    this.p.getFromLocationAsyn(localRegeocodeQuery);
    this.p.setOnGeocodeSearchListener(new c(this, paramb));
  }

  public final void a(com.nut.blehunter.entity.b paramb, double paramDouble)
  {
    paramb = b(paramb.a());
    if (this.m != null)
      this.n = this.m.addCircle(new CircleOptions().center(paramb).radius(paramDouble).strokeColor(Color.argb(50, 44, 155, 122)).fillColor(Color.argb(50, 68, 198, 151)).strokeWidth(5.0F));
  }

  public final void a(com.nut.blehunter.entity.b paramb, boolean paramBoolean)
  {
    if (paramb == null)
      return;
    a(CameraUpdateFactory.newCameraPosition(new CameraPosition(b(paramb.a()), 15.0F, 0.0F, 0.0F)), paramBoolean);
  }

  public final void a(String paramString)
  {
    if ((this.t != null) && (this.t.get(paramString) != null))
      ((Marker)this.t.get(paramString)).remove();
  }

  public final void a(String paramString, int paramInt)
  {
    if ((this.t != null) && (this.t.get(paramString) != null))
      if (paramInt == 0)
        break label50;
    label50: for (BitmapDescriptor localBitmapDescriptor = BitmapDescriptorFactory.fromResource(c(paramInt)); ; localBitmapDescriptor = BitmapDescriptorFactory.defaultMarker(0.0F))
    {
      ((Marker)this.t.get(paramString)).setIcon(localBitmapDescriptor);
      return;
    }
  }

  public final void a(String paramString, int paramInt, Nut paramNut)
  {
    if (((this.t != null) && (this.t.get(paramString) != null)) || (getActivity() == null))
    {
      paramNut = BitmapDescriptorFactory.fromView(a(getActivity(), paramInt, paramNut));
      ((Marker)this.t.get(paramString)).setIcon(paramNut);
    }
  }

  public final void a(ArrayList<com.nut.blehunter.entity.b> paramArrayList)
  {
    if (paramArrayList.isEmpty())
      return;
    if (paramArrayList.size() == 1)
    {
      a((com.nut.blehunter.entity.b)paramArrayList.get(0), true);
      return;
    }
    LatLngBounds.Builder localBuilder = new LatLngBounds.Builder();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
      localBuilder.include(b(((com.nut.blehunter.entity.b)paramArrayList.next()).a()));
    a(CameraUpdateFactory.newLatLngBounds(localBuilder.build(), 10), true);
  }

  public void activate(LocationSource.OnLocationChangedListener paramOnLocationChangedListener)
  {
    this.s = paramOnLocationChangedListener;
    d();
  }

  public final float b(int paramInt)
  {
    if (paramInt <= 200)
      return 18.0F;
    if (paramInt <= 500)
      return 17.0F;
    if (paramInt <= 1000)
      return 16.0F;
    if (paramInt <= 2000)
      return 15.0F;
    if (paramInt <= 4000)
      return 14.0F;
    return 13.0F;
  }

  public final void b(String paramString)
  {
    Inputtips localInputtips = new Inputtips(getActivity(), new b(this));
    try
    {
      localInputtips.requestInputtips(paramString, d);
      return;
    }
    catch (AMapException paramString)
    {
      b.a.a.b(paramString, "requestInputTips AMapException", new Object[0]);
    }
  }

  public final void b(String paramString, int paramInt)
  {
    String str = d;
    if (paramInt > 0);
    while (true)
    {
      this.q = new PoiSearch.Query(paramString, "", str);
      this.q.setPageSize(paramInt);
      this.q.setPageNum(0);
      paramString = new PoiSearch(getActivity(), this.q);
      paramString.setOnPoiSearchListener(this);
      paramString.searchPOIAsyn();
      return;
      paramInt = 5;
    }
  }

  public final void c()
  {
    if (this.r != null)
    {
      this.r.stopLocation();
      this.r.onDestroy();
    }
    this.r = null;
  }

  public final void d()
  {
    if (this.r == null)
      this.r = new AMapLocationClient(getActivity());
    this.r.setLocationListener(this);
    AMapLocationClientOption localAMapLocationClientOption = new AMapLocationClientOption();
    localAMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
    localAMapLocationClientOption.setInterval(60000L);
    this.r.setLocationOption(localAMapLocationClientOption);
    this.r.startLocation();
  }

  public void deactivate()
  {
    this.s = null;
    c();
  }

  public final void e()
  {
    if (this.n != null)
    {
      this.n.remove();
      this.n = null;
    }
  }

  public final void e_()
  {
    if (this.m != null)
    {
      this.m.clear();
      this.t.clear();
      if (this.s != null)
        this.s.onLocationChanged(this.u);
    }
  }

  public View getInfoContents(Marker paramMarker)
  {
    return null;
  }

  public View getInfoWindow(Marker paramMarker)
  {
    return null;
  }

  public void onCameraChange(CameraPosition paramCameraPosition)
  {
    if ((paramCameraPosition == null) || (paramCameraPosition.target == null));
    double d1;
    double d2;
    do
    {
      return;
      d1 = paramCameraPosition.target.latitude;
      d2 = paramCameraPosition.target.longitude;
    }
    while (this.l == null);
    paramCameraPosition = new com.nut.blehunter.entity.b(d1, d2, (byte)0);
    this.l.a(paramCameraPosition);
  }

  public void onCameraChangeFinish(CameraPosition paramCameraPosition)
  {
    if ((paramCameraPosition == null) || (paramCameraPosition.target == null));
    double d1;
    double d2;
    do
    {
      return;
      d1 = paramCameraPosition.target.latitude;
      d2 = paramCameraPosition.target.longitude;
    }
    while (this.l == null);
    paramCameraPosition = new com.nut.blehunter.entity.b(d1, d2, (byte)0);
    this.l.b(paramCameraPosition);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903139, paramViewGroup, false);
    this.o = ((MapView)paramLayoutInflater.findViewById(2131558787));
    this.o.onCreate(paramBundle);
    this.o.setBackgroundResource(2130838116);
    this.m = this.o.getMap();
    this.m.setOnMapLoadedListener(this);
    this.m.setOnMarkerClickListener(this);
    this.m.setOnInfoWindowClickListener(this);
    this.m.setInfoWindowAdapter(this);
    this.m.setOnMapClickListener(this);
    this.m.setOnCameraChangeListener(this);
    this.p = new GeocodeSearch(getActivity());
    return paramLayoutInflater;
  }

  public void onDestroy()
  {
    if (this.r != null)
    {
      this.r.stopLocation();
      this.r.onDestroy();
    }
    this.r = null;
    if (this.o != null)
      this.o.onDestroy();
    super.onDestroy();
  }

  public void onInfoWindowClick(Marker paramMarker)
  {
  }

  public void onLocationChanged(AMapLocation paramAMapLocation)
  {
    double d3 = paramAMapLocation.getLatitude();
    double d4 = paramAMapLocation.getLongitude();
    double d1 = d3;
    double d2 = d4;
    AMapLocation localAMapLocation = paramAMapLocation;
    if (d3 == 0.0D)
    {
      d1 = d3;
      d2 = d4;
      localAMapLocation = paramAMapLocation;
      if (d4 == 0.0D)
      {
        paramAMapLocation = this.r.getLastKnownLocation();
        if (paramAMapLocation == null)
          return;
        d3 = paramAMapLocation.getLatitude();
        d4 = paramAMapLocation.getLongitude();
        d1 = d3;
        d2 = d4;
        localAMapLocation = paramAMapLocation;
        if (d3 == 0.0D)
        {
          d1 = d3;
          d2 = d4;
          localAMapLocation = paramAMapLocation;
          if (d4 == 0.0D)
          {
            b.a.a.d("获取经纬度信息失败", new Object[0]);
            return;
          }
        }
      }
    }
    this.u = localAMapLocation;
    d = localAMapLocation.getCity();
    if (this.s != null)
      this.s.onLocationChanged(localAMapLocation);
    if (this.g != null)
      this.g.a(new com.nut.blehunter.entity.b(d1, d2, (byte)0));
    c();
  }

  public void onMapClick(LatLng paramLatLng)
  {
    if (this.h != null)
      new com.nut.blehunter.entity.b(paramLatLng.latitude, paramLatLng.longitude, (byte)0);
  }

  public void onMapLoaded()
  {
    MyLocationStyle localMyLocationStyle = new MyLocationStyle();
    localMyLocationStyle.myLocationIcon(BitmapDescriptorFactory.fromResource(2130838106));
    localMyLocationStyle.strokeColor(0);
    this.m.setMyLocationStyle(localMyLocationStyle);
    this.m.setLocationSource(this);
    this.m.getUiSettings().setMyLocationButtonEnabled(false);
    this.m.getUiSettings().setZoomControlsEnabled(false);
    this.m.setMyLocationEnabled(true);
    if (this.f != null)
      this.f.g();
  }

  public boolean onMarkerClick(Marker paramMarker)
  {
    if (a)
      paramMarker.showInfoWindow();
    if ((this.i != null) && (paramMarker != null))
    {
      new com.nut.blehunter.entity.b(paramMarker.getPosition().latitude, paramMarker.getPosition().longitude, (byte)0);
      q localq = this.i;
      String str = paramMarker.getId();
      paramMarker.getTitle();
      localq.c(str);
    }
    return false;
  }

  public void onPause()
  {
    super.onPause();
    this.o.onPause();
  }

  public void onPoiItemSearched(PoiItem paramPoiItem, int paramInt)
  {
  }

  public void onPoiSearched(PoiResult paramPoiResult, int paramInt)
  {
    if (paramInt == 1000)
    {
      if ((paramPoiResult != null) && (paramPoiResult.getQuery() != null))
      {
        if (paramPoiResult.getQuery().equals(this.q))
        {
          ArrayList localArrayList = paramPoiResult.getPois();
          paramPoiResult = paramPoiResult.getSearchSuggestionCitys();
          if ((localArrayList == null) || (localArrayList.size() <= 0))
            break label88;
          this.m.clear();
          paramPoiResult = new PoiOverlay(this.m, localArrayList);
          paramPoiResult.removeFromMap();
          paramPoiResult.addToMap();
          paramPoiResult.zoomToSpan();
        }
        label88: 
        while ((paramPoiResult != null) && (paramPoiResult.size() > 0))
          return;
        b.a.a.d("onPoiSearched:对不起，没有搜索到相关数据！", new Object[0]);
        getActivity();
        return;
      }
      b.a.a.d("onPoiSearched:对不起，没有搜索到相关数据！", new Object[0]);
      getActivity();
      return;
    }
    c("onPoiSearched", paramInt);
  }

  public void onResume()
  {
    super.onResume();
    this.o.onResume();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.o.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a
 * JD-Core Version:    0.6.2
 */