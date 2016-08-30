package com.nut.blehunter.b;

import android.location.Address;
import android.text.TextUtils;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeRoad;
import com.amap.api.services.geocoder.StreetNumber;
import com.google.gson.annotations.SerializedName;
import com.nut.blehunter.o;
import java.util.Calendar;
import java.util.List;

public class a
{

  @SerializedName("createTime")
  public long a;

  @SerializedName("latitude")
  public double b;

  @SerializedName("longitude")
  public double c;

  @SerializedName("countryName")
  public String d;

  @SerializedName("adminArea")
  public String e;

  @SerializedName("subAdminArea")
  public String f;

  @SerializedName("locality")
  public String g;

  @SerializedName("subLocality")
  public String h;

  @SerializedName("thoroughfare")
  public String i;

  @SerializedName("subThoroughfare")
  public String j;

  @SerializedName("thoroughfareNumber")
  public String k;

  private a()
  {
  }

  public a(double paramDouble1, double paramDouble2, Address paramAddress)
  {
    this.a = Calendar.getInstance().getTimeInMillis();
    this.b = paramDouble1;
    this.c = paramDouble2;
    this.d = paramAddress.getCountryName();
    this.e = paramAddress.getAdminArea();
    this.f = paramAddress.getSubAdminArea();
    this.g = paramAddress.getLocality();
    this.h = paramAddress.getSubLocality();
    this.i = paramAddress.getThoroughfare();
    this.j = paramAddress.getSubThoroughfare();
  }

  public a(double paramDouble1, double paramDouble2, RegeocodeAddress paramRegeocodeAddress)
  {
    this.a = Calendar.getInstance().getTimeInMillis();
    this.b = paramDouble1;
    this.c = paramDouble2;
    this.e = paramRegeocodeAddress.getProvince();
    this.f = paramRegeocodeAddress.getCity();
    this.g = paramRegeocodeAddress.getDistrict();
    this.h = paramRegeocodeAddress.getTownship();
    this.i = paramRegeocodeAddress.getNeighborhood();
    Object localObject = paramRegeocodeAddress.getRoads();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = (RegeocodeRoad)((List)localObject).get(0);
      if (localObject != null)
        this.j = ((RegeocodeRoad)localObject).getName();
    }
    if (paramRegeocodeAddress.getStreetNumber() != null)
      this.k = paramRegeocodeAddress.getStreetNumber().getNumber();
  }

  public final boolean a()
  {
    return !TextUtils.isEmpty(this.e + this.f + this.g + this.h + this.i);
  }

  public final String b()
  {
    if (!a())
      return "";
    if (o.a().c())
      return String.format("%s %s%s,%s,%s%s,%s", new Object[] { this.k, this.i, this.j, this.g, this.f, this.e, this.d });
    return String.format("%s%s%s%s%s", new Object[] { this.e, this.f, this.g, this.j, this.k });
  }

  public String toString()
  {
    return "MixAddress{createTime=" + this.a + ", latitude=" + this.b + ", longitude=" + this.c + ", countryName='" + this.d + '\'' + ", adminArea='" + this.e + '\'' + ", subAdminArea='" + this.f + '\'' + ", locality='" + this.g + '\'' + ", subLocality='" + this.h + '\'' + ", thoroughfare='" + this.i + '\'' + ", subThoroughfare='" + this.j + '\'' + ", thoroughfareNumber='" + this.k + '\'' + '}';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.b.a
 * JD-Core Version:    0.6.2
 */