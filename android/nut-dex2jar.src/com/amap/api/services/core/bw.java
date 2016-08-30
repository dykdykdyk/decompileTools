package com.amap.api.services.core;

public class bw
  implements bk<bx>
{
  private static final String b = bp.o;
  private static final String c = bp.p;
  private static final String d = bp.q;
  private bx a = null;

  // ERROR //
  public android.content.ContentValues a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 38	com/amap/api/services/core/bw:a	Lcom/amap/api/services/core/bx;
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 43	android/content/ContentValues
    //   14: dup
    //   15: invokespecial 44	android/content/ContentValues:<init>	()V
    //   18: astore_2
    //   19: aload_2
    //   20: getstatic 22	com/amap/api/services/core/bw:b	Ljava/lang/String;
    //   23: aload_0
    //   24: getfield 38	com/amap/api/services/core/bw:a	Lcom/amap/api/services/core/bx;
    //   27: invokevirtual 49	com/amap/api/services/core/bx:a	()Z
    //   30: invokestatic 55	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   33: invokevirtual 59	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   36: aload_2
    //   37: getstatic 27	com/amap/api/services/core/bw:c	Ljava/lang/String;
    //   40: aload_0
    //   41: getfield 38	com/amap/api/services/core/bw:a	Lcom/amap/api/services/core/bx;
    //   44: invokevirtual 61	com/amap/api/services/core/bx:b	()Z
    //   47: invokestatic 55	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   50: invokevirtual 59	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   53: aload_2
    //   54: getstatic 32	com/amap/api/services/core/bw:d	Ljava/lang/String;
    //   57: aload_0
    //   58: getfield 38	com/amap/api/services/core/bw:a	Lcom/amap/api/services/core/bx;
    //   61: invokevirtual 63	com/amap/api/services/core/bx:c	()Z
    //   64: invokestatic 55	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   67: invokevirtual 59	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   70: aload_2
    //   71: areturn
    //   72: astore_2
    //   73: aload_2
    //   74: invokevirtual 66	java/lang/Throwable:printStackTrace	()V
    //   77: aload_1
    //   78: areturn
    //   79: astore_3
    //   80: aload_2
    //   81: astore_1
    //   82: aload_3
    //   83: astore_2
    //   84: goto -11 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   2	9	72	java/lang/Throwable
    //   11	19	72	java/lang/Throwable
    //   19	70	79	java/lang/Throwable
  }

  public void a(bx parambx)
  {
    this.a = parambx;
  }

  // ERROR //
  public bx b(android.database.Cursor paramCursor)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: aload_1
    //   4: iconst_1
    //   5: invokeinterface 80 2 0
    //   10: istore_2
    //   11: aload_1
    //   12: iconst_2
    //   13: invokeinterface 80 2 0
    //   18: istore_3
    //   19: aload_1
    //   20: iconst_3
    //   21: invokeinterface 80 2 0
    //   26: istore 4
    //   28: iload_2
    //   29: ifne +37 -> 66
    //   32: iconst_0
    //   33: istore 5
    //   35: goto +59 -> 94
    //   38: new 46	com/amap/api/services/core/bx
    //   41: dup
    //   42: invokespecial 81	com/amap/api/services/core/bx:<init>	()V
    //   45: astore_1
    //   46: aload_1
    //   47: iload 5
    //   49: invokevirtual 84	com/amap/api/services/core/bx:a	(Z)V
    //   52: aload_1
    //   53: iload 7
    //   55: invokevirtual 86	com/amap/api/services/core/bx:c	(Z)V
    //   58: aload_1
    //   59: iload 6
    //   61: invokevirtual 88	com/amap/api/services/core/bx:b	(Z)V
    //   64: aload_1
    //   65: areturn
    //   66: iconst_1
    //   67: istore 5
    //   69: goto +25 -> 94
    //   72: iconst_1
    //   73: istore 6
    //   75: goto +26 -> 101
    //   78: astore 8
    //   80: aconst_null
    //   81: astore_1
    //   82: aload 8
    //   84: invokevirtual 66	java/lang/Throwable:printStackTrace	()V
    //   87: aload_1
    //   88: areturn
    //   89: astore 8
    //   91: goto -9 -> 82
    //   94: iload_3
    //   95: ifne -23 -> 72
    //   98: iconst_0
    //   99: istore 6
    //   101: iload 4
    //   103: ifne -65 -> 38
    //   106: iconst_0
    //   107: istore 7
    //   109: goto -71 -> 38
    //
    // Exception table:
    //   from	to	target	type
    //   3	28	78	java/lang/Throwable
    //   38	46	78	java/lang/Throwable
    //   46	64	89	java/lang/Throwable
  }

  public String b()
  {
    return bp.e;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bw
 * JD-Core Version:    0.6.2
 */