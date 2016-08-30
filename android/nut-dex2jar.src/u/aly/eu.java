package u.aly;

import android.os.Handler;
import java.lang.ref.WeakReference;

final class eu extends Handler
{
  private final WeakReference<ej> a;

  public eu(ej paramej)
  {
    this.a = new WeakReference(paramej);
  }

  // ERROR //
  public final void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	u/aly/eu:a	Ljava/lang/ref/WeakReference;
    //   4: ifnull +28 -> 32
    //   7: aload_1
    //   8: getfield 32	android/os/Message:what	I
    //   11: tableswitch	default:+21 -> 32, 48:+22->33, 49:+45->56
    //   33: aload_0
    //   34: bipush 48
    //   36: invokestatic 38	java/lang/System:currentTimeMillis	()J
    //   39: sipush 1001
    //   42: invokestatic 43	u/aly/fb:a	(JI)J
    //   45: invokevirtual 47	u/aly/eu:sendEmptyMessageDelayed	(IJ)Z
    //   48: pop
    //   49: invokestatic 52	u/aly/ev:a	()Lu/aly/ej;
    //   52: invokevirtual 57	u/aly/ej:b	()V
    //   55: return
    //   56: aload_0
    //   57: bipush 49
    //   59: invokestatic 38	java/lang/System:currentTimeMillis	()J
    //   62: sipush 1002
    //   65: invokestatic 43	u/aly/fb:a	(JI)J
    //   68: invokevirtual 47	u/aly/eu:sendEmptyMessageDelayed	(IJ)Z
    //   71: pop
    //   72: invokestatic 52	u/aly/ev:a	()Lu/aly/ej;
    //   75: astore_1
    //   76: aload_1
    //   77: getfield 60	u/aly/ej:a	Lu/aly/eg;
    //   80: getfield 65	u/aly/eg:a	Ljava/util/Map;
    //   83: invokeinterface 71 1 0
    //   88: ifle +49 -> 137
    //   91: new 73	u/aly/eo
    //   94: dup
    //   95: aload_1
    //   96: invokespecial 75	u/aly/eo:<init>	(Lu/aly/ej;)V
    //   99: astore_2
    //   100: aload_1
    //   101: getfield 60	u/aly/ej:a	Lu/aly/eg;
    //   104: getfield 65	u/aly/eg:a	Ljava/util/Map;
    //   107: astore_3
    //   108: aload_2
    //   109: getstatic 80	u/aly/ey:a	Landroid/content/Context;
    //   112: invokestatic 85	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   115: invokevirtual 88	u/aly/as:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   118: aload_3
    //   119: invokeinterface 92 1 0
    //   124: invokestatic 97	u/aly/a:a	(Lu/aly/ef;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    //   127: pop
    //   128: getstatic 80	u/aly/ey:a	Landroid/content/Context;
    //   131: invokestatic 85	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   134: invokevirtual 100	u/aly/as:c	()V
    //   137: aload_1
    //   138: getfield 103	u/aly/ej:b	Lu/aly/fa;
    //   141: getfield 106	u/aly/fa:a	Ljava/util/Map;
    //   144: invokeinterface 71 1 0
    //   149: ifle +21 -> 170
    //   152: new 108	u/aly/ep
    //   155: dup
    //   156: aload_1
    //   157: invokespecial 109	u/aly/ep:<init>	(Lu/aly/ej;)V
    //   160: aload_1
    //   161: getfield 103	u/aly/ej:b	Lu/aly/fa;
    //   164: getfield 106	u/aly/fa:a	Ljava/util/Map;
    //   167: invokestatic 112	u/aly/ey:a	(Lu/aly/ef;Ljava/util/Map;)V
    //   170: aload_1
    //   171: getfield 116	u/aly/ej:g	Ljava/util/List;
    //   174: invokeinterface 119 1 0
    //   179: ifle -147 -> 32
    //   182: new 121	u/aly/ef
    //   185: dup
    //   186: invokespecial 122	u/aly/ef:<init>	()V
    //   189: aload_1
    //   190: getfield 116	u/aly/ej:g	Ljava/util/List;
    //   193: invokestatic 125	u/aly/ey:a	(Lu/aly/ef;Ljava/util/List;)V
    //   196: return
    //   197: astore_1
    //   198: new 127	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 129
    //   204: invokespecial 132	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload_1
    //   208: invokevirtual 136	java/lang/Throwable:toString	()Ljava/lang/String;
    //   211: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 145	u/aly/ct:a	(Ljava/lang/String;)V
    //   220: return
    //   221: astore_2
    //   222: ldc 147
    //   224: invokestatic 150	u/aly/ct:d	(Ljava/lang/String;)V
    //   227: getstatic 80	u/aly/ey:a	Landroid/content/Context;
    //   230: invokestatic 85	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   233: invokevirtual 100	u/aly/as:c	()V
    //   236: goto -99 -> 137
    //   239: astore_1
    //   240: getstatic 80	u/aly/ey:a	Landroid/content/Context;
    //   243: invokestatic 85	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   246: invokevirtual 100	u/aly/as:c	()V
    //   249: aload_1
    //   250: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   76	108	197	java/lang/Throwable
    //   128	137	197	java/lang/Throwable
    //   137	170	197	java/lang/Throwable
    //   170	196	197	java/lang/Throwable
    //   227	236	197	java/lang/Throwable
    //   240	251	197	java/lang/Throwable
    //   108	128	221	java/lang/Exception
    //   108	128	239	finally
    //   222	227	239	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.eu
 * JD-Core Version:    0.6.2
 */