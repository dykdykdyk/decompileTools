package com.amap.api.services.core;

import java.util.HashMap;
import java.util.Map;

public abstract class br
  implements bk<bs>
{
  private static final String a = bp.l;
  private static final String b = bp.m;
  private static final String c = bp.n;
  private static final String d = bp.f;
  private bs e = null;

  public static String a(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append(b).append("=").append(paramInt);
      return localStringBuilder.toString();
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  public static String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(a, paramString);
    return bj.a(localHashMap);
  }

  // ERROR //
  public android.content.ContentValues a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 44	com/amap/api/services/core/br:e	Lcom/amap/api/services/core/bs;
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 84	android/content/ContentValues
    //   14: dup
    //   15: invokespecial 85	android/content/ContentValues:<init>	()V
    //   18: astore_2
    //   19: aload_2
    //   20: getstatic 23	com/amap/api/services/core/br:a	Ljava/lang/String;
    //   23: aload_0
    //   24: getfield 44	com/amap/api/services/core/br:e	Lcom/amap/api/services/core/bs;
    //   27: invokevirtual 89	com/amap/api/services/core/bs:b	()Ljava/lang/String;
    //   30: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload_2
    //   34: getstatic 28	com/amap/api/services/core/br:b	Ljava/lang/String;
    //   37: aload_0
    //   38: getfield 44	com/amap/api/services/core/br:e	Lcom/amap/api/services/core/bs;
    //   41: invokevirtual 95	com/amap/api/services/core/bs:a	()I
    //   44: invokestatic 101	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   47: invokevirtual 104	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   50: aload_2
    //   51: getstatic 38	com/amap/api/services/core/br:d	Ljava/lang/String;
    //   54: aload_0
    //   55: getfield 44	com/amap/api/services/core/br:e	Lcom/amap/api/services/core/bs;
    //   58: invokevirtual 106	com/amap/api/services/core/bs:c	()Ljava/lang/String;
    //   61: invokestatic 110	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   64: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload_2
    //   68: getstatic 33	com/amap/api/services/core/br:c	Ljava/lang/String;
    //   71: aload_0
    //   72: getfield 44	com/amap/api/services/core/br:e	Lcom/amap/api/services/core/bs;
    //   75: invokevirtual 112	com/amap/api/services/core/bs:d	()I
    //   78: invokestatic 101	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   81: invokevirtual 104	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   84: aload_2
    //   85: areturn
    //   86: astore_2
    //   87: aload_2
    //   88: invokevirtual 66	java/lang/Throwable:printStackTrace	()V
    //   91: aload_1
    //   92: areturn
    //   93: astore_3
    //   94: aload_2
    //   95: astore_1
    //   96: aload_3
    //   97: astore_2
    //   98: goto -11 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   2	9	86	java/lang/Throwable
    //   11	19	86	java/lang/Throwable
    //   19	84	93	java/lang/Throwable
  }

  public void a(bs parambs)
  {
    this.e = parambs;
  }

  // ERROR //
  public bs b(android.database.Cursor paramCursor)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_1
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_1
    //   10: iconst_1
    //   11: invokeinterface 125 2 0
    //   16: astore 4
    //   18: aload_1
    //   19: iconst_2
    //   20: invokeinterface 129 2 0
    //   25: istore_2
    //   26: aload_1
    //   27: iconst_4
    //   28: invokeinterface 125 2 0
    //   33: astore 6
    //   35: aload_1
    //   36: iconst_3
    //   37: invokeinterface 129 2 0
    //   42: istore_3
    //   43: new 87	com/amap/api/services/core/bs
    //   46: dup
    //   47: invokespecial 130	com/amap/api/services/core/bs:<init>	()V
    //   50: astore_1
    //   51: aload_1
    //   52: aload 4
    //   54: invokevirtual 133	com/amap/api/services/core/bs:a	(Ljava/lang/String;)V
    //   57: aload_1
    //   58: iload_2
    //   59: invokevirtual 136	com/amap/api/services/core/bs:a	(I)V
    //   62: aload_1
    //   63: aload 6
    //   65: invokestatic 138	com/amap/api/services/core/by:b	(Ljava/lang/String;)Ljava/lang/String;
    //   68: invokevirtual 140	com/amap/api/services/core/bs:b	(Ljava/lang/String;)V
    //   71: aload_1
    //   72: iload_3
    //   73: invokevirtual 142	com/amap/api/services/core/bs:b	(I)V
    //   76: aload_1
    //   77: areturn
    //   78: astore 4
    //   80: aload 5
    //   82: astore_1
    //   83: aload 4
    //   85: invokevirtual 66	java/lang/Throwable:printStackTrace	()V
    //   88: aload_1
    //   89: areturn
    //   90: astore 4
    //   92: goto -9 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   9	51	78	java/lang/Throwable
    //   51	76	90	java/lang/Throwable
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.br
 * JD-Core Version:    0.6.2
 */