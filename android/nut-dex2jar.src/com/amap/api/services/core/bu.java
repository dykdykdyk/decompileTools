package com.amap.api.services.core;

import android.database.Cursor;
import java.util.HashMap;
import java.util.Map;

public class bu
  implements bk<ar>
{
  private static String a = bp.f;
  private static String b = bp.g;
  private static String c = bp.k;
  private static String d = bp.h;
  private static String e = bp.i;
  private static String f = bp.j;
  private ar g = null;

  public static String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(a, by.a(paramString));
    return bj.a(localHashMap);
  }

  private String a(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null)
      return null;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(paramArrayOfString[i]).append(";");
        i += 1;
      }
      paramArrayOfString = localStringBuilder.toString();
      return paramArrayOfString;
    }
    catch (Throwable paramArrayOfString)
    {
      paramArrayOfString.printStackTrace();
    }
    return null;
  }

  private String[] b(String paramString)
  {
    try
    {
      paramString = paramString.split(";");
      return paramString;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }

  public static String c()
  {
    return c + "=1";
  }

  // ERROR //
  public android.content.ContentValues a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 102	android/content/ContentValues
    //   14: dup
    //   15: invokespecial 103	android/content/ContentValues:<init>	()V
    //   18: astore_2
    //   19: aload_2
    //   20: getstatic 24	com/amap/api/services/core/bu:a	Ljava/lang/String;
    //   23: aload_0
    //   24: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   27: invokevirtual 107	com/amap/api/services/core/ar:a	()Ljava/lang/String;
    //   30: invokestatic 61	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   33: invokevirtual 110	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: aload_2
    //   37: getstatic 28	com/amap/api/services/core/bu:b	Ljava/lang/String;
    //   40: aload_0
    //   41: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   44: invokevirtual 112	com/amap/api/services/core/ar:b	()Ljava/lang/String;
    //   47: invokestatic 61	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   50: invokevirtual 110	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: aload_2
    //   54: getstatic 33	com/amap/api/services/core/bu:c	Ljava/lang/String;
    //   57: aload_0
    //   58: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   61: invokevirtual 115	com/amap/api/services/core/ar:e	()Z
    //   64: invokestatic 121	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   67: invokevirtual 124	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   70: aload_2
    //   71: getstatic 38	com/amap/api/services/core/bu:d	Ljava/lang/String;
    //   74: aload_0
    //   75: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   78: invokevirtual 126	com/amap/api/services/core/ar:c	()Ljava/lang/String;
    //   81: invokestatic 61	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   84: invokevirtual 110	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload_2
    //   88: getstatic 47	com/amap/api/services/core/bu:f	Ljava/lang/String;
    //   91: aload_0
    //   92: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   95: invokevirtual 128	com/amap/api/services/core/ar:d	()Ljava/lang/String;
    //   98: invokestatic 61	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   101: invokevirtual 110	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: aload_2
    //   105: getstatic 43	com/amap/api/services/core/bu:e	Ljava/lang/String;
    //   108: aload_0
    //   109: aload_0
    //   110: getfield 53	com/amap/api/services/core/bu:g	Lcom/amap/api/services/core/ar;
    //   113: invokevirtual 131	com/amap/api/services/core/ar:f	()[Ljava/lang/String;
    //   116: invokespecial 133	com/amap/api/services/core/bu:a	([Ljava/lang/String;)Ljava/lang/String;
    //   119: invokestatic 61	com/amap/api/services/core/by:a	(Ljava/lang/String;)Ljava/lang/String;
    //   122: invokevirtual 110	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload_2
    //   126: areturn
    //   127: astore_2
    //   128: aload_2
    //   129: invokevirtual 91	java/lang/Throwable:printStackTrace	()V
    //   132: aload_1
    //   133: areturn
    //   134: astore_3
    //   135: aload_2
    //   136: astore_1
    //   137: aload_3
    //   138: astore_2
    //   139: goto -11 -> 128
    //
    // Exception table:
    //   from	to	target	type
    //   2	9	127	java/lang/Throwable
    //   11	19	127	java/lang/Throwable
    //   19	125	134	java/lang/Throwable
  }

  public void a(ar paramar)
  {
    this.g = paramar;
  }

  public ar b(Cursor paramCursor)
  {
    boolean bool = true;
    try
    {
      String str1 = by.b(paramCursor.getString(1));
      String str2 = by.b(paramCursor.getString(2));
      String str3 = by.b(paramCursor.getString(3));
      String[] arrayOfString = b(by.b(paramCursor.getString(4)));
      String str4 = by.b(paramCursor.getString(5));
      if (paramCursor.getInt(6) == 0)
        bool = false;
      paramCursor = new ar.a(str1, str2, str3).a(bool).a(str4).a(arrayOfString).a();
      return paramCursor;
    }
    catch (ai paramCursor)
    {
      paramCursor.printStackTrace();
      return null;
    }
    catch (Throwable paramCursor)
    {
      while (true)
        paramCursor.printStackTrace();
    }
  }

  public String b()
  {
    return bp.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bu
 * JD-Core Version:    0.6.2
 */