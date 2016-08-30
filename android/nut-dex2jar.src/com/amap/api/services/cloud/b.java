package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<CloudItem>
{
  public final CloudItem a(Parcel paramParcel)
  {
    return new CloudItem(paramParcel);
  }

  public final CloudItem[] a(int paramInt)
  {
    return new CloudItem[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.b
 * JD-Core Version:    0.6.2
 */