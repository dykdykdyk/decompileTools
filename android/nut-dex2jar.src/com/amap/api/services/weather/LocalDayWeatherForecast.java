package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LocalDayWeatherForecast
  implements Parcelable
{
  public static final Parcelable.Creator<LocalDayWeatherForecast> CREATOR = new a();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;

  public LocalDayWeatherForecast()
  {
  }

  public LocalDayWeatherForecast(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public String getDate()
  {
    return this.a;
  }

  public String getDayTemp()
  {
    return this.e;
  }

  public String getDayWeather()
  {
    return this.c;
  }

  public String getDayWindDirection()
  {
    return this.g;
  }

  public String getDayWindPower()
  {
    return this.i;
  }

  public String getNightTemp()
  {
    return this.f;
  }

  public String getNightWeather()
  {
    return this.d;
  }

  public String getNightWindDirection()
  {
    return this.h;
  }

  public String getNightWindPower()
  {
    return this.j;
  }

  public String getWeek()
  {
    return this.b;
  }

  public void setDate(String paramString)
  {
    this.a = paramString;
  }

  public void setDayTemp(String paramString)
  {
    this.e = paramString;
  }

  public void setDayWeather(String paramString)
  {
    this.c = paramString;
  }

  public void setDayWindDirection(String paramString)
  {
    this.g = paramString;
  }

  public void setDayWindPower(String paramString)
  {
    this.i = paramString;
  }

  public void setNightTemp(String paramString)
  {
    this.f = paramString;
  }

  public void setNightWeather(String paramString)
  {
    this.d = paramString;
  }

  public void setNightWindDirection(String paramString)
  {
    this.h = paramString;
  }

  public void setNightWindPower(String paramString)
  {
    this.j = paramString;
  }

  public void setWeek(String paramString)
  {
    this.b = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.LocalDayWeatherForecast
 * JD-Core Version:    0.6.2
 */