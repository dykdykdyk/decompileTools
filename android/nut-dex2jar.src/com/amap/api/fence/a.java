package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<Fence>
{
  public final Fence a(Parcel paramParcel)
  {
    return new Fence(paramParcel, null);
  }

  public final Fence[] a(int paramInt)
  {
    return new Fence[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.fence.a
 * JD-Core Version:    0.6.2
 */