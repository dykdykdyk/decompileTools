package com.amap.api.services.route;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.ad;
import com.amap.api.services.core.c;
import com.amap.api.services.core.k;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;

public class RouteSearch
{
  public static final int BusComfortable = 4;
  public static final int BusDefault = 0;
  public static final int BusLeaseChange = 2;
  public static final int BusLeaseWalk = 3;
  public static final int BusNoSubway = 5;
  public static final int BusSaveMoney = 1;
  public static final int DrivingAvoidCongestion = 4;
  public static final int DrivingDefault = 0;
  public static final int DrivingMultiStrategy = 5;
  public static final int DrivingNoExpressways = 3;
  public static final int DrivingNoHighAvoidCongestionSaveMoney = 9;
  public static final int DrivingNoHighWay = 6;
  public static final int DrivingNoHighWaySaveMoney = 7;
  public static final int DrivingSaveMoney = 1;
  public static final int DrivingSaveMoneyAvoidCongestion = 8;
  public static final int DrivingShortDistance = 2;
  public static final int WalkDefault = 0;
  public static final int WalkMultipath = 1;
  private RouteSearch.OnRouteSearchListener a;
  private Context b;
  private Handler c;

  public RouteSearch(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.c = t.a();
  }

  public BusRouteResult calculateBusRoute(RouteSearch.BusRouteQuery paramBusRouteQuery)
    throws AMapException
  {
    q.a(this.b);
    paramBusRouteQuery = paramBusRouteQuery.clone();
    BusRouteResult localBusRouteResult = (BusRouteResult)new c(this.b, paramBusRouteQuery).a();
    if (localBusRouteResult != null)
      localBusRouteResult.setBusQuery(paramBusRouteQuery);
    return localBusRouteResult;
  }

  public void calculateBusRouteAsyn(RouteSearch.BusRouteQuery paramBusRouteQuery)
  {
    new RouteSearch.2(this, paramBusRouteQuery).start();
  }

  public DriveRouteResult calculateDriveRoute(RouteSearch.DriveRouteQuery paramDriveRouteQuery)
    throws AMapException
  {
    q.a(this.b);
    paramDriveRouteQuery = paramDriveRouteQuery.clone();
    DriveRouteResult localDriveRouteResult = (DriveRouteResult)new k(this.b, paramDriveRouteQuery).a();
    if (localDriveRouteResult != null)
      localDriveRouteResult.setDriveQuery(paramDriveRouteQuery);
    return localDriveRouteResult;
  }

  public void calculateDriveRouteAsyn(RouteSearch.DriveRouteQuery paramDriveRouteQuery)
  {
    new RouteSearch.3(this, paramDriveRouteQuery).start();
  }

  public WalkRouteResult calculateWalkRoute(RouteSearch.WalkRouteQuery paramWalkRouteQuery)
    throws AMapException
  {
    q.a(this.b);
    paramWalkRouteQuery = paramWalkRouteQuery.clone();
    WalkRouteResult localWalkRouteResult = (WalkRouteResult)new ad(this.b, paramWalkRouteQuery).a();
    if (localWalkRouteResult != null)
      localWalkRouteResult.setWalkQuery(paramWalkRouteQuery);
    return localWalkRouteResult;
  }

  public void calculateWalkRouteAsyn(RouteSearch.WalkRouteQuery paramWalkRouteQuery)
  {
    new RouteSearch.1(this, paramWalkRouteQuery).start();
  }

  public void setRouteSearchListener(RouteSearch.OnRouteSearchListener paramOnRouteSearchListener)
  {
    this.a = paramOnRouteSearchListener;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch
 * JD-Core Version:    0.6.2
 */