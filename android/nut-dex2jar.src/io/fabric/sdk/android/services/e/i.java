package io.fabric.sdk.android.services.e;

import io.fabric.sdk.android.o;

final class i
  implements g
{
  private final o a;

  public i(o paramo)
  {
    this.a = paramo;
  }

  // ERROR //
  public final org.json.JSONObject a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: invokestatic 25	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   7: ldc 27
    //   9: ldc 29
    //   11: invokeinterface 34 3 0
    //   16: new 36	java/io/File
    //   19: dup
    //   20: new 38	io/fabric/sdk/android/services/d/b
    //   23: dup
    //   24: aload_0
    //   25: getfield 15	io/fabric/sdk/android/services/e/i:a	Lio/fabric/sdk/android/o;
    //   28: invokespecial 40	io/fabric/sdk/android/services/d/b:<init>	(Lio/fabric/sdk/android/o;)V
    //   31: invokevirtual 43	io/fabric/sdk/android/services/d/b:a	()Ljava/io/File;
    //   34: ldc 45
    //   36: invokespecial 48	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   39: astore_1
    //   40: aload_1
    //   41: invokevirtual 52	java/io/File:exists	()Z
    //   44: ifeq +38 -> 82
    //   47: new 54	java/io/FileInputStream
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 57	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   55: astore_1
    //   56: aload_1
    //   57: astore_2
    //   58: new 59	org/json/JSONObject
    //   61: dup
    //   62: aload_1
    //   63: invokestatic 64	io/fabric/sdk/android/services/b/l:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   66: invokespecial 67	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   69: astore_3
    //   70: aload_1
    //   71: astore_2
    //   72: aload_3
    //   73: astore_1
    //   74: aload_2
    //   75: ldc 69
    //   77: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   80: aload_1
    //   81: areturn
    //   82: invokestatic 25	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   85: ldc 27
    //   87: ldc 74
    //   89: invokeinterface 34 3 0
    //   94: aconst_null
    //   95: astore_1
    //   96: goto -22 -> 74
    //   99: astore_3
    //   100: aconst_null
    //   101: astore_1
    //   102: aload_1
    //   103: astore_2
    //   104: invokestatic 25	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   107: ldc 27
    //   109: ldc 76
    //   111: aload_3
    //   112: invokeinterface 80 4 0
    //   117: aload_1
    //   118: ldc 69
    //   120: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   123: aconst_null
    //   124: areturn
    //   125: astore_1
    //   126: aload_3
    //   127: astore_2
    //   128: aload_2
    //   129: ldc 69
    //   131: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   134: aload_1
    //   135: athrow
    //   136: astore_1
    //   137: goto -9 -> 128
    //   140: astore_3
    //   141: goto -39 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   16	56	99	java/lang/Exception
    //   82	94	99	java/lang/Exception
    //   16	56	125	finally
    //   82	94	125	finally
    //   58	70	136	finally
    //   104	117	136	finally
    //   58	70	140	java/lang/Exception
  }

  // ERROR //
  public final void a(long paramLong, org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: invokestatic 25	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   3: ldc 27
    //   5: ldc 83
    //   7: invokeinterface 34 3 0
    //   12: aload_3
    //   13: ifnull +75 -> 88
    //   16: aconst_null
    //   17: astore 4
    //   19: aload_3
    //   20: ldc 85
    //   22: lload_1
    //   23: invokevirtual 89	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   26: pop
    //   27: new 91	java/io/FileWriter
    //   30: dup
    //   31: new 36	java/io/File
    //   34: dup
    //   35: new 38	io/fabric/sdk/android/services/d/b
    //   38: dup
    //   39: aload_0
    //   40: getfield 15	io/fabric/sdk/android/services/e/i:a	Lio/fabric/sdk/android/o;
    //   43: invokespecial 40	io/fabric/sdk/android/services/d/b:<init>	(Lio/fabric/sdk/android/o;)V
    //   46: invokevirtual 43	io/fabric/sdk/android/services/d/b:a	()Ljava/io/File;
    //   49: ldc 45
    //   51: invokespecial 48	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   54: invokespecial 92	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   57: astore 5
    //   59: aload 5
    //   61: astore 4
    //   63: aload 5
    //   65: aload_3
    //   66: invokevirtual 96	org/json/JSONObject:toString	()Ljava/lang/String;
    //   69: invokevirtual 99	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   72: aload 5
    //   74: astore 4
    //   76: aload 5
    //   78: invokevirtual 102	java/io/FileWriter:flush	()V
    //   81: aload 5
    //   83: ldc 104
    //   85: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   88: return
    //   89: astore 6
    //   91: aconst_null
    //   92: astore_3
    //   93: aload_3
    //   94: astore 4
    //   96: invokestatic 25	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   99: ldc 27
    //   101: ldc 106
    //   103: aload 6
    //   105: invokeinterface 80 4 0
    //   110: aload_3
    //   111: ldc 104
    //   113: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   116: return
    //   117: astore_3
    //   118: aload 4
    //   120: ldc 104
    //   122: invokestatic 72	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   125: aload_3
    //   126: athrow
    //   127: astore_3
    //   128: goto -10 -> 118
    //   131: astore 6
    //   133: aload 5
    //   135: astore_3
    //   136: goto -43 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   19	59	89	java/lang/Exception
    //   19	59	117	finally
    //   63	72	127	finally
    //   76	81	127	finally
    //   96	110	127	finally
    //   63	72	131	java/lang/Exception
    //   76	81	131	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.i
 * JD-Core Version:    0.6.2
 */