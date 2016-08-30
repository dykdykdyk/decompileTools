package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<IndoorData>
{
  public final IndoorData a(Parcel paramParcel)
  {
    return new IndoorData(paramParcel);
  }

  public final IndoorData[] a(int paramInt)
  {
    return new IndoorData[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.a
 * JD-Core Version:    0.6.2
 */