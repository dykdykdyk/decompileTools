package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final q CREATOR = new q();
  final int a;
  final List<LatLng> b;
  final List<List<LatLng>> c;
  float d = 10.0F;
  int e = -16777216;
  int f = 0;
  float g = 0.0F;
  boolean h = true;
  boolean i = false;
  boolean j = false;

  public PolygonOptions()
  {
    this.a = 1;
    this.b = new ArrayList();
    this.c = new ArrayList();
  }

  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.a = paramInt1;
    this.b = paramList;
    this.c = paramList1;
    this.d = paramFloat1;
    this.e = paramInt2;
    this.f = paramInt3;
    this.g = paramFloat2;
    this.h = paramBoolean1;
    this.i = paramBoolean2;
    this.j = paramBoolean3;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    q.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * JD-Core Version:    0.6.2
 */