package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class t
  implements Parcelable.Creator<StreetViewPanoramaLink>
{
  static void a(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStreetViewPanoramaLink.a);
    a.a(paramParcel, 2, paramStreetViewPanoramaLink.b);
    a.a(paramParcel, 3, paramStreetViewPanoramaLink.c);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.t
 * JD-Core Version:    0.6.2
 */