package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class e
  implements Parcelable.Creator<LatLngBounds>
{
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramLatLngBounds.a());
    paramParcel.writeParcelable(paramLatLngBounds.southwest, paramInt);
    paramParcel.writeParcelable(paramLatLngBounds.northeast, paramInt);
  }

  // ERROR //
  public LatLngBounds a(Parcel paramParcel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 42	android/os/Parcel:readInt	()I
    //   4: istore_2
    //   5: aload_1
    //   6: ldc 16
    //   8: invokevirtual 48	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   11: invokevirtual 52	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   14: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   17: astore_3
    //   18: aload_1
    //   19: ldc 16
    //   21: invokevirtual 48	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   24: invokevirtual 52	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   27: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   30: astore 4
    //   32: aload_3
    //   33: astore_1
    //   34: new 16	com/amap/api/maps2d/model/LatLngBounds
    //   37: dup
    //   38: iload_2
    //   39: aload_1
    //   40: aload 4
    //   42: invokespecial 57	com/amap/api/maps2d/model/LatLngBounds:<init>	(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    //   45: areturn
    //   46: astore_3
    //   47: aconst_null
    //   48: astore_1
    //   49: aload_3
    //   50: ldc 59
    //   52: ldc 61
    //   54: invokestatic 66	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   57: aconst_null
    //   58: astore 4
    //   60: goto -26 -> 34
    //   63: astore 4
    //   65: aload_3
    //   66: astore_1
    //   67: aload 4
    //   69: astore_3
    //   70: goto -21 -> 49
    //
    // Exception table:
    //   from	to	target	type
    //   5	18	46	android/os/BadParcelableException
    //   18	32	63	android/os/BadParcelableException
  }

  public LatLngBounds[] a(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.e
 * JD-Core Version:    0.6.2
 */