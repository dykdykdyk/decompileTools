package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;

class bt
  implements an
{
  private String a = "ProjectionDelegateImp";
  private ad b;

  public bt(ad paramad)
  {
    this.b = paramad;
  }

  public Point a(LatLng paramLatLng)
    throws RemoteException
  {
    ak localak = new ak();
    this.b.b(paramLatLng.latitude, paramLatLng.longitude, localak);
    return new Point(localak.a, localak.b);
  }

  public LatLng a(Point paramPoint)
    throws RemoteException
  {
    x localx = new x();
    this.b.a(paramPoint.x, paramPoint.y, localx);
    return new LatLng(localx.b, localx.a);
  }

  // ERROR //
  public com.amap.api.maps2d.model.VisibleRegion a()
    throws RemoteException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aload_0
    //   4: getfield 21	com/amap/api/mapcore2d/bt:b	Lcom/amap/api/mapcore2d/ad;
    //   7: invokeinterface 79 1 0
    //   12: istore_1
    //   13: aload_0
    //   14: getfield 21	com/amap/api/mapcore2d/bt:b	Lcom/amap/api/mapcore2d/ad;
    //   17: invokeinterface 82 1 0
    //   22: istore_2
    //   23: aload_0
    //   24: new 44	android/graphics/Point
    //   27: dup
    //   28: iconst_0
    //   29: iconst_0
    //   30: invokespecial 52	android/graphics/Point:<init>	(II)V
    //   33: invokevirtual 84	com/amap/api/mapcore2d/bt:a	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   36: astore 6
    //   38: aload_0
    //   39: new 44	android/graphics/Point
    //   42: dup
    //   43: iload_1
    //   44: iconst_0
    //   45: invokespecial 52	android/graphics/Point:<init>	(II)V
    //   48: invokevirtual 84	com/amap/api/mapcore2d/bt:a	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   51: astore 7
    //   53: aload_0
    //   54: new 44	android/graphics/Point
    //   57: dup
    //   58: iconst_0
    //   59: iload_2
    //   60: invokespecial 52	android/graphics/Point:<init>	(II)V
    //   63: invokevirtual 84	com/amap/api/mapcore2d/bt:a	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   66: astore 5
    //   68: aload_0
    //   69: new 44	android/graphics/Point
    //   72: dup
    //   73: iload_1
    //   74: iload_2
    //   75: invokespecial 52	android/graphics/Point:<init>	(II)V
    //   78: invokevirtual 84	com/amap/api/mapcore2d/bt:a	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   81: astore_3
    //   82: invokestatic 90	com/amap/api/maps2d/model/LatLngBounds:builder	()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   85: aload 5
    //   87: invokevirtual 96	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   90: aload_3
    //   91: invokevirtual 96	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   94: aload 6
    //   96: invokevirtual 96	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   99: aload 7
    //   101: invokevirtual 96	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   104: invokevirtual 100	com/amap/api/maps2d/model/LatLngBounds$Builder:build	()Lcom/amap/api/maps2d/model/LatLngBounds;
    //   107: astore 4
    //   109: aload 6
    //   111: astore 8
    //   113: new 102	com/amap/api/maps2d/model/VisibleRegion
    //   116: dup
    //   117: aload 5
    //   119: aload_3
    //   120: aload 8
    //   122: aload 7
    //   124: aload 4
    //   126: invokespecial 105	com/amap/api/maps2d/model/VisibleRegion:<init>	(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    //   129: areturn
    //   130: astore 4
    //   132: aconst_null
    //   133: astore_3
    //   134: aconst_null
    //   135: astore 5
    //   137: aconst_null
    //   138: astore 6
    //   140: aconst_null
    //   141: astore 8
    //   143: aload 4
    //   145: aload_0
    //   146: getfield 19	com/amap/api/mapcore2d/bt:a	Ljava/lang/String;
    //   149: ldc 107
    //   151: invokestatic 112	com/amap/api/mapcore2d/cz:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   154: aload 6
    //   156: astore 7
    //   158: aload 9
    //   160: astore 4
    //   162: goto -49 -> 113
    //   165: astore 4
    //   167: aconst_null
    //   168: astore_3
    //   169: aconst_null
    //   170: astore 5
    //   172: aconst_null
    //   173: astore 7
    //   175: aload 6
    //   177: astore 8
    //   179: aload 7
    //   181: astore 6
    //   183: goto -40 -> 143
    //   186: astore 4
    //   188: aconst_null
    //   189: astore_3
    //   190: aconst_null
    //   191: astore 5
    //   193: aload 6
    //   195: astore 8
    //   197: aload 7
    //   199: astore 6
    //   201: goto -58 -> 143
    //   204: astore 4
    //   206: aconst_null
    //   207: astore_3
    //   208: aload 6
    //   210: astore 8
    //   212: aload 7
    //   214: astore 6
    //   216: goto -73 -> 143
    //   219: astore 4
    //   221: aload 6
    //   223: astore 8
    //   225: aload 7
    //   227: astore 6
    //   229: goto -86 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   3	38	130	java/lang/Throwable
    //   38	53	165	java/lang/Throwable
    //   53	68	186	java/lang/Throwable
    //   68	82	204	java/lang/Throwable
    //   82	109	219	java/lang/Throwable
  }

  public PointF b(LatLng paramLatLng)
    throws RemoteException
  {
    x localx = new x();
    this.b.a(paramLatLng.latitude, paramLatLng.longitude, localx);
    return new PointF((float)localx.a, (float)localx.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bt
 * JD-Core Version:    0.6.2
 */