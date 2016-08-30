package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.model.a.y;

public final class x
  implements Parcelable.Creator<TileOverlayOptions>
{
  static void a(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramTileOverlayOptions.a);
    a.a(paramParcel, 2, paramTileOverlayOptions.b.asBinder());
    a.a(paramParcel, 3, paramTileOverlayOptions.c);
    a.a(paramParcel, 4, paramTileOverlayOptions.d);
    a.a(paramParcel, 5, paramTileOverlayOptions.e);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.x
 * JD-Core Version:    0.6.2
 */