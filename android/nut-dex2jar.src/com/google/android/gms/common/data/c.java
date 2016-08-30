package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class c
  implements Parcelable.Creator<DataHolder>
{
  static void a(DataHolder paramDataHolder, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    String[] arrayOfString = paramDataHolder.b;
    if (arrayOfString != null)
    {
      int j = a.a(paramParcel, 1);
      paramParcel.writeStringArray(arrayOfString);
      a.b(paramParcel, j);
    }
    a.a(paramParcel, 2, paramDataHolder.d, paramInt);
    a.a(paramParcel, 3, paramDataHolder.e);
    a.a(paramParcel, 4, paramDataHolder.f);
    a.a(paramParcel, 1000, paramDataHolder.a);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.data.c
 * JD-Core Version:    0.6.2
 */