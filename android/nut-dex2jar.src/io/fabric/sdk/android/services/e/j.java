package io.fabric.sdk.android.services.e;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.b.q;
import io.fabric.sdk.android.services.d.c;
import io.fabric.sdk.android.services.d.d;
import org.json.JSONException;
import org.json.JSONObject;

final class j
  implements u
{
  private final y a;
  private final x b;
  private final q c;
  private final g d;
  private final z e;
  private final o f;
  private final c g;

  public j(o paramo, y paramy, q paramq, x paramx, g paramg, z paramz)
  {
    this.f = paramo;
    this.a = paramy;
    this.c = paramq;
    this.b = paramx;
    this.d = paramg;
    this.e = paramz;
    this.g = new d(this.f);
  }

  private static void a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    f.b().a("Fabric", paramString + paramJSONObject.toString());
  }

  // ERROR //
  private v b(t paramt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: getstatic 83	io/fabric/sdk/android/services/e/t:b	Lio/fabric/sdk/android/services/e/t;
    //   9: aload_1
    //   10: invokevirtual 87	io/fabric/sdk/android/services/e/t:equals	(Ljava/lang/Object;)Z
    //   13: ifne +95 -> 108
    //   16: aload_0
    //   17: getfield 35	io/fabric/sdk/android/services/e/j:d	Lio/fabric/sdk/android/services/e/g;
    //   20: invokeinterface 92 1 0
    //   25: astore 9
    //   27: aload 9
    //   29: ifnull +122 -> 151
    //   32: aload_0
    //   33: getfield 33	io/fabric/sdk/android/services/e/j:b	Lio/fabric/sdk/android/services/e/x;
    //   36: aload_0
    //   37: getfield 31	io/fabric/sdk/android/services/e/j:c	Lio/fabric/sdk/android/services/b/q;
    //   40: aload 9
    //   42: invokeinterface 97 3 0
    //   47: astore 7
    //   49: aload 9
    //   51: ldc 99
    //   53: invokestatic 101	io/fabric/sdk/android/services/e/j:a	(Lorg/json/JSONObject;Ljava/lang/String;)V
    //   56: aload_0
    //   57: getfield 31	io/fabric/sdk/android/services/e/j:c	Lio/fabric/sdk/android/services/b/q;
    //   60: invokeinterface 106 1 0
    //   65: lstore_3
    //   66: getstatic 108	io/fabric/sdk/android/services/e/t:c	Lio/fabric/sdk/android/services/e/t;
    //   69: aload_1
    //   70: invokevirtual 87	io/fabric/sdk/android/services/e/t:equals	(Ljava/lang/Object;)Z
    //   73: ifne +23 -> 96
    //   76: aload 7
    //   78: getfield 113	io/fabric/sdk/android/services/e/v:g	J
    //   81: lstore 5
    //   83: lload 5
    //   85: lload_3
    //   86: lcmp
    //   87: ifge +24 -> 111
    //   90: iconst_1
    //   91: istore_2
    //   92: iload_2
    //   93: ifne +23 -> 116
    //   96: invokestatic 53	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   99: ldc 55
    //   101: ldc 115
    //   103: invokeinterface 74 3 0
    //   108: aload 7
    //   110: areturn
    //   111: iconst_0
    //   112: istore_2
    //   113: goto -21 -> 92
    //   116: invokestatic 53	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   119: ldc 55
    //   121: ldc 117
    //   123: invokeinterface 74 3 0
    //   128: aconst_null
    //   129: areturn
    //   130: astore 7
    //   132: aload 8
    //   134: astore_1
    //   135: invokestatic 53	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   138: ldc 55
    //   140: ldc 119
    //   142: aload 7
    //   144: invokeinterface 122 4 0
    //   149: aload_1
    //   150: areturn
    //   151: invokestatic 53	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   154: ldc 55
    //   156: ldc 124
    //   158: invokeinterface 74 3 0
    //   163: aconst_null
    //   164: areturn
    //   165: astore 8
    //   167: aload 7
    //   169: astore_1
    //   170: aload 8
    //   172: astore 7
    //   174: goto -39 -> 135
    //
    // Exception table:
    //   from	to	target	type
    //   6	27	130	java/lang/Exception
    //   32	83	130	java/lang/Exception
    //   116	128	130	java/lang/Exception
    //   151	163	130	java/lang/Exception
    //   96	108	165	java/lang/Exception
  }

  private String b()
  {
    return l.a(new String[] { l.k(this.f.q) });
  }

  public final v a()
  {
    return a(t.a);
  }

  // ERROR //
  public final v a(t paramt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload 4
    //   5: astore_3
    //   6: invokestatic 149	io/fabric/sdk/android/f:c	()Z
    //   9: ifne +46 -> 55
    //   12: aload_0
    //   13: getfield 44	io/fabric/sdk/android/services/e/j:g	Lio/fabric/sdk/android/services/d/c;
    //   16: invokeinterface 154 1 0
    //   21: ldc 156
    //   23: ldc 158
    //   25: invokeinterface 164 3 0
    //   30: aload_0
    //   31: invokespecial 166	io/fabric/sdk/android/services/e/j:b	()Ljava/lang/String;
    //   34: invokevirtual 167	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifne +159 -> 196
    //   40: iconst_1
    //   41: istore_2
    //   42: aload 4
    //   44: astore_3
    //   45: iload_2
    //   46: ifne +9 -> 55
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 169	io/fabric/sdk/android/services/e/j:b	(Lio/fabric/sdk/android/services/e/t;)Lio/fabric/sdk/android/services/e/v;
    //   54: astore_3
    //   55: aload_3
    //   56: astore_1
    //   57: aload_3
    //   58: ifnonnull +122 -> 180
    //   61: aload_3
    //   62: astore_1
    //   63: aload_0
    //   64: getfield 37	io/fabric/sdk/android/services/e/j:e	Lio/fabric/sdk/android/services/e/z;
    //   67: aload_0
    //   68: getfield 29	io/fabric/sdk/android/services/e/j:a	Lio/fabric/sdk/android/services/e/y;
    //   71: invokeinterface 174 2 0
    //   76: astore 4
    //   78: aload_3
    //   79: astore_1
    //   80: aload 4
    //   82: ifnull +98 -> 180
    //   85: aload_3
    //   86: astore_1
    //   87: aload_0
    //   88: getfield 33	io/fabric/sdk/android/services/e/j:b	Lio/fabric/sdk/android/services/e/x;
    //   91: aload_0
    //   92: getfield 31	io/fabric/sdk/android/services/e/j:c	Lio/fabric/sdk/android/services/b/q;
    //   95: aload 4
    //   97: invokeinterface 97 3 0
    //   102: astore_3
    //   103: aload_3
    //   104: astore_1
    //   105: aload_0
    //   106: getfield 35	io/fabric/sdk/android/services/e/j:d	Lio/fabric/sdk/android/services/e/g;
    //   109: aload_3
    //   110: getfield 113	io/fabric/sdk/android/services/e/v:g	J
    //   113: aload 4
    //   115: invokeinterface 177 4 0
    //   120: aload_3
    //   121: astore_1
    //   122: aload 4
    //   124: ldc 179
    //   126: invokestatic 101	io/fabric/sdk/android/services/e/j:a	(Lorg/json/JSONObject;Ljava/lang/String;)V
    //   129: aload_3
    //   130: astore_1
    //   131: aload_0
    //   132: invokespecial 166	io/fabric/sdk/android/services/e/j:b	()Ljava/lang/String;
    //   135: astore 4
    //   137: aload_3
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 44	io/fabric/sdk/android/services/e/j:g	Lio/fabric/sdk/android/services/d/c;
    //   143: invokeinterface 182 1 0
    //   148: astore 5
    //   150: aload_3
    //   151: astore_1
    //   152: aload 5
    //   154: ldc 156
    //   156: aload 4
    //   158: invokeinterface 188 3 0
    //   163: pop
    //   164: aload_3
    //   165: astore_1
    //   166: aload_0
    //   167: getfield 44	io/fabric/sdk/android/services/e/j:g	Lio/fabric/sdk/android/services/d/c;
    //   170: aload 5
    //   172: invokeinterface 191 2 0
    //   177: pop
    //   178: aload_3
    //   179: astore_1
    //   180: aload_1
    //   181: astore_3
    //   182: aload_1
    //   183: ifnonnull +11 -> 194
    //   186: aload_0
    //   187: getstatic 108	io/fabric/sdk/android/services/e/t:c	Lio/fabric/sdk/android/services/e/t;
    //   190: invokespecial 169	io/fabric/sdk/android/services/e/j:b	(Lio/fabric/sdk/android/services/e/t;)Lio/fabric/sdk/android/services/e/v;
    //   193: astore_3
    //   194: aload_3
    //   195: areturn
    //   196: iconst_0
    //   197: istore_2
    //   198: goto -156 -> 42
    //   201: astore_3
    //   202: aconst_null
    //   203: astore_1
    //   204: invokestatic 53	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   207: ldc 55
    //   209: ldc 193
    //   211: aload_3
    //   212: invokeinterface 122 4 0
    //   217: aload_1
    //   218: areturn
    //   219: astore_3
    //   220: goto -16 -> 204
    //   223: astore_3
    //   224: goto -20 -> 204
    //
    // Exception table:
    //   from	to	target	type
    //   6	40	201	java/lang/Exception
    //   49	55	201	java/lang/Exception
    //   63	78	219	java/lang/Exception
    //   87	103	219	java/lang/Exception
    //   105	120	219	java/lang/Exception
    //   122	129	219	java/lang/Exception
    //   131	137	219	java/lang/Exception
    //   139	150	219	java/lang/Exception
    //   152	164	219	java/lang/Exception
    //   166	178	219	java/lang/Exception
    //   186	194	223	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.j
 * JD-Core Version:    0.6.2
 */