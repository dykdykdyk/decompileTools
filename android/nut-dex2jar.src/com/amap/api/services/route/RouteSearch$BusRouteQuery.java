package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.i;

public class RouteSearch$BusRouteQuery
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<BusRouteQuery> CREATOR = new m();
  private RouteSearch.FromAndTo a;
  private int b;
  private String c;
  private int d;

  public RouteSearch$BusRouteQuery()
  {
  }

  public RouteSearch$BusRouteQuery(Parcel paramParcel)
  {
    this.a = ((RouteSearch.FromAndTo)paramParcel.readParcelable(RouteSearch.FromAndTo.class.getClassLoader()));
    this.b = paramParcel.readInt();
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
  }

  public RouteSearch$BusRouteQuery(RouteSearch.FromAndTo paramFromAndTo, int paramInt1, String paramString, int paramInt2)
  {
    this.a = paramFromAndTo;
    this.b = paramInt1;
    this.c = paramString;
    this.d = paramInt2;
  }

  public BusRouteQuery clone()
  {
    try
    {
      super.clone();
      return new BusRouteQuery(this.a, this.b, this.c, this.d);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "RouteSearch", "BusRouteQueryclone");
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
      paramObject = (BusRouteQuery)paramObject;
      if (this.c == null)
      {
        if (paramObject.c != null)
          return false;
      }
      else if (!this.c.equals(paramObject.c))
        return false;
      if (this.a == null)
      {
        if (paramObject.a != null)
          return false;
      }
      else if (!this.a.equals(paramObject.a))
        return false;
      if (this.b != paramObject.b)
        return false;
    }
    while (this.d == paramObject.d);
    return false;
  }

  public String getCity()
  {
    return this.c;
  }

  public RouteSearch.FromAndTo getFromAndTo()
  {
    return this.a;
  }

  public int getMode()
  {
    return this.b;
  }

  public int getNightFlag()
  {
    return this.d;
  }

  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.c == null)
    {
      i = 0;
      if (this.a != null)
        break label55;
    }
    while (true)
    {
      return (((i + 31) * 31 + j) * 31 + this.b) * 31 + this.d;
      i = this.c.hashCode();
      break;
      label55: j = this.a.hashCode();
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeInt(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.BusRouteQuery
 * JD-Core Version:    0.6.2
 */