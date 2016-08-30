package com.amap.api.services.core;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.services.busline.BusLineResult;
import com.amap.api.services.busline.BusLineSearch.OnBusLineSearchListener;
import com.amap.api.services.busline.BusStationResult;
import com.amap.api.services.busline.BusStationSearch.OnBusStationSearchListener;
import com.amap.api.services.cloud.CloudSearch.OnCloudSearchListener;
import com.amap.api.services.district.DistrictResult;
import com.amap.api.services.district.DistrictSearch.OnDistrictSearchListener;
import com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener;
import com.amap.api.services.help.Inputtips.InputtipsListener;
import com.amap.api.services.nearby.NearbySearch.NearbyListener;
import com.amap.api.services.nearby.NearbySearchResult;
import com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.RouteSearch.OnRouteSearchListener;
import com.amap.api.services.route.WalkRouteResult;
import com.amap.api.services.share.ShareSearch.OnShareSearchListener;
import com.amap.api.services.weather.WeatherSearch.OnWeatherSearchListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class t extends Handler
{
  private static t a;

  t()
  {
  }

  t(Looper paramLooper)
  {
    super(paramLooper);
  }

  public static t a()
  {
    try
    {
      if (a == null)
        if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper()))
          break label46;
      label46: for (a = new t(Looper.getMainLooper()); ; a = new t())
      {
        t localt = a;
        return localt;
      }
    }
    finally
    {
    }
  }

  private void a(Message paramMessage)
  {
    int i = paramMessage.arg2;
    ShareSearch.OnShareSearchListener localOnShareSearchListener = (ShareSearch.OnShareSearchListener)paramMessage.obj;
    String str = paramMessage.getData().getString("shareurlkey");
    if (localOnShareSearchListener == null)
      return;
    switch (paramMessage.what)
    {
    default:
      return;
    case 1100:
      localOnShareSearchListener.onPoiShareUrlSearched(str, i);
      return;
    case 1103:
      localOnShareSearchListener.onBusRouteShareUrlSearched(str, i);
      return;
    case 1104:
      localOnShareSearchListener.onDrivingRouteShareUrlSearched(str, i);
      return;
    case 1105:
      localOnShareSearchListener.onWalkRouteShareUrlSearched(str, i);
      return;
    case 1101:
      localOnShareSearchListener.onLocationShareUrlSearched(str, i);
      return;
    case 1102:
    }
    localOnShareSearchListener.onNaviShareUrlSearched(str, i);
  }

  private void b(Message paramMessage)
  {
    Object localObject = (List)paramMessage.obj;
    if ((localObject == null) || (((List)localObject).size() == 0));
    while (true)
    {
      return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
        ((NearbySearch.NearbyListener)((Iterator)localObject).next()).onNearbyInfoUploaded(paramMessage.what);
    }
  }

  private void c(Message paramMessage)
  {
    t.f localf = (t.f)paramMessage.obj;
    if (localf == null);
    while (true)
    {
      return;
      Object localObject = localf.a;
      if ((localObject != null) && (((List)localObject).size() != 0))
      {
        NearbySearchResult localNearbySearchResult = null;
        if (paramMessage.what == 1000)
          localNearbySearchResult = localf.b;
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
          ((NearbySearch.NearbyListener)((Iterator)localObject).next()).onNearbyInfoSearched(localNearbySearchResult, paramMessage.what);
      }
    }
  }

  private void d(Message paramMessage)
  {
    Object localObject = (List)paramMessage.obj;
    if ((localObject == null) || (((List)localObject).size() == 0));
    while (true)
    {
      return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
        ((NearbySearch.NearbyListener)((Iterator)localObject).next()).onUserInfoCleared(paramMessage.what);
    }
  }

  private void e(Message paramMessage)
  {
    Object localObject = (t.b)paramMessage.obj;
    if (localObject == null);
    BusStationSearch.OnBusStationSearchListener localOnBusStationSearchListener;
    do
    {
      return;
      localOnBusStationSearchListener = ((t.b)localObject).b;
    }
    while (localOnBusStationSearchListener == null);
    if (paramMessage.what == 1000);
    for (localObject = ((t.b)localObject).a; ; localObject = null)
    {
      localOnBusStationSearchListener.onBusStationSearched((BusStationResult)localObject, paramMessage.what);
      return;
    }
  }

  private void f(Message paramMessage)
  {
    Object localObject;
    if (paramMessage.what == 600)
    {
      localObject = (t.h)paramMessage.obj;
      if (localObject != null);
    }
    PoiSearch.OnPoiSearchListener localOnPoiSearchListener;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              localOnPoiSearchListener = ((t.h)localObject).b;
            }
            while (localOnPoiSearchListener == null);
            paramMessage = paramMessage.getData();
          }
          while (paramMessage == null);
          i = paramMessage.getInt("errorCode");
          localOnPoiSearchListener.onPoiSearched(((t.h)localObject).a, i);
          return;
        }
        while (paramMessage.what != 602);
        localObject = (t.g)paramMessage.obj;
      }
      while (localObject == null);
      localOnPoiSearchListener = ((t.g)localObject).b;
      paramMessage = paramMessage.getData();
    }
    while (paramMessage == null);
    int i = paramMessage.getInt("errorCode");
    localOnPoiSearchListener.onPoiItemSearched(((t.g)localObject).a, i);
  }

  private void g(Message paramMessage)
  {
    Inputtips.InputtipsListener localInputtipsListener = (Inputtips.InputtipsListener)paramMessage.obj;
    if (localInputtipsListener == null)
      return;
    ArrayList localArrayList = null;
    if (paramMessage.what == 1000)
      localArrayList = paramMessage.getData().getParcelableArrayList("result");
    localInputtipsListener.onGetInputtips(localArrayList, paramMessage.what);
  }

  private void h(Message paramMessage)
  {
    Object localObject;
    if (paramMessage.what == 201)
    {
      localObject = (t.i)paramMessage.obj;
      if (localObject != null);
    }
    GeocodeSearch.OnGeocodeSearchListener localOnGeocodeSearchListener;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            localOnGeocodeSearchListener = ((t.i)localObject).b;
          }
          while (localOnGeocodeSearchListener == null);
          localOnGeocodeSearchListener.onRegeocodeSearched(((t.i)localObject).a, paramMessage.arg2);
          return;
        }
        while (paramMessage.what != 200);
        localObject = (t.e)paramMessage.obj;
      }
      while (localObject == null);
      localOnGeocodeSearchListener = ((t.e)localObject).b;
    }
    while (localOnGeocodeSearchListener == null);
    localOnGeocodeSearchListener.onGeocodeSearched(((t.e)localObject).a, paramMessage.arg2);
  }

  private void i(Message paramMessage)
  {
    DistrictSearch.OnDistrictSearchListener localOnDistrictSearchListener = (DistrictSearch.OnDistrictSearchListener)paramMessage.obj;
    if (localOnDistrictSearchListener == null)
      return;
    localOnDistrictSearchListener.onDistrictSearched((DistrictResult)paramMessage.getData().getParcelable("result"));
  }

  private void j(Message paramMessage)
  {
    Object localObject = (t.a)paramMessage.obj;
    if (localObject == null);
    BusLineSearch.OnBusLineSearchListener localOnBusLineSearchListener;
    do
    {
      return;
      localOnBusLineSearchListener = ((t.a)localObject).b;
    }
    while (localOnBusLineSearchListener == null);
    if (paramMessage.what == 1000);
    for (localObject = ((t.a)localObject).a; ; localObject = null)
    {
      localOnBusLineSearchListener.onBusLineSearched((BusLineResult)localObject, paramMessage.what);
      return;
    }
  }

  private void k(Message paramMessage)
  {
    RouteSearch.OnRouteSearchListener localOnRouteSearchListener = (RouteSearch.OnRouteSearchListener)paramMessage.obj;
    if (localOnRouteSearchListener == null);
    Bundle localBundle;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (paramMessage.what != 100)
              break;
            localBundle = paramMessage.getData();
          }
          while (localBundle == null);
          i = localBundle.getInt("errorCode");
          localOnRouteSearchListener.onBusRouteSearched((BusRouteResult)paramMessage.getData().getParcelable("result"), i);
          return;
          if (paramMessage.what != 101)
            break;
          localBundle = paramMessage.getData();
        }
        while (localBundle == null);
        i = localBundle.getInt("errorCode");
        localOnRouteSearchListener.onDriveRouteSearched((DriveRouteResult)paramMessage.getData().getParcelable("result"), i);
        return;
      }
      while (paramMessage.what != 102);
      localBundle = paramMessage.getData();
    }
    while (localBundle == null);
    int i = localBundle.getInt("errorCode");
    localOnRouteSearchListener.onWalkRouteSearched((WalkRouteResult)paramMessage.getData().getParcelable("result"), i);
  }

  private void l(Message paramMessage)
  {
    Object localObject;
    if (paramMessage.what == 700)
    {
      localObject = (t.d)paramMessage.obj;
      if (localObject != null);
    }
    do
    {
      do
      {
        return;
        ((t.d)localObject).b.onCloudSearched(((t.d)localObject).a, paramMessage.arg2);
        return;
      }
      while (paramMessage.what != 701);
      localObject = (t.c)paramMessage.obj;
    }
    while (localObject == null);
    ((t.c)localObject).b.onCloudItemDetailSearched(((t.c)localObject).a, paramMessage.arg2);
  }

  private void m(Message paramMessage)
  {
    Object localObject;
    if (paramMessage.what == 1301)
    {
      localObject = (t.k)paramMessage.obj;
      if (localObject != null);
    }
    WeatherSearch.OnWeatherSearchListener localOnWeatherSearchListener;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                localOnWeatherSearchListener = ((t.k)localObject).b;
              }
              while (localOnWeatherSearchListener == null);
              paramMessage = paramMessage.getData();
            }
            while (paramMessage == null);
            i = paramMessage.getInt("errorCode");
            localOnWeatherSearchListener.onWeatherLiveSearched(((t.k)localObject).a, i);
            return;
          }
          while (paramMessage.what != 1302);
          localObject = (t.j)paramMessage.obj;
        }
        while (localObject == null);
        localOnWeatherSearchListener = ((t.j)localObject).b;
      }
      while (localOnWeatherSearchListener == null);
      paramMessage = paramMessage.getData();
    }
    while (paramMessage == null);
    int i = paramMessage.getInt("errorCode");
    localOnWeatherSearchListener.onWeatherForecastSearched(((t.j)localObject).a, i);
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.arg1)
      {
      case 1:
        k(paramMessage);
        return;
      case 3:
      case 4:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      }
    }
    catch (Throwable paramMessage)
    {
      i.a(paramMessage, "MessageHandler", "handleMessage");
      return;
    }
    j(paramMessage);
    return;
    i(paramMessage);
    return;
    h(paramMessage);
    return;
    g(paramMessage);
    return;
    f(paramMessage);
    return;
    e(paramMessage);
    return;
    d(paramMessage);
    return;
    c(paramMessage);
    return;
    b(paramMessage);
    return;
    a(paramMessage);
    return;
    l(paramMessage);
    return;
    m(paramMessage);
    return;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.t
 * JD-Core Version:    0.6.2
 */