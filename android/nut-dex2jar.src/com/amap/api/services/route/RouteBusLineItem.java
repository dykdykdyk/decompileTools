package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.busline.BusLineItem;
import com.amap.api.services.busline.BusStationItem;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.List;

public class RouteBusLineItem extends BusLineItem
  implements Parcelable
{
  public static final Parcelable.Creator<RouteBusLineItem> CREATOR = new j();
  private BusStationItem a;
  private BusStationItem b;
  private List<LatLonPoint> c = new ArrayList();
  private int d;
  private List<BusStationItem> e = new ArrayList();
  private float f;

  public RouteBusLineItem()
  {
  }

  public RouteBusLineItem(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = ((BusStationItem)paramParcel.readParcelable(BusStationItem.class.getClassLoader()));
    this.b = ((BusStationItem)paramParcel.readParcelable(BusStationItem.class.getClassLoader()));
    this.c = paramParcel.createTypedArrayList(LatLonPoint.CREATOR);
    this.d = paramParcel.readInt();
    this.e = paramParcel.createTypedArrayList(BusStationItem.CREATOR);
    this.f = paramParcel.readFloat();
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
        if (!super.equals(paramObject))
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (RouteBusLineItem)paramObject;
        if (this.b == null)
        {
          if (paramObject.b != null)
            return false;
        }
        else if (!this.b.equals(paramObject.b))
          return false;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public BusStationItem getArrivalBusStation()
  {
    return this.b;
  }

  public BusStationItem getDepartureBusStation()
  {
    return this.a;
  }

  public float getDuration()
  {
    return this.f;
  }

  public int getPassStationNum()
  {
    return this.d;
  }

  public List<BusStationItem> getPassStations()
  {
    return this.e;
  }

  public List<LatLonPoint> getPolyline()
  {
    return this.c;
  }

  public int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    int i;
    if (this.b == null)
    {
      i = 0;
      if (this.a != null)
        break label46;
    }
    while (true)
    {
      return (i + k * 31) * 31 + j;
      i = this.b.hashCode();
      break;
      label46: j = this.a.hashCode();
    }
  }

  public void setArrivalBusStation(BusStationItem paramBusStationItem)
  {
    this.b = paramBusStationItem;
  }

  public void setDepartureBusStation(BusStationItem paramBusStationItem)
  {
    this.a = paramBusStationItem;
  }

  public void setDuration(float paramFloat)
  {
    this.f = paramFloat;
  }

  public void setPassStationNum(int paramInt)
  {
    this.d = paramInt;
  }

  public void setPassStations(List<BusStationItem> paramList)
  {
    this.e = paramList;
  }

  public void setPolyline(List<LatLonPoint> paramList)
  {
    this.c = paramList;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeParcelable(this.b, paramInt);
    paramParcel.writeTypedList(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeTypedList(this.e);
    paramParcel.writeFloat(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteBusLineItem
 * JD-Core Version:    0.6.2
 */