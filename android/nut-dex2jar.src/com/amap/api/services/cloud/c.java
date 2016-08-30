package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<CloudItemDetail>
{
  public final CloudItemDetail a(Parcel paramParcel)
  {
    return new CloudItemDetail(paramParcel);
  }

  public final CloudItemDetail[] a(int paramInt)
  {
    return new CloudItemDetail[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.c
 * JD-Core Version:    0.6.2
 */