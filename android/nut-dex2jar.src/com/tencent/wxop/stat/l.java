package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.b.b;
import com.tencent.wxop.stat.b.f;
import java.util.Arrays;
import java.util.List;
import org.apache.http.impl.client.DefaultHttpClient;

class l
{
  static b a = com.tencent.wxop.stat.b.l.c();
  static Context e = null;
  private static l g = null;
  DefaultHttpClient b;
  f c;
  StringBuilder d;
  long f;

  // ERROR //
  private l(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 38	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aconst_null
    //   6: putfield 40	com/tencent/wxop/stat/l:b	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 42	com/tencent/wxop/stat/l:c	Lcom/tencent/wxop/stat/b/f;
    //   14: aload_0
    //   15: new 44	java/lang/StringBuilder
    //   18: dup
    //   19: sipush 4096
    //   22: invokespecial 47	java/lang/StringBuilder:<init>	(I)V
    //   25: putfield 49	com/tencent/wxop/stat/l:d	Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: lconst_0
    //   30: putfield 51	com/tencent/wxop/stat/l:f	J
    //   33: aload_1
    //   34: invokevirtual 57	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   37: putstatic 31	com/tencent/wxop/stat/l:e	Landroid/content/Context;
    //   40: aload_0
    //   41: invokestatic 63	java/lang/System:currentTimeMillis	()J
    //   44: ldc2_w 64
    //   47: ldiv
    //   48: putfield 51	com/tencent/wxop/stat/l:f	J
    //   51: aload_0
    //   52: new 67	com/tencent/wxop/stat/b/f
    //   55: dup
    //   56: invokespecial 68	com/tencent/wxop/stat/b/f:<init>	()V
    //   59: putfield 42	com/tencent/wxop/stat/l:c	Lcom/tencent/wxop/stat/b/f;
    //   62: invokestatic 73	com/tencent/wxop/stat/t:b	()Z
    //   65: istore_2
    //   66: iload_2
    //   67: ifeq +65 -> 132
    //   70: ldc 75
    //   72: invokestatic 81	java/util/logging/Logger:getLogger	(Ljava/lang/String;)Ljava/util/logging/Logger;
    //   75: getstatic 87	java/util/logging/Level:FINER	Ljava/util/logging/Level;
    //   78: invokevirtual 91	java/util/logging/Logger:setLevel	(Ljava/util/logging/Level;)V
    //   81: ldc 93
    //   83: invokestatic 81	java/util/logging/Logger:getLogger	(Ljava/lang/String;)Ljava/util/logging/Logger;
    //   86: getstatic 87	java/util/logging/Level:FINER	Ljava/util/logging/Level;
    //   89: invokevirtual 91	java/util/logging/Logger:setLevel	(Ljava/util/logging/Level;)V
    //   92: ldc 95
    //   94: ldc 97
    //   96: invokestatic 101	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   99: pop
    //   100: ldc 103
    //   102: ldc 105
    //   104: invokestatic 101	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   107: pop
    //   108: ldc 107
    //   110: ldc 109
    //   112: invokestatic 101	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   115: pop
    //   116: ldc 111
    //   118: ldc 109
    //   120: invokestatic 101	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   123: pop
    //   124: ldc 113
    //   126: ldc 109
    //   128: invokestatic 101	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   131: pop
    //   132: new 115	org/apache/http/params/BasicHttpParams
    //   135: dup
    //   136: invokespecial 116	org/apache/http/params/BasicHttpParams:<init>	()V
    //   139: astore_1
    //   140: aload_1
    //   141: iconst_0
    //   142: invokestatic 122	org/apache/http/params/HttpConnectionParams:setStaleCheckingEnabled	(Lorg/apache/http/params/HttpParams;Z)V
    //   145: aload_1
    //   146: sipush 10000
    //   149: invokestatic 126	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   152: aload_1
    //   153: sipush 10000
    //   156: invokestatic 129	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   159: aload_0
    //   160: new 131	org/apache/http/impl/client/DefaultHttpClient
    //   163: dup
    //   164: aload_1
    //   165: invokespecial 134	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   168: putfield 40	com/tencent/wxop/stat/l:b	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   171: aload_0
    //   172: getfield 40	com/tencent/wxop/stat/l:b	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   175: new 136	com/tencent/wxop/stat/m
    //   178: dup
    //   179: aload_0
    //   180: invokespecial 139	com/tencent/wxop/stat/m:<init>	(Lcom/tencent/wxop/stat/l;)V
    //   183: invokevirtual 143	org/apache/http/impl/client/DefaultHttpClient:setKeepAliveStrategy	(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    //   186: return
    //   187: astore_1
    //   188: getstatic 27	com/tencent/wxop/stat/l:a	Lcom/tencent/wxop/stat/b/b;
    //   191: aload_1
    //   192: invokevirtual 148	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   195: return
    //   196: astore_1
    //   197: goto -65 -> 132
    //
    // Exception table:
    //   from	to	target	type
    //   33	66	187	java/lang/Throwable
    //   132	186	187	java/lang/Throwable
    //   70	132	196	java/lang/Throwable
  }

  static Context a()
  {
    return e;
  }

  static void a(Context paramContext)
  {
    e = paramContext.getApplicationContext();
  }

  static l b(Context paramContext)
  {
    if (g == null);
    try
    {
      if (g == null)
        g = new l(paramContext);
      return g;
    }
    finally
    {
    }
    throw paramContext;
  }

  final void a(d paramd, k paramk)
  {
    a(Arrays.asList(new String[] { paramd.f() }), paramk);
  }

  final void a(List<?> paramList, k paramk)
  {
    if (this.c != null)
      this.c.a(new n(this, paramList, paramk));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.l
 * JD-Core Version:    0.6.2
 */