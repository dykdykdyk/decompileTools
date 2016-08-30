package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class w
  implements Parcelable.Creator<Tile>
{
  static void a(Tile paramTile, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramTile.a);
    a.a(paramParcel, 2, paramTile.b);
    a.a(paramParcel, 3, paramTile.c);
    paramTile = paramTile.d;
    if (paramTile != null)
    {
      int j = a.a(paramParcel, 4);
      paramParcel.writeByteArray(paramTile);
      a.b(paramParcel, j);
    }
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.w
 * JD-Core Version:    0.6.2
 */