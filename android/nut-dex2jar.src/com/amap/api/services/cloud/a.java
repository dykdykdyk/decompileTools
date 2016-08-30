package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<CloudImage>
{
  public final CloudImage a(Parcel paramParcel)
  {
    return new CloudImage(paramParcel);
  }

  public final CloudImage[] a(int paramInt)
  {
    return new CloudImage[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.a
 * JD-Core Version:    0.6.2
 */