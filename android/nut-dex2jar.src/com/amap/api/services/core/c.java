package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.RouteSearch.BusRouteQuery;
import com.amap.api.services.route.RouteSearch.FromAndTo;

public class c extends b<RouteSearch.BusRouteQuery, BusRouteResult>
{
  public c(Context paramContext, RouteSearch.BusRouteQuery paramBusRouteQuery)
  {
    super(paramContext, paramBusRouteQuery);
  }

  protected BusRouteResult d(String paramString)
    throws AMapException
  {
    return n.a(paramString);
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.d));
    localStringBuffer.append("&origin=").append(i.a(((RouteSearch.BusRouteQuery)this.a).getFromAndTo().getFrom()));
    localStringBuffer.append("&destination=").append(i.a(((RouteSearch.BusRouteQuery)this.a).getFromAndTo().getTo()));
    String str = ((RouteSearch.BusRouteQuery)this.a).getCity();
    if (!n.i(str))
    {
      str = b(str);
      localStringBuffer.append("&city=").append(str);
    }
    localStringBuffer.append("&strategy=").append(((RouteSearch.BusRouteQuery)this.a).getMode());
    localStringBuffer.append("&nightflag=").append(((RouteSearch.BusRouteQuery)this.a).getNightFlag());
    localStringBuffer.append("&output=json");
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.a() + "/direction/transit/integrated?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.c
 * JD-Core Version:    0.6.2
 */