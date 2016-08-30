package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<BusinessArea>
{
  public final BusinessArea a(Parcel paramParcel)
  {
    return new BusinessArea(paramParcel);
  }

  public final BusinessArea[] a(int paramInt)
  {
    return new BusinessArea[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.b
 * JD-Core Version:    0.6.2
 */