package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Handler;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.d;
import com.baidu.android.pushservice.util.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class f
{
  static int a = -1;
  private static Boolean e = Boolean.valueOf(false);
  private static volatile f n;
  private final int A = 7200;
  Handler b = new Handler();
  d c;
  private boolean d = false;
  private boolean f = false;
  private HashMap<Long, com.baidu.android.pushservice.e.a> g = new HashMap();
  private f.b h;
  private f.a i;
  private boolean j = false;
  private int k = 0;
  private Context l;
  private boolean m = true;
  private boolean o;
  private String p = h.b();
  private int q = h.c();
  private Runnable r = new f.2(this);
  private Runnable s = new f.3(this);
  private long t = 0L;
  private int[] u = { 180, 300, 420, 540 };
  private int[] v = { 0, 0, 0, 0 };
  private final int w = 2;
  private int x = 0;
  private int y = 0;
  private int z = 0;

  private f(Context paramContext)
  {
    this.l = paramContext;
    int i1 = i();
    if ((i1 > 0) && (i1 < this.u.length))
      this.x = i1;
    j();
    g.a(this.l).a(this.u[this.x]);
  }

  public static f a(Context paramContext)
  {
    if (n == null)
      n = new f(paramContext);
    return n;
  }

  private void a(int paramInt)
  {
    PushSettings.a(this.l, paramInt);
  }

  private void a(String paramString, int paramInt)
  {
    new f.4(this, paramString, paramInt).start();
  }

  private void a(boolean paramBoolean)
  {
    int i1 = this.x;
    if (paramBoolean)
    {
      this.y += 1;
      this.z += 1;
      this.v[this.x] = 0;
      if (this.u[this.x] * this.y >= 7200)
      {
        this.y = 0;
        if ((this.x < this.u.length - 1) && (this.v[(this.x + 1)] < 2))
        {
          this.z = 0;
          this.x += 1;
          a(this.x);
        }
      }
    }
    while (true)
    {
      try
      {
        g.a(this.l).a(this.u[this.x]);
        if (this.u[this.x] * this.z >= 14400)
        {
          this.z = 0;
          com.baidu.android.pushservice.i.j localj = new com.baidu.android.pushservice.i.j();
          localj.f = "030101";
          localj.g = System.currentTimeMillis();
          localj.h = com.baidu.android.pushservice.i.a.b.d(this.l);
          localj.a = this.u[this.x];
          t.a(this.l, localj);
        }
        com.baidu.android.pushservice.h.a.c("PushConnection", "RTC stat update from " + this.u[i1] + " to " + this.u[this.x]);
        m.a("RTC stat update from " + this.u[i1] + " to " + this.u[this.x], this.l);
        return;
      }
      catch (Exception localException)
      {
        com.baidu.android.pushservice.h.a.e("PushConnection", "error : " + localException.getMessage());
        continue;
      }
      this.y = 0;
      this.z = 0;
      int[] arrayOfInt = this.v;
      int i2 = this.x;
      arrayOfInt[i2] += 1;
      if (this.x > 0)
      {
        this.x -= 1;
        a(this.x);
        g.a(this.l).a(this.u[this.x]);
      }
    }
  }

  private void e()
  {
    while (true)
    {
      try
      {
        if ((this.d) || (e.booleanValue()))
        {
          com.baidu.android.pushservice.h.b.c("PushConnection", "Connect return. mConnected:" + this.d + " mConnectting:" + e, this.l.getApplicationContext());
          return;
        }
        if (!j.a(this.l).d())
        {
          com.baidu.android.pushservice.h.b.a("PushConnection", "re-token", this.l.getApplicationContext());
          g.a(this.l).d();
          continue;
        }
      }
      finally
      {
      }
      m.a("PushConnection connectImpl from " + this.l.getPackageName() + " at Time " + System.currentTimeMillis(), this.l);
      e = Boolean.valueOf(true);
      a = -1;
      Thread localThread = new Thread(new f.1(this));
      localThread.setName("PushService-PushService-connect");
      localThread.start();
    }
  }

  private void f()
  {
    com.baidu.android.pushservice.h.b.c("PushConnection", "disconnectedByPeer, mStoped == " + this.j, this.l.getApplicationContext());
    m.a("PushConnection destroy from " + this.l.getPackageName() + " at Time " + System.currentTimeMillis(), this.l);
    g();
    if (this.j);
    do
    {
      return;
      this.k += 1;
    }
    while (this.k >= 3);
    this.b.removeCallbacks(this.r);
    int i1 = (this.k - 1) * 30 * 1000;
    if (this.k == 1)
      i1 = 3000;
    this.b.postDelayed(this.r, i1);
    com.baidu.android.pushservice.h.b.c("PushConnection", "Schedule retry-- retry times: " + this.k + " time delay: " + i1, this.l.getApplicationContext());
  }

  private void g()
  {
    com.baidu.android.pushservice.h.b.c("PushConnection", "destroy", this.l.getApplicationContext());
    if (this.b != null)
      this.b.removeCallbacks(this.s);
    this.f = true;
    this.d = false;
    if (this.c != null);
    try
    {
      synchronized (this.c.a())
      {
        this.c.a().notifyAll();
        PushSocket.a(a);
        if (this.c != null)
          this.c.b();
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        com.baidu.android.pushservice.h.a.e("PushConnection", "notifyAll Exception on destroy: " + localException.getMessage());
    }
  }

  private void h()
  {
    Object localObject = this.g.keySet();
    long l1 = System.currentTimeMillis();
    i locali = g.a(this.l).c();
    if (locali != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        long l2 = ((Long)((Iterator)localObject).next()).longValue();
        if (l2 < l1)
        {
          locali.a((com.baidu.android.pushservice.e.a)this.g.get(Long.valueOf(l2)));
          this.g.remove(Long.valueOf(l2));
        }
      }
    }
  }

  private int i()
  {
    return PushSettings.c(this.l);
  }

  // ERROR //
  private void j()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 401	java/io/File
    //   5: dup
    //   6: invokestatic 407	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   9: ldc_w 409
    //   12: invokespecial 412	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   15: astore_2
    //   16: aload_2
    //   17: invokevirtual 415	java/io/File:exists	()Z
    //   20: ifeq +152 -> 172
    //   23: new 417	java/util/Properties
    //   26: dup
    //   27: invokespecial 418	java/util/Properties:<init>	()V
    //   30: astore 4
    //   32: new 420	java/io/FileInputStream
    //   35: dup
    //   36: aload_2
    //   37: invokespecial 423	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   40: astore_3
    //   41: aload_3
    //   42: astore_2
    //   43: aload 4
    //   45: aload_3
    //   46: invokevirtual 427	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   49: aload_3
    //   50: astore_2
    //   51: aload 4
    //   53: ldc_w 429
    //   56: invokevirtual 433	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   59: astore 5
    //   61: aload 5
    //   63: ifnull +67 -> 130
    //   66: aload_3
    //   67: astore_2
    //   68: aload 5
    //   70: invokevirtual 438	java/lang/String:length	()I
    //   73: ifle +57 -> 130
    //   76: aload_3
    //   77: astore_2
    //   78: new 440	org/json/JSONArray
    //   81: dup
    //   82: aload 5
    //   84: invokespecial 441	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   87: astore 5
    //   89: aload_3
    //   90: astore_2
    //   91: iload_1
    //   92: aload 5
    //   94: invokevirtual 442	org/json/JSONArray:length	()I
    //   97: if_icmpge +33 -> 130
    //   100: aload_3
    //   101: astore_2
    //   102: aload_0
    //   103: getfield 111	com/baidu/android/pushservice/f:u	[I
    //   106: iload_1
    //   107: aload 5
    //   109: iload_1
    //   110: invokevirtual 446	org/json/JSONArray:getInt	(I)I
    //   113: iastore
    //   114: aload_3
    //   115: astore_2
    //   116: aload_0
    //   117: getfield 113	com/baidu/android/pushservice/f:v	[I
    //   120: iload_1
    //   121: iconst_0
    //   122: iastore
    //   123: iload_1
    //   124: iconst_1
    //   125: iadd
    //   126: istore_1
    //   127: goto -38 -> 89
    //   130: aload_3
    //   131: astore_2
    //   132: aload 4
    //   134: ldc_w 448
    //   137: invokevirtual 433	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   140: astore 4
    //   142: aload 4
    //   144: ifnull +24 -> 168
    //   147: aload_3
    //   148: astore_2
    //   149: aload 4
    //   151: invokevirtual 438	java/lang/String:length	()I
    //   154: ifle +14 -> 168
    //   157: aload_3
    //   158: astore_2
    //   159: aload_0
    //   160: aload 4
    //   162: invokestatic 454	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   165: putfield 117	com/baidu/android/pushservice/f:x	I
    //   168: aload_3
    //   169: invokevirtual 457	java/io/FileInputStream:close	()V
    //   172: return
    //   173: astore_2
    //   174: ldc 202
    //   176: new 204	java/lang/StringBuilder
    //   179: dup
    //   180: ldc_w 459
    //   183: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   186: aload_2
    //   187: invokevirtual 460	java/io/IOException:getMessage	()Ljava/lang/String;
    //   190: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   196: aload_0
    //   197: getfield 125	com/baidu/android/pushservice/f:l	Landroid/content/Context;
    //   200: invokevirtual 264	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   203: invokestatic 462	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   206: return
    //   207: astore 4
    //   209: aconst_null
    //   210: astore_3
    //   211: aload_3
    //   212: astore_2
    //   213: ldc 202
    //   215: new 204	java/lang/StringBuilder
    //   218: dup
    //   219: ldc_w 464
    //   222: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload 4
    //   227: invokevirtual 236	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   230: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: aload_0
    //   237: getfield 125	com/baidu/android/pushservice/f:l	Landroid/content/Context;
    //   240: invokevirtual 264	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   243: invokestatic 462	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   246: aload_3
    //   247: ifnull -75 -> 172
    //   250: aload_3
    //   251: invokevirtual 457	java/io/FileInputStream:close	()V
    //   254: return
    //   255: astore_2
    //   256: ldc 202
    //   258: new 204	java/lang/StringBuilder
    //   261: dup
    //   262: ldc_w 459
    //   265: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   268: aload_2
    //   269: invokevirtual 460	java/io/IOException:getMessage	()Ljava/lang/String;
    //   272: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: aload_0
    //   279: getfield 125	com/baidu/android/pushservice/f:l	Landroid/content/Context;
    //   282: invokevirtual 264	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   285: invokestatic 462	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   288: return
    //   289: astore_3
    //   290: aconst_null
    //   291: astore_2
    //   292: aload_2
    //   293: ifnull +7 -> 300
    //   296: aload_2
    //   297: invokevirtual 457	java/io/FileInputStream:close	()V
    //   300: aload_3
    //   301: athrow
    //   302: astore_2
    //   303: ldc 202
    //   305: new 204	java/lang/StringBuilder
    //   308: dup
    //   309: ldc_w 459
    //   312: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   315: aload_2
    //   316: invokevirtual 460	java/io/IOException:getMessage	()Ljava/lang/String;
    //   319: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: aload_0
    //   326: getfield 125	com/baidu/android/pushservice/f:l	Landroid/content/Context;
    //   329: invokevirtual 264	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   332: invokestatic 462	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   335: goto -35 -> 300
    //   338: astore_3
    //   339: goto -47 -> 292
    //   342: astore 4
    //   344: goto -133 -> 211
    //
    // Exception table:
    //   from	to	target	type
    //   168	172	173	java/io/IOException
    //   32	41	207	java/lang/Exception
    //   250	254	255	java/io/IOException
    //   32	41	289	finally
    //   296	300	302	java/io/IOException
    //   43	49	338	finally
    //   51	61	338	finally
    //   68	76	338	finally
    //   78	89	338	finally
    //   91	100	338	finally
    //   102	114	338	finally
    //   116	123	338	finally
    //   132	142	338	finally
    //   149	157	338	finally
    //   159	168	338	finally
    //   213	246	338	finally
    //   43	49	342	java/lang/Exception
    //   51	61	342	java/lang/Exception
    //   68	76	342	java/lang/Exception
    //   78	89	342	java/lang/Exception
    //   91	100	342	java/lang/Exception
    //   102	114	342	java/lang/Exception
    //   116	123	342	java/lang/Exception
    //   132	142	342	java/lang/Exception
    //   149	157	342	java/lang/Exception
    //   159	168	342	java/lang/Exception
  }

  public final boolean a()
  {
    return this.d;
  }

  public final void b()
  {
    this.k = 0;
    this.j = false;
    e();
  }

  public final void c()
  {
    com.baidu.android.pushservice.h.b.c("PushConnection", "---stop---", this.l.getApplicationContext());
    m.a("PushConnection stop from " + this.l.getPackageName() + " at Time " + System.currentTimeMillis(), this.l);
    this.f = true;
    this.j = true;
    this.b.removeCallbacks(this.r);
    g();
    n = null;
  }

  public final void d()
  {
    if (this.c != null)
    {
      long l1 = System.currentTimeMillis();
      if (l1 - this.t <= 120000L)
        break label56;
      this.c.c();
      this.t = l1;
      com.baidu.android.pushservice.h.b.c("PushConnection", "sendHeartbeatMessage", this.l.getApplicationContext());
    }
    while (true)
    {
      h();
      return;
      label56: com.baidu.android.pushservice.h.b.c("PushConnection", "sendHeartbeatMessage ingnored， because too frequent.", this.l.getApplicationContext());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f
 * JD-Core Version:    0.6.2
 */