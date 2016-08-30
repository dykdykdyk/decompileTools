package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class l
  implements Parcelable.Creator<VisibleRegion>
{
  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramVisibleRegion.a());
    paramParcel.writeParcelable(paramVisibleRegion.nearLeft, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.nearRight, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.farLeft, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.farRight, paramInt);
    paramParcel.writeParcelable(paramVisibleRegion.latLngBounds, paramInt);
  }

  // ERROR //
  public VisibleRegion a(Parcel paramParcel)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aload_1
    //   4: invokevirtual 52	android/os/Parcel:readInt	()I
    //   7: istore_2
    //   8: aload_1
    //   9: ldc 54
    //   11: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   14: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   17: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   20: astore_3
    //   21: aload_1
    //   22: ldc 54
    //   24: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   27: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   30: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   33: astore 4
    //   35: aload_1
    //   36: ldc 54
    //   38: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   41: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   44: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   47: astore 5
    //   49: aload_1
    //   50: ldc 54
    //   52: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   55: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   58: checkcast 54	com/amap/api/maps2d/model/LatLng
    //   61: astore 7
    //   63: aload_1
    //   64: ldc 66
    //   66: invokevirtual 60	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   69: invokevirtual 64	android/os/Parcel:readParcelable	(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    //   72: checkcast 66	com/amap/api/maps2d/model/LatLngBounds
    //   75: astore_1
    //   76: aload_1
    //   77: astore 9
    //   79: aload 7
    //   81: astore 8
    //   83: aload 5
    //   85: astore 7
    //   87: aload 4
    //   89: astore 6
    //   91: aload_3
    //   92: astore_1
    //   93: new 16	com/amap/api/maps2d/model/VisibleRegion
    //   96: dup
    //   97: iload_2
    //   98: aload_1
    //   99: aload 6
    //   101: aload 7
    //   103: aload 8
    //   105: aload 9
    //   107: invokespecial 69	com/amap/api/maps2d/model/VisibleRegion:<init>	(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    //   110: areturn
    //   111: astore 6
    //   113: aconst_null
    //   114: astore 5
    //   116: aconst_null
    //   117: astore 4
    //   119: aconst_null
    //   120: astore_3
    //   121: aconst_null
    //   122: astore_1
    //   123: aload 6
    //   125: ldc 71
    //   127: ldc 73
    //   129: invokestatic 78	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload_3
    //   133: astore 6
    //   135: aload 4
    //   137: astore 7
    //   139: aload 5
    //   141: astore 8
    //   143: goto -50 -> 93
    //   146: astore 6
    //   148: aconst_null
    //   149: astore 5
    //   151: aconst_null
    //   152: astore 4
    //   154: aconst_null
    //   155: astore 7
    //   157: aload_3
    //   158: astore_1
    //   159: aload 7
    //   161: astore_3
    //   162: goto -39 -> 123
    //   165: astore 6
    //   167: aconst_null
    //   168: astore 5
    //   170: aconst_null
    //   171: astore 7
    //   173: aload_3
    //   174: astore_1
    //   175: aload 4
    //   177: astore_3
    //   178: aload 7
    //   180: astore 4
    //   182: goto -59 -> 123
    //   185: astore 6
    //   187: aconst_null
    //   188: astore 7
    //   190: aload_3
    //   191: astore_1
    //   192: aload 4
    //   194: astore_3
    //   195: aload 5
    //   197: astore 4
    //   199: aload 7
    //   201: astore 5
    //   203: goto -80 -> 123
    //   206: astore 6
    //   208: aload_3
    //   209: astore_1
    //   210: aload 4
    //   212: astore_3
    //   213: aload 5
    //   215: astore 4
    //   217: aload 7
    //   219: astore 5
    //   221: goto -98 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   8	21	111	android/os/BadParcelableException
    //   21	35	146	android/os/BadParcelableException
    //   35	49	165	android/os/BadParcelableException
    //   49	63	185	android/os/BadParcelableException
    //   63	76	206	android/os/BadParcelableException
  }

  public VisibleRegion[] a(int paramInt)
  {
    return new VisibleRegion[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.l
 * JD-Core Version:    0.6.2
 */