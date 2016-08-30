package com.amap.api.services.busline;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.i;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BusLineItem
  implements Parcelable
{
  public static final Parcelable.Creator<BusLineItem> CREATOR = new a();
  private float a;
  private String b;
  private String c;
  private String d;
  private List<LatLonPoint> e = new ArrayList();
  private List<LatLonPoint> f = new ArrayList();
  private String g;
  private String h;
  private String i;
  private Date j;
  private Date k;
  private String l;
  private float m;
  private float n;
  private List<BusStationItem> o = new ArrayList();

  public BusLineItem()
  {
  }

  public BusLineItem(Parcel paramParcel)
  {
    this.a = paramParcel.readFloat();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readArrayList(LatLonPoint.class.getClassLoader());
    this.f = paramParcel.readArrayList(LatLonPoint.class.getClassLoader());
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = i.d(paramParcel.readString());
    this.k = i.d(paramParcel.readString());
    this.l = paramParcel.readString();
    this.m = paramParcel.readFloat();
    this.n = paramParcel.readFloat();
    this.o = paramParcel.readArrayList(BusStationItem.class.getClassLoader());
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
        paramObject = (BusLineItem)paramObject;
        if (this.g != null)
          break;
      }
      while (paramObject.g == null);
      return false;
    }
    while (this.g.equals(paramObject.g));
    return false;
  }

  public float getBasicPrice()
  {
    return this.m;
  }

  public List<LatLonPoint> getBounds()
  {
    return this.f;
  }

  public String getBusCompany()
  {
    return this.l;
  }

  public String getBusLineId()
  {
    return this.g;
  }

  public String getBusLineName()
  {
    return this.b;
  }

  public String getBusLineType()
  {
    return this.c;
  }

  public List<BusStationItem> getBusStations()
  {
    return this.o;
  }

  public String getCityCode()
  {
    return this.d;
  }

  public List<LatLonPoint> getDirectionsCoordinates()
  {
    return this.e;
  }

  public float getDistance()
  {
    return this.a;
  }

  public Date getFirstBusTime()
  {
    if (this.j == null)
      return null;
    return (Date)this.j.clone();
  }

  public Date getLastBusTime()
  {
    if (this.k == null)
      return null;
    return (Date)this.k.clone();
  }

  public String getOriginatingStation()
  {
    return this.h;
  }

  public String getTerminalStation()
  {
    return this.i;
  }

  public float getTotalPrice()
  {
    return this.n;
  }

  public int hashCode()
  {
    if (this.g == null);
    for (int i1 = 0; ; i1 = this.g.hashCode())
      return i1 + 31;
  }

  public void setBasicPrice(float paramFloat)
  {
    this.m = paramFloat;
  }

  public void setBounds(List<LatLonPoint> paramList)
  {
    this.f = paramList;
  }

  public void setBusCompany(String paramString)
  {
    this.l = paramString;
  }

  public void setBusLineId(String paramString)
  {
    this.g = paramString;
  }

  public void setBusLineName(String paramString)
  {
    this.b = paramString;
  }

  public void setBusLineType(String paramString)
  {
    this.c = paramString;
  }

  public void setBusStations(List<BusStationItem> paramList)
  {
    this.o = paramList;
  }

  public void setCityCode(String paramString)
  {
    this.d = paramString;
  }

  public void setDirectionsCoordinates(List<LatLonPoint> paramList)
  {
    this.e = paramList;
  }

  public void setDistance(float paramFloat)
  {
    this.a = paramFloat;
  }

  public void setFirstBusTime(Date paramDate)
  {
    if (paramDate == null)
    {
      this.j = null;
      return;
    }
    this.j = ((Date)paramDate.clone());
  }

  public void setLastBusTime(Date paramDate)
  {
    if (paramDate == null)
    {
      this.k = null;
      return;
    }
    this.k = ((Date)paramDate.clone());
  }

  public void setOriginatingStation(String paramString)
  {
    this.h = paramString;
  }

  public void setTerminalStation(String paramString)
  {
    this.i = paramString;
  }

  public void setTotalPrice(float paramFloat)
  {
    this.n = paramFloat;
  }

  public String toString()
  {
    return this.b + " " + i.a(this.j) + "-" + i.a(this.k);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeList(this.e);
    paramParcel.writeList(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(i.a(this.j));
    paramParcel.writeString(i.a(this.k));
    paramParcel.writeString(this.l);
    paramParcel.writeFloat(this.m);
    paramParcel.writeFloat(this.n);
    paramParcel.writeList(this.o);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusLineItem
 * JD-Core Version:    0.6.2
 */