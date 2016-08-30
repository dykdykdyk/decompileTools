package io.fabric.sdk.android.services.b;

import android.content.Context;

final class f
  implements i
{
  private final Context a;

  public f(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  // ERROR //
  public final b a()
  {
    // Byte code:
    //   0: invokestatic 35	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   3: invokestatic 38	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   6: if_acmpne +17 -> 23
    //   9: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   12: ldc 46
    //   14: ldc 48
    //   16: invokeinterface 53 3 0
    //   21: aconst_null
    //   22: areturn
    //   23: aload_0
    //   24: getfield 21	io/fabric/sdk/android/services/b/f:a	Landroid/content/Context;
    //   27: invokevirtual 57	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   30: ldc 59
    //   32: iconst_0
    //   33: invokevirtual 65	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   36: pop
    //   37: new 67	io/fabric/sdk/android/services/b/g
    //   40: dup
    //   41: iconst_0
    //   42: invokespecial 70	io/fabric/sdk/android/services/b/g:<init>	(B)V
    //   45: astore_2
    //   46: new 72	android/content/Intent
    //   49: dup
    //   50: ldc 74
    //   52: invokespecial 77	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   55: astore_3
    //   56: aload_3
    //   57: ldc 79
    //   59: invokevirtual 83	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   62: pop
    //   63: aload_0
    //   64: getfield 21	io/fabric/sdk/android/services/b/f:a	Landroid/content/Context;
    //   67: aload_3
    //   68: aload_2
    //   69: iconst_1
    //   70: invokevirtual 87	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   73: istore_1
    //   74: iload_1
    //   75: ifeq +123 -> 198
    //   78: new 89	io/fabric/sdk/android/services/b/h
    //   81: dup
    //   82: aload_2
    //   83: invokevirtual 92	io/fabric/sdk/android/services/b/g:a	()Landroid/os/IBinder;
    //   86: invokespecial 95	io/fabric/sdk/android/services/b/h:<init>	(Landroid/os/IBinder;)V
    //   89: astore_3
    //   90: new 97	io/fabric/sdk/android/services/b/b
    //   93: dup
    //   94: aload_3
    //   95: invokevirtual 100	io/fabric/sdk/android/services/b/h:a	()Ljava/lang/String;
    //   98: aload_3
    //   99: invokevirtual 103	io/fabric/sdk/android/services/b/h:b	()Z
    //   102: invokespecial 106	io/fabric/sdk/android/services/b/b:<init>	(Ljava/lang/String;Z)V
    //   105: astore_3
    //   106: aload_0
    //   107: getfield 21	io/fabric/sdk/android/services/b/f:a	Landroid/content/Context;
    //   110: aload_2
    //   111: invokevirtual 110	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   114: aload_3
    //   115: areturn
    //   116: astore_2
    //   117: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   120: ldc 46
    //   122: ldc 112
    //   124: invokeinterface 53 3 0
    //   129: aconst_null
    //   130: areturn
    //   131: astore_2
    //   132: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   135: ldc 46
    //   137: ldc 114
    //   139: aload_2
    //   140: invokeinterface 117 4 0
    //   145: aconst_null
    //   146: areturn
    //   147: astore_3
    //   148: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   151: ldc 46
    //   153: ldc 119
    //   155: aload_3
    //   156: invokeinterface 121 4 0
    //   161: aload_0
    //   162: getfield 21	io/fabric/sdk/android/services/b/f:a	Landroid/content/Context;
    //   165: aload_2
    //   166: invokevirtual 110	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   169: aconst_null
    //   170: areturn
    //   171: astore_2
    //   172: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   175: ldc 46
    //   177: ldc 123
    //   179: aload_2
    //   180: invokeinterface 117 4 0
    //   185: aconst_null
    //   186: areturn
    //   187: astore_3
    //   188: aload_0
    //   189: getfield 21	io/fabric/sdk/android/services/b/f:a	Landroid/content/Context;
    //   192: aload_2
    //   193: invokevirtual 110	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   196: aload_3
    //   197: athrow
    //   198: invokestatic 44	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   201: ldc 46
    //   203: ldc 123
    //   205: invokeinterface 53 3 0
    //   210: aconst_null
    //   211: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   23	37	116	android/content/pm/PackageManager$NameNotFoundException
    //   23	37	131	java/lang/Exception
    //   78	106	147	java/lang/Exception
    //   63	74	171	java/lang/Throwable
    //   106	114	171	java/lang/Throwable
    //   161	169	171	java/lang/Throwable
    //   188	198	171	java/lang/Throwable
    //   198	210	171	java/lang/Throwable
    //   78	106	187	finally
    //   148	161	187	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.f
 * JD-Core Version:    0.6.2
 */