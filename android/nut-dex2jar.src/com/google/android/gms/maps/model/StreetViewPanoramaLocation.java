package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class StreetViewPanoramaLocation
  implements SafeParcelable
{
  public static final u CREATOR = new u();
  final int a;
  public final StreetViewPanoramaLink[] b;
  public final LatLng c;
  public final String d;

  StreetViewPanoramaLocation(int paramInt, StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    this.a = paramInt;
    this.b = paramArrayOfStreetViewPanoramaLink;
    this.c = paramLatLng;
    this.d = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof StreetViewPanoramaLocation))
        return false;
      paramObject = (StreetViewPanoramaLocation)paramObject;
    }
    while ((this.d.equals(paramObject.d)) && (this.c.equals(paramObject.c)));
    return false;
  }

  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.c, this.d });
  }

  public String toString()
  {
    return bn.a(this).a("panoId", this.d).a("position", this.c.toString()).toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    u.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocation
 * JD-Core Version:    0.6.2
 */