package com.amap.api.services.core;

import android.os.HandlerThread;

class r extends HandlerThread
{
  r(q paramq, String paramString)
  {
    super(paramString);
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: invokestatic 26	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   3: ldc 28
    //   5: invokevirtual 31	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   8: new 33	android/os/Message
    //   11: dup
    //   12: invokespecial 35	android/os/Message:<init>	()V
    //   15: astore_1
    //   16: invokestatic 40	com/amap/api/services/core/q:a	()Landroid/content/Context;
    //   19: iconst_0
    //   20: invokestatic 46	com/amap/api/services/core/h:b	(Z)Lcom/amap/api/services/core/ar;
    //   23: ldc 48
    //   25: invokestatic 53	com/amap/api/services/core/am:a	(Landroid/content/Context;Lcom/amap/api/services/core/ar;Ljava/lang/String;)Lcom/amap/api/services/core/am$a;
    //   28: astore_2
    //   29: aload_2
    //   30: ifnull +35 -> 65
    //   33: aload_2
    //   34: getfield 59	com/amap/api/services/core/am$a:d	Lcom/amap/api/services/core/am$a$a;
    //   37: ifnull +28 -> 65
    //   40: aload_1
    //   41: new 61	com/amap/api/services/core/s
    //   44: dup
    //   45: aload_2
    //   46: getfield 59	com/amap/api/services/core/am$a:d	Lcom/amap/api/services/core/am$a$a;
    //   49: getfield 66	com/amap/api/services/core/am$a$a:b	Z
    //   52: aload_2
    //   53: getfield 59	com/amap/api/services/core/am$a:d	Lcom/amap/api/services/core/am$a$a;
    //   56: getfield 68	com/amap/api/services/core/am$a$a:a	Z
    //   59: invokespecial 71	com/amap/api/services/core/s:<init>	(ZZ)V
    //   62: putfield 75	android/os/Message:obj	Ljava/lang/Object;
    //   65: aload_1
    //   66: iconst_3
    //   67: putfield 79	android/os/Message:what	I
    //   70: aload_0
    //   71: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   74: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   77: ifnull +15 -> 92
    //   80: aload_0
    //   81: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   84: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   87: aload_1
    //   88: invokevirtual 88	com/amap/api/services/core/q$a:sendMessage	(Landroid/os/Message;)Z
    //   91: pop
    //   92: ldc2_w 89
    //   95: invokestatic 94	com/amap/api/services/core/r:sleep	(J)V
    //   98: return
    //   99: astore_2
    //   100: aload_2
    //   101: ldc 96
    //   103: ldc 97
    //   105: invokestatic 102	com/amap/api/services/core/i:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload_1
    //   109: iconst_3
    //   110: putfield 79	android/os/Message:what	I
    //   113: aload_0
    //   114: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   117: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   120: ifnull -28 -> 92
    //   123: aload_0
    //   124: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   127: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   130: aload_1
    //   131: invokevirtual 88	com/amap/api/services/core/q$a:sendMessage	(Landroid/os/Message;)Z
    //   134: pop
    //   135: goto -43 -> 92
    //   138: astore_2
    //   139: aload_1
    //   140: iconst_3
    //   141: putfield 79	android/os/Message:what	I
    //   144: aload_0
    //   145: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   148: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   151: ifnull +15 -> 166
    //   154: aload_0
    //   155: getfield 10	com/amap/api/services/core/r:a	Lcom/amap/api/services/core/q;
    //   158: invokestatic 82	com/amap/api/services/core/q:a	(Lcom/amap/api/services/core/q;)Lcom/amap/api/services/core/q$a;
    //   161: aload_1
    //   162: invokevirtual 88	com/amap/api/services/core/q$a:sendMessage	(Landroid/os/Message;)Z
    //   165: pop
    //   166: aload_2
    //   167: athrow
    //   168: astore_1
    //   169: aload_1
    //   170: ldc 96
    //   172: ldc 104
    //   174: invokestatic 102	com/amap/api/services/core/i:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   177: return
    //
    // Exception table:
    //   from	to	target	type
    //   16	29	99	java/lang/Throwable
    //   33	65	99	java/lang/Throwable
    //   16	29	138	finally
    //   33	65	138	finally
    //   100	108	138	finally
    //   92	98	168	java/lang/InterruptedException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.r
 * JD-Core Version:    0.6.2
 */