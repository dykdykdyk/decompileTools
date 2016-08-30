package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.i;

public class RouteSearch$WalkRouteQuery
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<WalkRouteQuery> CREATOR = new p();
  private RouteSearch.FromAndTo a;
  private int b;

  public RouteSearch$WalkRouteQuery()
  {
  }

  public RouteSearch$WalkRouteQuery(Parcel paramParcel)
  {
    this.a = ((RouteSearch.FromAndTo)paramParcel.readParcelable(RouteSearch.FromAndTo.class.getClassLoader()));
    this.b = paramParcel.readInt();
  }

  public RouteSearch$WalkRouteQuery(RouteSearch.FromAndTo paramFromAndTo, int paramInt)
  {
    this.a = paramFromAndTo;
    this.b = paramInt;
  }

  public WalkRouteQuery clone()
  {
    try
    {
      super.clone();
      return new WalkRouteQuery(this.a, this.b);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "RouteSearch", "WalkRouteQueryclone");
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (WalkRouteQuery)paramObject;
      if (this.a == null)
      {
        if (paramObject.a != null)
          return false;
      }
      else if (!this.a.equals(paramObject.a))
        return false;
    }
    while (this.b == paramObject.b);
    return false;
  }

  public RouteSearch.FromAndTo getFromAndTo()
  {
    return this.a;
  }

  public int getMode()
  {
    return this.b;
  }

  public int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return (i + 31) * 31 + this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.WalkRouteQuery
 * JD-Core Version:    0.6.2
 */