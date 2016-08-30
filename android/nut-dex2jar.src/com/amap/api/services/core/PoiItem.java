package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.poisearch.IndoorData;
import com.amap.api.services.poisearch.SubPoiItem;
import java.util.ArrayList;
import java.util.List;

public class PoiItem
  implements Parcelable
{
  public static final Parcelable.Creator<PoiItem> CREATOR = new x();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e = "";
  private int f = -1;
  private LatLonPoint g;
  private LatLonPoint h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  protected final LatLonPoint mPoint;
  protected final String mSnippet;
  protected final String mTitle;
  private String n;
  private String o;
  private boolean p;
  private IndoorData q;
  private String r;
  private String s;
  private String t;
  private List<SubPoiItem> u = new ArrayList();

  protected PoiItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.c = paramParcel.readString();
    this.b = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readInt();
    this.mPoint = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.mTitle = paramParcel.readString();
    this.mSnippet = paramParcel.readString();
    this.d = paramParcel.readString();
    this.g = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.h = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.k = paramParcel.readString();
    boolean[] arrayOfBoolean = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean);
    this.p = arrayOfBoolean[0];
    this.l = paramParcel.readString();
    this.m = paramParcel.readString();
    this.n = paramParcel.readString();
    this.o = paramParcel.readString();
    this.r = paramParcel.readString();
    this.s = paramParcel.readString();
    this.t = paramParcel.readString();
    this.u = paramParcel.readArrayList(SubPoiItem.class.getClassLoader());
    this.q = ((IndoorData)paramParcel.readValue(IndoorData.class.getClassLoader()));
  }

  public PoiItem(String paramString1, LatLonPoint paramLatLonPoint, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.mPoint = paramLatLonPoint;
    this.mTitle = paramString2;
    this.mSnippet = paramString3;
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
        paramObject = (PoiItem)paramObject;
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
    return this.c;
  }

  public String getAdName()
  {
    return this.o;
  }

  public String getBusinessArea()
  {
    return this.s;
  }

  public String getCityCode()
  {
    return this.d;
  }

  public String getCityName()
  {
    return this.n;
  }

  public String getDirection()
  {
    return this.l;
  }

  public int getDistance()
  {
    return this.f;
  }

  public String getEmail()
  {
    return this.k;
  }

  public LatLonPoint getEnter()
  {
    return this.g;
  }

  public LatLonPoint getExit()
  {
    return this.h;
  }

  public IndoorData getIndoorData()
  {
    return this.q;
  }

  public LatLonPoint getLatLonPoint()
  {
    return this.mPoint;
  }

  public String getParkingType()
  {
    return this.t;
  }

  public String getPoiId()
  {
    return this.a;
  }

  public String getPostcode()
  {
    return this.j;
  }

  public String getProvinceCode()
  {
    return this.r;
  }

  public String getProvinceName()
  {
    return this.m;
  }

  public String getSnippet()
  {
    return this.mSnippet;
  }

  public List<SubPoiItem> getSubPois()
  {
    return this.u;
  }

  public String getTel()
  {
    return this.b;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public String getTypeDes()
  {
    return this.e;
  }

  public String getWebsite()
  {
    return this.i;
  }

  public int hashCode()
  {
    if (this.a == null);
    for (int i1 = 0; ; i1 = this.a.hashCode())
      return i1 + 31;
  }

  public boolean isIndoorMap()
  {
    return this.p;
  }

  public void setAdCode(String paramString)
  {
    this.c = paramString;
  }

  public void setAdName(String paramString)
  {
    this.o = paramString;
  }

  public void setBusinessArea(String paramString)
  {
    this.s = paramString;
  }

  public void setCityCode(String paramString)
  {
    this.d = paramString;
  }

  public void setCityName(String paramString)
  {
    this.n = paramString;
  }

  public void setDirection(String paramString)
  {
    this.l = paramString;
  }

  public void setDistance(int paramInt)
  {
    this.f = paramInt;
  }

  public void setEmail(String paramString)
  {
    this.k = paramString;
  }

  public void setEnter(LatLonPoint paramLatLonPoint)
  {
    this.g = paramLatLonPoint;
  }

  public void setExit(LatLonPoint paramLatLonPoint)
  {
    this.h = paramLatLonPoint;
  }

  public void setIndoorDate(IndoorData paramIndoorData)
  {
    this.q = paramIndoorData;
  }

  public void setIndoorMap(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public void setParkingType(String paramString)
  {
    this.t = paramString;
  }

  public void setPostcode(String paramString)
  {
    this.j = paramString;
  }

  public void setProvinceCode(String paramString)
  {
    this.r = paramString;
  }

  public void setProvinceName(String paramString)
  {
    this.m = paramString;
  }

  public void setSubPois(List<SubPoiItem> paramList)
  {
    this.u = paramList;
  }

  public void setTel(String paramString)
  {
    this.b = paramString;
  }

  public void setTypeDes(String paramString)
  {
    this.e = paramString;
  }

  public void setWebsite(String paramString)
  {
    this.i = paramString;
  }

  public String toString()
  {
    return this.mTitle;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeValue(this.mPoint);
    paramParcel.writeString(this.mTitle);
    paramParcel.writeString(this.mSnippet);
    paramParcel.writeString(this.d);
    paramParcel.writeValue(this.g);
    paramParcel.writeValue(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeString(this.k);
    paramParcel.writeBooleanArray(new boolean[] { this.p });
    paramParcel.writeString(this.l);
    paramParcel.writeString(this.m);
    paramParcel.writeString(this.n);
    paramParcel.writeString(this.o);
    paramParcel.writeString(this.r);
    paramParcel.writeString(this.s);
    paramParcel.writeString(this.t);
    paramParcel.writeList(this.u);
    paramParcel.writeValue(this.q);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.PoiItem
 * JD-Core Version:    0.6.2
 */