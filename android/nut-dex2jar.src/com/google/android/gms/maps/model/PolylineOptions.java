package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final r CREATOR = new r();
  final int a;
  final List<LatLng> b;
  float c = 10.0F;
  int d = -16777216;
  float e = 0.0F;
  boolean f = true;
  boolean g = false;
  boolean h = false;

  public PolylineOptions()
  {
    this.a = 1;
    this.b = new ArrayList();
  }

  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.a = paramInt1;
    this.b = paramList;
    this.c = paramFloat1;
    this.d = paramInt2;
    this.e = paramFloat2;
    this.f = paramBoolean1;
    this.g = paramBoolean2;
    this.h = paramBoolean3;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    r.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * JD-Core Version:    0.6.2
 */