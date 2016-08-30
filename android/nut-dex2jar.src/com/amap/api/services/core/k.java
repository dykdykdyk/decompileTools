package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.RouteSearch.DriveRouteQuery;
import com.amap.api.services.route.RouteSearch.FromAndTo;

public class k extends b<RouteSearch.DriveRouteQuery, DriveRouteResult>
{
  public k(Context paramContext, RouteSearch.DriveRouteQuery paramDriveRouteQuery)
  {
    super(paramContext, paramDriveRouteQuery);
  }

  protected DriveRouteResult d(String paramString)
    throws AMapException
  {
    return n.b(paramString);
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.d));
    localStringBuffer.append("&origin=").append(i.a(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getFrom()));
    if (!n.i(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getStartPoiID()))
      localStringBuffer.append("&originid=").append(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getStartPoiID());
    localStringBuffer.append("&destination=").append(i.a(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getTo()));
    if (!n.i(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getDestinationPoiID()))
      localStringBuffer.append("&destinationid=").append(((RouteSearch.DriveRouteQuery)this.a).getFromAndTo().getDestinationPoiID());
    localStringBuffer.append("&strategy=").append(((RouteSearch.DriveRouteQuery)this.a).getMode());
    localStringBuffer.append("&extensions=all");
    if (((RouteSearch.DriveRouteQuery)this.a).hasPassPoint())
      localStringBuffer.append("&waypoints=").append(((RouteSearch.DriveRouteQuery)this.a).getPassedPointStr());
    if (((RouteSearch.DriveRouteQuery)this.a).hasAvoidpolygons())
      localStringBuffer.append("&avoidpolygons=").append(((RouteSearch.DriveRouteQuery)this.a).getAvoidpolygonsStr());
    if (((RouteSearch.DriveRouteQuery)this.a).hasAvoidRoad())
      localStringBuffer.append("&avoidroad=").append(b(((RouteSearch.DriveRouteQuery)this.a).getAvoidRoad()));
    localStringBuffer.append("&roadaggregation=true");
    localStringBuffer.append("&output=json");
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.a() + "/direction/driving?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.k
 * JD-Core Version:    0.6.2
 */