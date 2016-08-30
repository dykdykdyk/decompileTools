package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.common.internal.e;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

final class v<O extends com.google.android.gms.common.api.b>
  implements q, r
{
  final Queue<g> a = new LinkedList();
  final com.google.android.gms.common.api.j b;
  final i<O> c;
  final SparseArray<z> d = new SparseArray();
  final Set<j> e = new HashSet();
  final SparseArray<Map<Object, l>> f = new SparseArray();
  boolean g;
  ConnectionResult h = null;
  private final com.google.android.gms.common.api.g j;

  public v(y<O> paramy)
  {
    Object localObject;
    paramy = localObject.b;
    boolean bool;
    if (paramy.a != null)
    {
      bool = true;
      com.google.android.gms.common.internal.b.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      f localf = paramy.a;
      Context localContext = localObject.a;
      Looper localLooper = s.a(this.i).getLooper();
      p localp = new p(localObject.a);
      paramy = av.a;
      if (localp.h.containsKey(ar.g))
        paramy = (av)localp.h.get(ar.g);
      this.b = localf.a(localContext, localLooper, new ah(localp.a, localp.b, localp.g, localp.c, localp.d, localp.e, localp.f, paramy), localObject.c, this, this);
      if (!(this.b instanceof e))
        break label252;
    }
    label252: for (this.j = ((e)this.b).a; ; this.j = this.b)
    {
      this.c = localObject.d;
      return;
      bool = false;
      break;
    }
  }

  private void b(ConnectionResult paramConnectionResult)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
      ((j)localIterator.next()).a(this.c, paramConnectionResult);
    this.e.clear();
  }

  public final void a()
  {
    this.h = null;
    b(ConnectionResult.a);
    c();
    int k = 0;
    while (k < this.f.size())
    {
      Iterator localIterator = ((Map)this.f.get(this.f.keyAt(k))).values().iterator();
      while (localIterator.hasNext())
      {
        localIterator.next();
        try
        {
          l.a();
        }
        catch (DeadObjectException localDeadObjectException)
        {
          this.b.a();
          b();
        }
      }
      k += 1;
    }
    while ((this.b.b()) && (!this.a.isEmpty()))
      a((g)this.a.remove());
    d();
  }

  public final void a(ConnectionResult paramConnectionResult)
  {
    this.h = null;
    s.a(this.i, -1);
    b(paramConnectionResult);
    int k = this.d.keyAt(0);
    if (this.a.isEmpty())
      this.h = paramConnectionResult;
    while (true)
    {
      return;
      synchronized (s.c())
      {
        s.d();
        if (!this.i.a(paramConnectionResult, k))
        {
          if (paramConnectionResult.c == 18)
            this.g = true;
          if (this.g)
          {
            s.a(this.i).sendMessageDelayed(Message.obtain(s.a(this.i), 8, this.c), s.b(this.i));
            return;
          }
        }
      }
    }
    paramConnectionResult = String.valueOf(this.c.a.c);
    a(new Status(17, String.valueOf(paramConnectionResult).length() + 38 + "API: " + paramConnectionResult + " is not available on this device."));
  }

  final void a(Status paramStatus)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((g)localIterator.next()).a(paramStatus);
    this.a.clear();
  }

  // ERROR //
  final void a(g paramg)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield 50	com/google/android/gms/internal/v:d	Landroid/util/SparseArray;
    //   5: invokevirtual 318	com/google/android/gms/internal/g:a	(Landroid/util/SparseArray;)V
    //   8: aload_1
    //   9: getfield 320	com/google/android/gms/internal/g:b	I
    //   12: iconst_3
    //   13: if_icmpne +85 -> 98
    //   16: aload_0
    //   17: getfield 57	com/google/android/gms/internal/v:f	Landroid/util/SparseArray;
    //   20: aload_1
    //   21: getfield 322	com/google/android/gms/internal/g:a	I
    //   24: invokevirtual 210	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   27: checkcast 109	java/util/Map
    //   30: astore_2
    //   31: aload_2
    //   32: ifnonnull +160 -> 192
    //   35: new 324	android/support/v4/f/a
    //   38: dup
    //   39: iconst_0
    //   40: invokespecial 327	android/support/v4/f/a:<init>	(B)V
    //   43: astore_2
    //   44: aload_0
    //   45: getfield 57	com/google/android/gms/internal/v:f	Landroid/util/SparseArray;
    //   48: aload_1
    //   49: getfield 322	com/google/android/gms/internal/g:a	I
    //   52: aload_2
    //   53: invokevirtual 331	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   56: aload_1
    //   57: checkcast 333	com/google/android/gms/internal/h
    //   60: getfield 336	com/google/android/gms/internal/h:c	Lcom/google/android/gms/internal/l;
    //   63: astore_3
    //   64: aload_2
    //   65: aload_3
    //   66: checkcast 338	com/google/android/gms/internal/y
    //   69: invokeinterface 340 1 0
    //   74: aload_3
    //   75: invokeinterface 343 3 0
    //   80: pop
    //   81: aload_1
    //   82: invokevirtual 344	com/google/android/gms/internal/g:a	()V
    //   85: return
    //   86: astore_1
    //   87: new 346	java/lang/IllegalStateException
    //   90: dup
    //   91: ldc_w 348
    //   94: invokespecial 351	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   97: athrow
    //   98: aload_1
    //   99: getfield 320	com/google/android/gms/internal/g:b	I
    //   102: iconst_4
    //   103: if_icmpne -22 -> 81
    //   106: aload_0
    //   107: getfield 57	com/google/android/gms/internal/v:f	Landroid/util/SparseArray;
    //   110: aload_1
    //   111: getfield 322	com/google/android/gms/internal/g:a	I
    //   114: invokevirtual 210	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   117: checkcast 109	java/util/Map
    //   120: astore_2
    //   121: aload_1
    //   122: checkcast 333	com/google/android/gms/internal/h
    //   125: getfield 336	com/google/android/gms/internal/h:c	Lcom/google/android/gms/internal/l;
    //   128: checkcast 338	com/google/android/gms/internal/y
    //   131: astore_3
    //   132: aload_2
    //   133: ifnull +31 -> 164
    //   136: aload_2
    //   137: aload_3
    //   138: invokeinterface 340 1 0
    //   143: invokeinterface 353 2 0
    //   148: pop
    //   149: goto -68 -> 81
    //   152: astore_1
    //   153: new 346	java/lang/IllegalStateException
    //   156: dup
    //   157: ldc_w 355
    //   160: invokespecial 351	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   163: athrow
    //   164: ldc_w 357
    //   167: ldc_w 359
    //   170: invokestatic 365	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   173: pop
    //   174: goto -93 -> 81
    //   177: astore_1
    //   178: aload_0
    //   179: getfield 150	com/google/android/gms/internal/v:b	Lcom/google/android/gms/common/api/j;
    //   182: invokeinterface 224 1 0
    //   187: aload_0
    //   188: invokevirtual 226	com/google/android/gms/internal/v:b	()V
    //   191: return
    //   192: goto -136 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   16	31	86	java/lang/ClassCastException
    //   35	56	86	java/lang/ClassCastException
    //   56	81	86	java/lang/ClassCastException
    //   106	132	152	java/lang/ClassCastException
    //   136	149	152	java/lang/ClassCastException
    //   164	174	152	java/lang/ClassCastException
    //   81	85	177	android/os/DeadObjectException
  }

  public final void b()
  {
    this.h = null;
    this.g = true;
    s.a(this.i).sendMessageDelayed(Message.obtain(s.a(this.i), 8, this.c), s.b(this.i));
    s.a(this.i).sendMessageDelayed(Message.obtain(s.a(this.i), 9, this.c), s.c(this.i));
    s.a(this.i, -1);
  }

  final void c()
  {
    if (this.g)
    {
      s.a(this.i).removeMessages(9, this.c);
      s.a(this.i).removeMessages(8, this.c);
      this.g = false;
    }
  }

  final void d()
  {
    s.a(this.i).removeMessages(10, this.c);
    s.a(this.i).sendMessageDelayed(s.a(this.i).obtainMessage(10, this.c), s.g(this.i));
  }

  final void e()
  {
    int k;
    if ((this.b.b()) && (this.f.size() == 0))
      k = 0;
    while (k < this.d.size())
    {
      l[] arrayOfl = (l[])((z)this.d.get(this.d.keyAt(k))).b.toArray(z.a);
      int n = arrayOfl.length;
      int m = 0;
      if (m < n)
        if (arrayOfl[m].b());
      for (m = 1; ; m = 0)
      {
        if (m == 0)
          break label113;
        d();
        return;
        m += 1;
        break;
      }
      label113: k += 1;
    }
    this.b.a();
  }

  final void f()
  {
    if ((this.b.b()) || (this.b.c()))
      return;
    if (s.h(this.i) != 0)
    {
      s.a(this.i, s.f(this.i).a(s.e(this.i)));
      if (s.h(this.i) != 0)
      {
        a(new ConnectionResult(s.h(this.i), null));
        return;
      }
    }
    this.b.a(new w(this.i, this.b, this.c));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.v
 * JD-Core Version:    0.6.2
 */