package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class b
  implements Parcelable.Creator<DistrictResult>
{
  b(DistrictResult paramDistrictResult)
  {
  }

  public DistrictResult a(Parcel paramParcel)
  {
    return new DistrictResult(paramParcel);
  }

  public DistrictResult[] a(int paramInt)
  {
    return new DistrictResult[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.b
 * JD-Core Version:    0.6.2
 */