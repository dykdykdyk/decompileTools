package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.route.RouteSearch.FromAndTo;
import com.amap.api.services.route.RouteSearch.WalkRouteQuery;
import com.amap.api.services.route.WalkRouteResult;

public class ad extends b<RouteSearch.WalkRouteQuery, WalkRouteResult>
{
  public ad(Context paramContext, RouteSearch.WalkRouteQuery paramWalkRouteQuery)
  {
    super(paramContext, paramWalkRouteQuery);
  }

  protected WalkRouteResult d(String paramString)
    throws AMapException
  {
    return n.c(paramString);
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.d));
    localStringBuffer.append("&origin=").append(i.a(((RouteSearch.WalkRouteQuery)this.a).getFromAndTo().getFrom()));
    localStringBuffer.append("&destination=").append(i.a(((RouteSearch.WalkRouteQuery)this.a).getFromAndTo().getTo()));
    localStringBuffer.append("&multipath=0");
    localStringBuffer.append("&output=json");
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.a() + "/direction/walking?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ad
 * JD-Core Version:    0.6.2
 */