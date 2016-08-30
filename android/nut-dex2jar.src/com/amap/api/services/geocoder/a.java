package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<AoiItem>
{
  public final AoiItem a(Parcel paramParcel)
  {
    return new AoiItem(paramParcel);
  }

  public final AoiItem[] a(int paramInt)
  {
    return new AoiItem[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.a
 * JD-Core Version:    0.6.2
 */