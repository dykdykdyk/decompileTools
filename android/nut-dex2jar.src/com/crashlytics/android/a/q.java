package com.crashlytics.android.a;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.b.j;
import io.fabric.sdk.android.services.concurrency.a.c;
import io.fabric.sdk.android.services.concurrency.a.e;
import java.io.IOException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class q
  implements aa
{
  final ae a;
  io.fabric.sdk.android.services.c.o b;
  j c = new j();
  r d = new s();
  boolean e = true;
  boolean f = true;
  volatile int g = -1;
  private final io.fabric.sdk.android.o h;
  private final io.fabric.sdk.android.services.network.l i;
  private final Context j;
  private final x k;
  private final ScheduledExecutorService l;
  private final AtomicReference<ScheduledFuture<?>> m = new AtomicReference();

  public q(io.fabric.sdk.android.o paramo, Context paramContext, ScheduledExecutorService paramScheduledExecutorService, x paramx, io.fabric.sdk.android.services.network.l paraml, ae paramae)
  {
    this.h = paramo;
    this.j = paramContext;
    this.l = paramScheduledExecutorService;
    this.k = paramx;
    this.i = paraml;
    this.a = paramae;
  }

  private void a(long paramLong1, long paramLong2)
  {
    int n;
    if (this.m.get() == null)
      n = 1;
    while (true)
    {
      io.fabric.sdk.android.services.c.r localr;
      if (n != 0)
      {
        localr = new io.fabric.sdk.android.services.c.r(this.j, this);
        io.fabric.sdk.android.services.b.l.a(this.j, "Scheduling time based file roll over every " + paramLong2 + " seconds");
      }
      try
      {
        this.m.set(this.l.scheduleAtFixedRate(localr, paramLong1, paramLong2, TimeUnit.SECONDS));
        return;
        n = 0;
      }
      catch (RejectedExecutionException localRejectedExecutionException)
      {
        io.fabric.sdk.android.services.b.l.b(this.j, "Failed to schedule time based file roll over");
      }
    }
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 132	com/crashlytics/android/a/q:b	Lio/fabric/sdk/android/services/c/o;
    //   4: ifnonnull +13 -> 17
    //   7: aload_0
    //   8: getfield 62	com/crashlytics/android/a/q:j	Landroid/content/Context;
    //   11: ldc 134
    //   13: invokestatic 108	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   16: return
    //   17: aload_0
    //   18: getfield 62	com/crashlytics/android/a/q:j	Landroid/content/Context;
    //   21: ldc 136
    //   23: invokestatic 108	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   26: aload_0
    //   27: getfield 66	com/crashlytics/android/a/q:k	Lcom/crashlytics/android/a/x;
    //   30: invokevirtual 141	com/crashlytics/android/a/x:e	()Ljava/util/List;
    //   33: astore 6
    //   35: iconst_0
    //   36: istore_1
    //   37: iload_1
    //   38: istore_3
    //   39: iload_1
    //   40: istore 4
    //   42: aload 6
    //   44: invokeinterface 147 1 0
    //   49: ifle +142 -> 191
    //   52: iload_1
    //   53: istore_3
    //   54: aload_0
    //   55: getfield 62	com/crashlytics/android/a/q:j	Landroid/content/Context;
    //   58: getstatic 153	java/util/Locale:US	Ljava/util/Locale;
    //   61: ldc 155
    //   63: iconst_1
    //   64: anewarray 4	java/lang/Object
    //   67: dup
    //   68: iconst_0
    //   69: aload 6
    //   71: invokeinterface 147 1 0
    //   76: invokestatic 161	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   79: aastore
    //   80: invokestatic 167	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   83: invokestatic 108	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   86: iload_1
    //   87: istore_3
    //   88: aload_0
    //   89: getfield 132	com/crashlytics/android/a/q:b	Lio/fabric/sdk/android/services/c/o;
    //   92: aload 6
    //   94: invokeinterface 172 2 0
    //   99: istore 5
    //   101: iload_1
    //   102: istore_2
    //   103: iload 5
    //   105: ifeq +28 -> 133
    //   108: iload_1
    //   109: istore_3
    //   110: aload 6
    //   112: invokeinterface 147 1 0
    //   117: istore_2
    //   118: iload_2
    //   119: iload_1
    //   120: iadd
    //   121: istore_1
    //   122: aload_0
    //   123: getfield 66	com/crashlytics/android/a/q:k	Lcom/crashlytics/android/a/x;
    //   126: aload 6
    //   128: invokevirtual 175	com/crashlytics/android/a/x:a	(Ljava/util/List;)V
    //   131: iload_1
    //   132: istore_2
    //   133: iload_2
    //   134: istore 4
    //   136: iload 5
    //   138: ifeq +53 -> 191
    //   141: iload_2
    //   142: istore_3
    //   143: aload_0
    //   144: getfield 66	com/crashlytics/android/a/q:k	Lcom/crashlytics/android/a/x;
    //   147: invokevirtual 141	com/crashlytics/android/a/x:e	()Ljava/util/List;
    //   150: astore 6
    //   152: iload_2
    //   153: istore_1
    //   154: goto -117 -> 37
    //   157: astore 6
    //   159: iload_3
    //   160: istore_1
    //   161: aload_0
    //   162: getfield 62	com/crashlytics/android/a/q:j	Landroid/content/Context;
    //   165: new 85	java/lang/StringBuilder
    //   168: dup
    //   169: ldc 177
    //   171: invokespecial 90	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: aload 6
    //   176: invokevirtual 180	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   179: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokestatic 128	io/fabric/sdk/android/services/b/l:b	(Landroid/content/Context;Ljava/lang/String;)V
    //   188: iload_1
    //   189: istore 4
    //   191: iload 4
    //   193: ifne -177 -> 16
    //   196: aload_0
    //   197: getfield 66	com/crashlytics/android/a/q:k	Lcom/crashlytics/android/a/x;
    //   200: invokevirtual 182	com/crashlytics/android/a/x:g	()V
    //   203: return
    //   204: astore 6
    //   206: goto -45 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   42	52	157	java/lang/Exception
    //   54	86	157	java/lang/Exception
    //   88	101	157	java/lang/Exception
    //   110	118	157	java/lang/Exception
    //   143	152	157	java/lang/Exception
    //   122	131	204	java/lang/Exception
  }

  public final void a(ac paramac)
  {
    int n = 0;
    paramac = new ab(this.a, paramac.b, paramac.a, paramac.c, paramac.d, paramac.e, paramac.f, paramac.g, (byte)0);
    if ((!this.e) && (ad.g.equals(paramac.c)))
      f.b().a("Answers", "Custom events tracking disabled - skipping event: " + paramac);
    while (true)
    {
      return;
      if ((!this.f) && (ad.h.equals(paramac.c)))
      {
        f.b().a("Answers", "Predefined events tracking disabled - skipping event: " + paramac);
        return;
      }
      if (this.d.a(paramac))
      {
        f.b().a("Answers", "Skipping filtered event: " + paramac);
        return;
      }
      try
      {
        this.k.a(paramac);
        if (this.g != -1)
          n = 1;
        if (n == 0)
          continue;
        a(this.g, this.g);
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          f.b().c("Answers", "Failed to write event: " + paramac, localIOException);
      }
    }
  }

  public final void a(io.fabric.sdk.android.services.e.b paramb, String paramString)
  {
    this.b = new l(new y(this.h, paramString, paramb.a, this.i, j.a(this.j)), new u(new e(new t(new c()), new io.fabric.sdk.android.services.concurrency.a.b(5))));
    this.k.a = paramb;
    this.e = paramb.f;
    io.fabric.sdk.android.r localr = f.b();
    StringBuilder localStringBuilder = new StringBuilder("Custom event tracking ");
    if (this.e)
    {
      paramString = "enabled";
      localr.a("Answers", paramString);
      this.f = paramb.g;
      localr = f.b();
      localStringBuilder = new StringBuilder("Predefined event tracking ");
      if (!this.f)
        break label248;
    }
    label248: for (paramString = "enabled"; ; paramString = "disabled")
    {
      localr.a("Answers", paramString);
      if (paramb.i > 1)
      {
        f.b().a("Answers", "Event sampling enabled");
        this.d = new v(paramb.i);
      }
      this.g = paramb.b;
      a(0L, this.g);
      return;
      paramString = "disabled";
      break;
    }
  }

  public final void b()
  {
    this.k.f();
  }

  public final boolean c()
  {
    try
    {
      boolean bool = this.k.d();
      return bool;
    }
    catch (IOException localIOException)
    {
      io.fabric.sdk.android.services.b.l.b(this.j, "Failed to roll file over.");
    }
    return false;
  }

  public final void d()
  {
    if (this.m.get() != null)
    {
      io.fabric.sdk.android.services.b.l.a(this.j, "Cancelling time-based rollover because no events are currently being generated.");
      ((ScheduledFuture)this.m.get()).cancel(false);
      this.m.set(null);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.q
 * JD-Core Version:    0.6.2
 */