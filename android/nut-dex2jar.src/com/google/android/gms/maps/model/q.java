package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;

public final class q
  implements Parcelable.Creator<PolygonOptions>
{
  static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramPolygonOptions.a);
    a.a(paramParcel, 2, paramPolygonOptions.b);
    List localList = paramPolygonOptions.c;
    if (localList != null)
    {
      int j = a.a(paramParcel, 3);
      paramParcel.writeList(localList);
      a.b(paramParcel, j);
    }
    a.a(paramParcel, 4, paramPolygonOptions.d);
    a.a(paramParcel, 5, paramPolygonOptions.e);
    a.a(paramParcel, 6, paramPolygonOptions.f);
    a.a(paramParcel, 7, paramPolygonOptions.g);
    a.a(paramParcel, 8, paramPolygonOptions.h);
    a.a(paramParcel, 9, paramPolygonOptions.i);
    a.a(paramParcel, 10, paramPolygonOptions.j);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.q
 * JD-Core Version:    0.6.2
 */