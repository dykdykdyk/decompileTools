package com.bingerz.android.countrycodepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CountryCode
  implements Parcelable
{
  public static final Parcelable.Creator<CountryCode> CREATOR = new a();
  public int a;
  public String b;
  public String c;
  public int d;
  public String e;
  public int f;
  public String g;

  private CountryCode()
  {
  }

  public CountryCode(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramString1;
    this.c = paramString2;
    this.e = paramString3;
    this.d = paramInt2;
  }

  private CountryCode(Parcel paramParcel)
  {
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.e = paramParcel.readString();
    this.d = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.a = paramParcel.readInt();
    this.g = paramParcel.readString();
  }

  public final String a()
  {
    return "+" + this.d;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.f);
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.CountryCode
 * JD-Core Version:    0.6.2
 */