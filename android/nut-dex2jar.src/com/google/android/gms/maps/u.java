package com.google.android.gms.maps;

public final class u
{
  private static boolean a = false;

  // ERROR //
  public static int a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 18
    //   6: invokestatic 23	com/google/android/gms/common/internal/b:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: getstatic 10	com/google/android/gms/maps/u:a	Z
    //   13: istore_2
    //   14: iload_2
    //   15: ifeq +10 -> 25
    //   18: iconst_0
    //   19: istore_1
    //   20: ldc 2
    //   22: monitorexit
    //   23: iload_1
    //   24: ireturn
    //   25: aload_0
    //   26: invokestatic 28	com/google/android/gms/maps/a/am:a	(Landroid/content/Context;)Lcom/google/android/gms/maps/a/aq;
    //   29: astore_0
    //   30: aload_0
    //   31: invokeinterface 33 1 0
    //   36: invokestatic 36	com/google/android/gms/common/internal/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   39: checkcast 38	com/google/android/gms/maps/a/a
    //   42: putstatic 43	com/google/android/gms/maps/b:a	Lcom/google/android/gms/maps/a/a;
    //   45: aload_0
    //   46: invokeinterface 47 1 0
    //   51: astore_0
    //   52: getstatic 52	com/google/android/gms/maps/model/b:a	Lcom/google/android/gms/maps/model/a/d;
    //   55: ifnonnull +13 -> 68
    //   58: aload_0
    //   59: invokestatic 36	com/google/android/gms/common/internal/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   62: checkcast 54	com/google/android/gms/maps/model/a/d
    //   65: putstatic 52	com/google/android/gms/maps/model/b:a	Lcom/google/android/gms/maps/model/a/d;
    //   68: iconst_1
    //   69: putstatic 10	com/google/android/gms/maps/u:a	Z
    //   72: iconst_0
    //   73: istore_1
    //   74: goto -54 -> 20
    //   77: astore_0
    //   78: aload_0
    //   79: getfield 57	com/google/android/gms/common/GooglePlayServicesNotAvailableException:a	I
    //   82: istore_1
    //   83: goto -63 -> 20
    //   86: astore_0
    //   87: new 59	com/google/android/gms/maps/model/RuntimeRemoteException
    //   90: dup
    //   91: aload_0
    //   92: invokespecial 63	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   95: athrow
    //   96: astore_0
    //   97: ldc 2
    //   99: monitorexit
    //   100: aload_0
    //   101: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   25	30	77	com/google/android/gms/common/GooglePlayServicesNotAvailableException
    //   30	68	86	android/os/RemoteException
    //   3	14	96	finally
    //   25	30	96	finally
    //   30	68	96	finally
    //   68	72	96	finally
    //   78	83	96	finally
    //   87	96	96	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.u
 * JD-Core Version:    0.6.2
 */