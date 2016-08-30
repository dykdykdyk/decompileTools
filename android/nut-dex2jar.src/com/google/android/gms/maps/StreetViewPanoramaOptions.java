package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.a.af;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final y CREATOR = new y();
  final int a;
  StreetViewPanoramaCamera b;
  String c;
  LatLng d;
  Integer e;
  Boolean f = Boolean.valueOf(true);
  Boolean g = Boolean.valueOf(true);
  Boolean h = Boolean.valueOf(true);
  Boolean i = Boolean.valueOf(true);
  Boolean j;

  public StreetViewPanoramaOptions()
  {
    this.a = 1;
  }

  StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    this.a = paramInt;
    this.b = paramStreetViewPanoramaCamera;
    this.d = paramLatLng;
    this.e = paramInteger;
    this.c = paramString;
    this.f = af.a(paramByte1);
    this.g = af.a(paramByte2);
    this.h = af.a(paramByte3);
    this.i = af.a(paramByte4);
    this.j = af.a(paramByte5);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * JD-Core Version:    0.6.2
 */