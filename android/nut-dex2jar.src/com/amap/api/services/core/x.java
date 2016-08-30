package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class x
  implements Parcelable.Creator<PoiItem>
{
  public final PoiItem a(Parcel paramParcel)
  {
    return new PoiItem(paramParcel);
  }

  public final PoiItem[] a(int paramInt)
  {
    return new PoiItem[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.x
 * JD-Core Version:    0.6.2
 */