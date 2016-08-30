package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.road.Crossroad;
import com.amap.api.services.road.Road;
import java.util.ArrayList;
import java.util.List;

public final class RegeocodeAddress
  implements Parcelable
{
  public static final Parcelable.Creator<RegeocodeAddress> CREATOR = new d();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private StreetNumber h;
  private String i;
  private String j;
  private List<RegeocodeRoad> k = new ArrayList();
  private List<Crossroad> l = new ArrayList();
  private List<PoiItem> m = new ArrayList();
  private List<BusinessArea> n = new ArrayList();
  private List<AoiItem> o = new ArrayList();

  public RegeocodeAddress()
  {
  }

  private RegeocodeAddress(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = ((StreetNumber)paramParcel.readValue(StreetNumber.class.getClassLoader()));
    this.k = paramParcel.readArrayList(Road.class.getClassLoader());
    this.l = paramParcel.readArrayList(Crossroad.class.getClassLoader());
    this.m = paramParcel.readArrayList(PoiItem.class.getClassLoader());
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.n = paramParcel.readArrayList(BusinessArea.class.getClassLoader());
    this.o = paramParcel.readArrayList(AoiItem.class.getClassLoader());
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getAdCode()
  {
    return this.j;
  }

  public final List<AoiItem> getAois()
  {
    return this.o;
  }

  public final String getBuilding()
  {
    return this.g;
  }

  public final List<BusinessArea> getBusinessAreas()
  {
    return this.n;
  }

  public final String getCity()
  {
    return this.c;
  }

  public final String getCityCode()
  {
    return this.i;
  }

  public final List<Crossroad> getCrossroads()
  {
    return this.l;
  }

  public final String getDistrict()
  {
    return this.d;
  }

  public final String getFormatAddress()
  {
    return this.a;
  }

  public final String getNeighborhood()
  {
    return this.f;
  }

  public final List<PoiItem> getPois()
  {
    return this.m;
  }

  public final String getProvince()
  {
    return this.b;
  }

  public final List<RegeocodeRoad> getRoads()
  {
    return this.k;
  }

  public final StreetNumber getStreetNumber()
  {
    return this.h;
  }

  public final String getTownship()
  {
    return this.e;
  }

  public final void setAdCode(String paramString)
  {
    this.j = paramString;
  }

  public final void setAois(List<AoiItem> paramList)
  {
    this.o = paramList;
  }

  public final void setBuilding(String paramString)
  {
    this.g = paramString;
  }

  public final void setBusinessAreas(List<BusinessArea> paramList)
  {
    this.n = paramList;
  }

  public final void setCity(String paramString)
  {
    this.c = paramString;
  }

  public final void setCityCode(String paramString)
  {
    this.i = paramString;
  }

  public final void setCrossroads(List<Crossroad> paramList)
  {
    this.l = paramList;
  }

  public final void setDistrict(String paramString)
  {
    this.d = paramString;
  }

  public final void setFormatAddress(String paramString)
  {
    this.a = paramString;
  }

  public final void setNeighborhood(String paramString)
  {
    this.f = paramString;
  }

  public final void setPois(List<PoiItem> paramList)
  {
    this.m = paramList;
  }

  public final void setProvince(String paramString)
  {
    this.b = paramString;
  }

  public final void setRoads(List<RegeocodeRoad> paramList)
  {
    this.k = paramList;
  }

  public final void setStreetNumber(StreetNumber paramStreetNumber)
  {
    this.h = paramStreetNumber;
  }

  public final void setTownship(String paramString)
  {
    this.e = paramString;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeValue(this.h);
    paramParcel.writeList(this.k);
    paramParcel.writeList(this.l);
    paramParcel.writeList(this.m);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeList(this.n);
    paramParcel.writeList(this.o);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.RegeocodeAddress
 * JD-Core Version:    0.6.2
 */