package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class LocalWeatherForecast
  implements Parcelable
{
  public static final Parcelable.Creator<LocalWeatherForecast> CREATOR = new b();
  private String a;
  private String b;
  private String c;
  private String d;
  private List<LocalDayWeatherForecast> e = new ArrayList();

  public LocalWeatherForecast()
  {
  }

  public LocalWeatherForecast(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readArrayList(LocalWeatherForecast.class.getClassLoader());
  }

  public int describeContents()
  {
    return 0;
  }

  public String getAdCode()
  {
    return this.c;
  }

  public String getCity()
  {
    return this.b;
  }

  public String getProvince()
  {
    return this.a;
  }

  public String getReportTime()
  {
    return this.d;
  }

  public List<LocalDayWeatherForecast> getWeatherForecast()
  {
    return this.e;
  }

  public void setAdCode(String paramString)
  {
    this.c = paramString;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setProvince(String paramString)
  {
    this.a = paramString;
  }

  public void setReportTime(String paramString)
  {
    this.d = paramString;
  }

  public void setWeatherForecast(List<LocalDayWeatherForecast> paramList)
  {
    this.e = paramList;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeList(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.LocalWeatherForecast
 * JD-Core Version:    0.6.2
 */