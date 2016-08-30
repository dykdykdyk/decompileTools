package com.amap.api.services.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class CloudItemDetail extends CloudItem
  implements Parcelable
{
  public static final Parcelable.Creator<CloudItemDetail> CREATOR = new c();

  protected CloudItemDetail(Parcel paramParcel)
  {
    super(paramParcel);
  }

  public CloudItemDetail(String paramString1, LatLonPoint paramLatLonPoint, String paramString2, String paramString3)
  {
    super(paramString1, paramLatLonPoint, paramString2, paramString3);
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudItemDetail
 * JD-Core Version:    0.6.2
 */