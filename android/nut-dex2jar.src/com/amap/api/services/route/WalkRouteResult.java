package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class WalkRouteResult extends RouteResult
  implements Parcelable
{
  public static final Parcelable.Creator<WalkRouteResult> CREATOR = new t();
  private List<WalkPath> a = new ArrayList();
  private RouteSearch.WalkRouteQuery b;

  public WalkRouteResult()
  {
  }

  public WalkRouteResult(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.createTypedArrayList(WalkPath.CREATOR);
    this.b = ((RouteSearch.WalkRouteQuery)paramParcel.readParcelable(RouteSearch.WalkRouteQuery.class.getClassLoader()));
  }

  public int describeContents()
  {
    return 0;
  }

  public List<WalkPath> getPaths()
  {
    return this.a;
  }

  public RouteSearch.WalkRouteQuery getWalkQuery()
  {
    return this.b;
  }

  public void setPaths(List<WalkPath> paramList)
  {
    this.a = paramList;
  }

  public void setWalkQuery(RouteSearch.WalkRouteQuery paramWalkRouteQuery)
  {
    this.b = paramWalkRouteQuery;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeTypedList(this.a);
    paramParcel.writeParcelable(this.b, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.WalkRouteResult
 * JD-Core Version:    0.6.2
 */