package com.amap.api.services.busline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.List;

public class BusStationItem
  implements Parcelable
{
  public static final Parcelable.Creator<BusStationItem> CREATOR = new b();
  private String a;
  private String b;
  private LatLonPoint c;
  private String d;
  private String e;
  private List<BusLineItem> f = new ArrayList();

  public BusStationItem()
  {
  }

  private BusStationItem(Parcel paramParcel)
  {
    this.b = paramParcel.readString();
    this.a = paramParcel.readString();
    this.c = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readArrayList(BusLineItem.class.getClassLoader());
  }

  private String a(List<BusLineItem> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramList != null)
    {
      int i = 0;
      while (i < paramList.size())
      {
        localStringBuffer.append(((BusLineItem)paramList.get(i)).getBusLineName());
        if (i < paramList.size() - 1)
          localStringBuffer.append("|");
        i += 1;
      }
    }
    return localStringBuffer.toString();
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
        paramObject = (BusStationItem)paramObject;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public String getAdCode()
  {
    return this.e;
  }

  public List<BusLineItem> getBusLineItems()
  {
    return this.f;
  }

  public String getBusStationId()
  {
    return this.a;
  }

  public String getBusStationName()
  {
    return this.b;
  }

  public String getCityCode()
  {
    return this.d;
  }

  public LatLonPoint getLatLonPoint()
  {
    return this.c;
  }

  public int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return i + 31;
  }

  public void setAdCode(String paramString)
  {
    this.e = paramString;
  }

  public void setBusLineItems(List<BusLineItem> paramList)
  {
    this.f = paramList;
  }

  public void setBusStationId(String paramString)
  {
    this.a = paramString;
  }

  public void setBusStationName(String paramString)
  {
    this.b = paramString;
  }

  public void setCityCode(String paramString)
  {
    this.d = paramString;
  }

  public void setLatLonPoint(LatLonPoint paramLatLonPoint)
  {
    this.c = paramLatLonPoint;
  }

  public String toString()
  {
    return "BusStationName: " + this.b + " LatLonPoint: " + this.c.toString() + " BusLines: " + a(this.f) + " CityCode: " + this.d + " AdCode: " + this.e;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.a);
    paramParcel.writeValue(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeList(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusStationItem
 * JD-Core Version:    0.6.2
 */