package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<DistrictItem>
{
  public final DistrictItem a(Parcel paramParcel)
  {
    return new DistrictItem(paramParcel);
  }

  public final DistrictItem[] a(int paramInt)
  {
    return new DistrictItem[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.a
 * JD-Core Version:    0.6.2
 */