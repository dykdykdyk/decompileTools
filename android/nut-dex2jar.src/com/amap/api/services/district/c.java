package com.amap.api.services.district;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<DistrictSearchQuery>
{
  public final DistrictSearchQuery a(Parcel paramParcel)
  {
    boolean bool2 = true;
    DistrictSearchQuery localDistrictSearchQuery = new DistrictSearchQuery();
    localDistrictSearchQuery.setKeywords(paramParcel.readString());
    localDistrictSearchQuery.setKeywordsLevel(paramParcel.readString());
    localDistrictSearchQuery.setPageNum(paramParcel.readInt());
    localDistrictSearchQuery.setPageSize(paramParcel.readInt());
    if (paramParcel.readByte() == 1)
    {
      bool1 = true;
      localDistrictSearchQuery.setShowChild(bool1);
      if (paramParcel.readByte() != 1)
        break label87;
    }
    label87: for (boolean bool1 = bool2; ; bool1 = false)
    {
      localDistrictSearchQuery.setShowBoundary(bool1);
      return localDistrictSearchQuery;
      bool1 = false;
      break;
    }
  }

  public final DistrictSearchQuery[] a(int paramInt)
  {
    return new DistrictSearchQuery[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.c
 * JD-Core Version:    0.6.2
 */