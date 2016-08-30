package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final y CREATOR = new y();
  final int a;
  public final LatLng b;
  public final LatLng c;
  public final LatLng d;
  public final LatLng e;
  public final LatLngBounds f;

  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this.a = paramInt;
    this.b = paramLatLng1;
    this.c = paramLatLng2;
    this.d = paramLatLng3;
    this.e = paramLatLng4;
    this.f = paramLatLngBounds;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof VisibleRegion))
        return false;
      paramObject = (VisibleRegion)paramObject;
    }
    while ((this.b.equals(paramObject.b)) && (this.c.equals(paramObject.c)) && (this.d.equals(paramObject.d)) && (this.e.equals(paramObject.e)) && (this.f.equals(paramObject.f)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.b, this.c, this.d, this.e, this.f });
  }

  public final String toString()
  {
    return bn.a(this).a("nearLeft", this.b).a("nearRight", this.c).a("farLeft", this.d).a("farRight", this.e).a("latLngBounds", this.f).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * JD-Core Version:    0.6.2
 */