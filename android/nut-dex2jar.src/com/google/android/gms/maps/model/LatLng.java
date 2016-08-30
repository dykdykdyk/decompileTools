package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LatLng
  implements SafeParcelable
{
  public static final n CREATOR = new n();
  final int a;
  public final double b;
  public final double c;

  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }

  LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    this.a = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D));
    for (this.c = paramDouble2; ; this.c = (((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D))
    {
      this.b = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
      return;
    }
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
      if (!(paramObject instanceof LatLng))
        return false;
      paramObject = (LatLng)paramObject;
    }
    while ((Double.doubleToLongBits(this.b) == Double.doubleToLongBits(paramObject.b)) && (Double.doubleToLongBits(this.c) == Double.doubleToLongBits(paramObject.c)));
    return false;
  }

  public final int hashCode()
  {
    long l = Double.doubleToLongBits(this.b);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(this.c);
    return (i + 31) * 31 + (int)(l ^ l >>> 32);
  }

  public final String toString()
  {
    double d1 = this.b;
    double d2 = this.c;
    return 60 + "lat/lng: (" + d1 + "," + d2 + ")";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * JD-Core Version:    0.6.2
 */