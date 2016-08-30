package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final m CREATOR = new m();
  final int a;
  public final LatLng b;
  public final LatLng c;

  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    b.a(paramLatLng1, "null southwest");
    b.a(paramLatLng2, "null northeast");
    if (paramLatLng2.b >= paramLatLng1.b);
    for (boolean bool = true; ; bool = false)
    {
      b.a(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(paramLatLng1.b), Double.valueOf(paramLatLng2.b) });
      this.a = paramInt;
      this.b = paramLatLng1;
      this.c = paramLatLng2;
      return;
    }
  }

  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
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
      if (!(paramObject instanceof LatLngBounds))
        return false;
      paramObject = (LatLngBounds)paramObject;
    }
    while ((this.b.equals(paramObject.b)) && (this.c.equals(paramObject.c)));
    return false;
  }

  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.b, this.c });
  }

  public final String toString()
  {
    return bn.a(this).a("southwest", this.b).a("northeast", this.c).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * JD-Core Version:    0.6.2
 */