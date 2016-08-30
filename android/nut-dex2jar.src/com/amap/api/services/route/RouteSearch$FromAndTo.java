package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.i;

public class RouteSearch$FromAndTo
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<FromAndTo> CREATOR = new o();
  private LatLonPoint a;
  private LatLonPoint b;
  private String c;
  private String d;

  public RouteSearch$FromAndTo()
  {
  }

  public RouteSearch$FromAndTo(Parcel paramParcel)
  {
    this.a = ((LatLonPoint)paramParcel.readParcelable(LatLonPoint.class.getClassLoader()));
    this.b = ((LatLonPoint)paramParcel.readParcelable(LatLonPoint.class.getClassLoader()));
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
  }

  public RouteSearch$FromAndTo(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    this.a = paramLatLonPoint1;
    this.b = paramLatLonPoint2;
  }

  public FromAndTo clone()
  {
    try
    {
      super.clone();
      FromAndTo localFromAndTo = new FromAndTo(this.a, this.b);
      localFromAndTo.setStartPoiID(this.c);
      localFromAndTo.setDestinationPoiID(this.d);
      return localFromAndTo;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "RouteSearch", "FromAndToclone");
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
        paramObject = (FromAndTo)paramObject;
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
        if (this.c == null)
        {
          if (paramObject.c != null)
            return false;
        }
        else if (!this.c.equals(paramObject.c))
          return false;
        if (this.b != null)
          break;
      }
      while (paramObject.b == null);
      return false;
    }
    while (this.b.equals(paramObject.b));
    return false;
  }

  public String getDestinationPoiID()
  {
    return this.d;
  }

  public LatLonPoint getFrom()
  {
    return this.a;
  }

  public String getStartPoiID()
  {
    return this.c;
  }

  public LatLonPoint getTo()
  {
    return this.b;
  }

  public int hashCode()
  {
    int m = 0;
    int i;
    int j;
    label21: int k;
    if (this.d == null)
    {
      i = 0;
      if (this.a != null)
        break label69;
      j = 0;
      if (this.c != null)
        break label80;
      k = 0;
      label30: if (this.b != null)
        break label91;
    }
    while (true)
    {
      return (k + (j + (i + 31) * 31) * 31) * 31 + m;
      i = this.d.hashCode();
      break;
      label69: j = this.a.hashCode();
      break label21;
      label80: k = this.c.hashCode();
      break label30;
      label91: m = this.b.hashCode();
    }
  }

  public void setDestinationPoiID(String paramString)
  {
    this.d = paramString;
  }

  public void setStartPoiID(String paramString)
  {
    this.c = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeParcelable(this.b, paramInt);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.FromAndTo
 * JD-Core Version:    0.6.2
 */