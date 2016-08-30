package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RouteSearch$DriveRouteQuery
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<DriveRouteQuery> CREATOR = new n();
  private RouteSearch.FromAndTo a;
  private int b;
  private List<LatLonPoint> c;
  private List<List<LatLonPoint>> d;
  private String e;

  public RouteSearch$DriveRouteQuery()
  {
  }

  public RouteSearch$DriveRouteQuery(Parcel paramParcel)
  {
    this.a = ((RouteSearch.FromAndTo)paramParcel.readParcelable(RouteSearch.FromAndTo.class.getClassLoader()));
    this.b = paramParcel.readInt();
    this.c = paramParcel.createTypedArrayList(LatLonPoint.CREATOR);
    int j = paramParcel.readInt();
    if (j == 0);
    for (this.d = null; ; this.d = new ArrayList())
    {
      int i = 0;
      while (i < j)
      {
        this.d.add(paramParcel.createTypedArrayList(LatLonPoint.CREATOR));
        i += 1;
      }
    }
    this.e = paramParcel.readString();
  }

  public RouteSearch$DriveRouteQuery(RouteSearch.FromAndTo paramFromAndTo, int paramInt, List<LatLonPoint> paramList, List<List<LatLonPoint>> paramList1, String paramString)
  {
    this.a = paramFromAndTo;
    this.b = paramInt;
    this.c = paramList;
    this.d = paramList1;
    this.e = paramString;
  }

  public DriveRouteQuery clone()
  {
    try
    {
      super.clone();
      return new DriveRouteQuery(this.a, this.b, this.c, this.d, this.e);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "RouteSearch", "DriveRouteQueryclone");
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
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (DriveRouteQuery)paramObject;
        if (this.e == null)
        {
          if (paramObject.e != null)
            return false;
        }
        else if (!this.e.equals(paramObject.e))
          return false;
        if (this.d == null)
        {
          if (paramObject.d != null)
            return false;
        }
        else if (!this.d.equals(paramObject.d))
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
        if (this.c != null)
          break;
      }
      while (paramObject.c == null);
      return false;
    }
    while (this.c.equals(paramObject.c));
    return false;
  }

  public String getAvoidRoad()
  {
    return this.e;
  }

  public List<List<LatLonPoint>> getAvoidpolygons()
  {
    return this.d;
  }

  public String getAvoidpolygonsStr()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((this.d == null) || (this.d.size() == 0))
      return null;
    int i = 0;
    while (i < this.d.size())
    {
      List localList = (List)this.d.get(i);
      int j = 0;
      while (j < localList.size())
      {
        LatLonPoint localLatLonPoint = (LatLonPoint)localList.get(j);
        localStringBuffer.append(localLatLonPoint.getLongitude());
        localStringBuffer.append(",");
        localStringBuffer.append(localLatLonPoint.getLatitude());
        if (j < localList.size() - 1)
          localStringBuffer.append(";");
        j += 1;
      }
      if (i < this.d.size() - 1)
        localStringBuffer.append("|");
      i += 1;
    }
    return localStringBuffer.toString();
  }

  public RouteSearch.FromAndTo getFromAndTo()
  {
    return this.a;
  }

  public int getMode()
  {
    return this.b;
  }

  public List<LatLonPoint> getPassedByPoints()
  {
    return this.c;
  }

  public String getPassedPointStr()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((this.c == null) || (this.c.size() == 0))
      return null;
    int i = 0;
    while (i < this.c.size())
    {
      LatLonPoint localLatLonPoint = (LatLonPoint)this.c.get(i);
      localStringBuffer.append(localLatLonPoint.getLongitude());
      localStringBuffer.append(",");
      localStringBuffer.append(localLatLonPoint.getLatitude());
      if (i < this.c.size() - 1)
        localStringBuffer.append(";");
      i += 1;
    }
    return localStringBuffer.toString();
  }

  public boolean hasAvoidRoad()
  {
    return !i.a(getAvoidRoad());
  }

  public boolean hasAvoidpolygons()
  {
    return !i.a(getAvoidpolygonsStr());
  }

  public boolean hasPassPoint()
  {
    return !i.a(getPassedPointStr());
  }

  public int hashCode()
  {
    int m = 0;
    int i;
    int j;
    label21: int k;
    label30: int n;
    if (this.e == null)
    {
      i = 0;
      if (this.d != null)
        break label81;
      j = 0;
      if (this.a != null)
        break label94;
      k = 0;
      n = this.b;
      if (this.c != null)
        break label105;
    }
    while (true)
    {
      return ((k + (j + (i + 31) * 31) * 31) * 31 + n) * 31 + m;
      i = this.e.hashCode();
      break;
      label81: j = this.d.hashCode();
      break label21;
      label94: k = this.a.hashCode();
      break label30;
      label105: m = this.c.hashCode();
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeInt(this.b);
    paramParcel.writeTypedList(this.c);
    if (this.d == null)
      paramParcel.writeInt(0);
    while (true)
    {
      paramParcel.writeString(this.e);
      return;
      paramParcel.writeInt(this.d.size());
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
        paramParcel.writeTypedList((List)localIterator.next());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.DriveRouteQuery
 * JD-Core Version:    0.6.2
 */