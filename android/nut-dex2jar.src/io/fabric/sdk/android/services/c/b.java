package io.fabric.sdk.android.services.c;

import android.content.Context;
import io.fabric.sdk.android.services.b.l;
import java.io.IOException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class b<T>
  implements m<T>
{
  protected final Context a;
  protected final d<T> b;
  final ScheduledExecutorService c;
  final AtomicReference<ScheduledFuture<?>> d;
  public volatile int e = -1;

  public b(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, d<T> paramd)
  {
    this.a = paramContext;
    this.c = paramScheduledExecutorService;
    this.b = paramd;
    this.d = new AtomicReference();
  }

  public final void a(long paramLong1, long paramLong2)
  {
    int i;
    if (this.d.get() == null)
      i = 1;
    while (true)
    {
      r localr;
      if (i != 0)
      {
        localr = new r(this.a, this);
        l.a(this.a, "Scheduling time based file roll over every " + paramLong2 + " seconds");
      }
      try
      {
        this.d.set(this.c.scheduleAtFixedRate(localr, paramLong1, paramLong2, TimeUnit.SECONDS));
        return;
        i = 0;
      }
      catch (RejectedExecutionException localRejectedExecutionException)
      {
        l.b(this.a, "Failed to schedule time based file roll over");
      }
    }
  }

  public final void a(T paramT)
  {
    l.a(this.a, paramT.toString());
    try
    {
      this.b.a(paramT);
      if (this.e != -1)
      {
        i = 1;
        if (i != 0)
          a(this.e, this.e);
        return;
      }
    }
    catch (IOException paramT)
    {
      while (true)
      {
        l.b(this.a, "Failed to write event.");
        continue;
        int i = 0;
      }
    }
  }

  // ERROR //
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 114	io/fabric/sdk/android/services/c/b:a	()Lio/fabric/sdk/android/services/c/o;
    //   4: astore 7
    //   6: aload 7
    //   8: ifnonnull +13 -> 21
    //   11: aload_0
    //   12: getfield 28	io/fabric/sdk/android/services/c/b:a	Landroid/content/Context;
    //   15: ldc 116
    //   17: invokestatic 77	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   20: return
    //   21: aload_0
    //   22: getfield 28	io/fabric/sdk/android/services/c/b:a	Landroid/content/Context;
    //   25: ldc 118
    //   27: invokestatic 77	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   30: aload_0
    //   31: getfield 32	io/fabric/sdk/android/services/c/b:b	Lio/fabric/sdk/android/services/c/d;
    //   34: invokevirtual 121	io/fabric/sdk/android/services/c/d:e	()Ljava/util/List;
    //   37: astore 6
    //   39: iconst_0
    //   40: istore_1
    //   41: iload_1
    //   42: istore_3
    //   43: iload_1
    //   44: istore 4
    //   46: aload 6
    //   48: invokeinterface 127 1 0
    //   53: ifle +140 -> 193
    //   56: iload_1
    //   57: istore_3
    //   58: aload_0
    //   59: getfield 28	io/fabric/sdk/android/services/c/b:a	Landroid/content/Context;
    //   62: getstatic 133	java/util/Locale:US	Ljava/util/Locale;
    //   65: ldc 135
    //   67: iconst_1
    //   68: anewarray 5	java/lang/Object
    //   71: dup
    //   72: iconst_0
    //   73: aload 6
    //   75: invokeinterface 127 1 0
    //   80: invokestatic 141	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   83: aastore
    //   84: invokestatic 147	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   87: invokestatic 77	io/fabric/sdk/android/services/b/l:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   90: iload_1
    //   91: istore_3
    //   92: aload 7
    //   94: aload 6
    //   96: invokeinterface 152 2 0
    //   101: istore 5
    //   103: iload_1
    //   104: istore_2
    //   105: iload 5
    //   107: ifeq +28 -> 135
    //   110: iload_1
    //   111: istore_3
    //   112: aload 6
    //   114: invokeinterface 127 1 0
    //   119: istore_2
    //   120: iload_2
    //   121: iload_1
    //   122: iadd
    //   123: istore_1
    //   124: aload_0
    //   125: getfield 32	io/fabric/sdk/android/services/c/b:b	Lio/fabric/sdk/android/services/c/d;
    //   128: aload 6
    //   130: invokevirtual 155	io/fabric/sdk/android/services/c/d:a	(Ljava/util/List;)V
    //   133: iload_1
    //   134: istore_2
    //   135: iload_2
    //   136: istore 4
    //   138: iload 5
    //   140: ifeq +53 -> 193
    //   143: iload_2
    //   144: istore_3
    //   145: aload_0
    //   146: getfield 32	io/fabric/sdk/android/services/c/b:b	Lio/fabric/sdk/android/services/c/d;
    //   149: invokevirtual 121	io/fabric/sdk/android/services/c/d:e	()Ljava/util/List;
    //   152: astore 6
    //   154: iload_2
    //   155: istore_1
    //   156: goto -115 -> 41
    //   159: astore 6
    //   161: iload_3
    //   162: istore_1
    //   163: aload_0
    //   164: getfield 28	io/fabric/sdk/android/services/c/b:a	Landroid/content/Context;
    //   167: new 54	java/lang/StringBuilder
    //   170: dup
    //   171: ldc 157
    //   173: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: aload 6
    //   178: invokevirtual 160	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   181: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokestatic 97	io/fabric/sdk/android/services/b/l:b	(Landroid/content/Context;Ljava/lang/String;)V
    //   190: iload_1
    //   191: istore 4
    //   193: iload 4
    //   195: ifne -175 -> 20
    //   198: aload_0
    //   199: getfield 32	io/fabric/sdk/android/services/c/b:b	Lio/fabric/sdk/android/services/c/d;
    //   202: invokevirtual 163	io/fabric/sdk/android/services/c/d:g	()V
    //   205: return
    //   206: astore 6
    //   208: goto -45 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   46	56	159	java/lang/Exception
    //   58	90	159	java/lang/Exception
    //   92	103	159	java/lang/Exception
    //   112	120	159	java/lang/Exception
    //   145	154	159	java/lang/Exception
    //   124	133	206	java/lang/Exception
  }

  public final boolean c()
  {
    try
    {
      boolean bool = this.b.d();
      return bool;
    }
    catch (IOException localIOException)
    {
      l.b(this.a, "Failed to roll file over.");
    }
    return false;
  }

  public final void d()
  {
    if (this.d.get() != null)
    {
      l.a(this.a, "Cancelling time-based rollover because no events are currently being generated.");
      ((ScheduledFuture)this.d.get()).cancel(false);
      this.d.set(null);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.b
 * JD-Core Version:    0.6.2
 */