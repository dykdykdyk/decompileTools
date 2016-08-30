package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.b;
import java.lang.ref.ReferenceQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class s
  implements Handler.Callback
{
  private static final Object d = new Object();
  private static s e;
  private long a;
  private long b;
  private long c;
  private final Context f;
  private final b g;
  private int h;
  private final SparseArray<v<?>> i;
  private final Map<i<?>, v<?>> j;
  private final Set<i<?>> k;
  private final Handler l;
  private final ReferenceQueue<y<?>> m;
  private final SparseArray<t> n;
  private u o;

  public static s a()
  {
    synchronized (d)
    {
      s locals = e;
      return locals;
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    v localv = (v)this.i.get(paramInt);
    if (localv != null)
    {
      if (!paramBoolean)
        this.i.delete(paramInt);
      ??? = localv.a.iterator();
      while (((Iterator)???).hasNext())
      {
        localObject3 = (g)((Iterator)???).next();
        if ((((g)localObject3).a == paramInt) && (((g)localObject3).b != 1) && (((g)localObject3).b()))
          ((Iterator)???).remove();
      }
      ??? = (z)localv.d.get(paramInt);
      Object localObject3 = (l[])((z)???).b.toArray(z.a);
      int i2 = localObject3.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject4 = localObject3[i1];
        localObject4.a(null);
        if (localObject4.d())
          ((z)???).b.remove(localObject4);
        i1 += 1;
      }
      localv.f.delete(paramInt);
      if (!paramBoolean)
      {
        localv.d.remove(paramInt);
        localv.i.n.remove(paramInt);
        if ((localv.d.size() == 0) && (localv.a.isEmpty()))
        {
          localv.c();
          localv.b.a();
          localv.i.j.remove(localv.c);
          synchronized (d)
          {
            localv.i.k.remove(localv.c);
            return;
          }
        }
      }
    }
    else
    {
      Log.wtf("GoogleApiManager", 52 + "onRelease received for unknown instance: " + paramInt, new Exception());
    }
  }

  private void e()
  {
    Iterator localIterator = this.j.values().iterator();
    while (localIterator.hasNext())
    {
      v localv = (v)localIterator.next();
      localv.h = null;
      localv.f();
    }
  }

  final boolean a(ConnectionResult paramConnectionResult, int paramInt)
  {
    if ((paramConnectionResult.a()) || (this.g.a(paramConnectionResult.c)))
    {
      this.g.a(this.f, paramConnectionResult, paramInt);
      return true;
    }
    return false;
  }

  public final void b()
  {
    this.l.sendMessage(this.l.obtainMessage(3));
  }

  public final void b(ConnectionResult paramConnectionResult, int paramInt)
  {
    if (!a(paramConnectionResult, paramInt))
      this.l.sendMessage(this.l.obtainMessage(5, paramInt, 0));
  }

  public final boolean handleMessage(Message paramMessage)
  {
    boolean bool = false;
    int i1;
    switch (paramMessage.what)
    {
    default:
      i1 = paramMessage.what;
      Log.w("GoogleApiManager", 31 + "Unknown message id: " + i1);
      return false;
    case 1:
      paramMessage = (j)paramMessage.obj;
      throw new NullPointerException();
    case 6:
    case 3:
    case 2:
    case 7:
    case 4:
    case 5:
    case 8:
    case 9:
    case 10:
    }
    while (true)
    {
      return true;
      Object localObject = (y)paramMessage.obj;
      i1 = paramMessage.arg1;
      paramMessage = ((y)localObject).d;
      if (!this.j.containsKey(paramMessage))
        this.j.put(paramMessage, new v(this, (y)localObject));
      v localv = (v)this.j.get(paramMessage);
      SparseArray localSparseArray = localv.d;
      paramMessage = localv.c.a;
      if (paramMessage.b != null)
      {
        localSparseArray.put(i1, new z(paramMessage.b, localv.b));
        this.i.put(i1, localv);
        localv.f();
        this.n.put(i1, new t(this, (y)localObject, i1, this.m));
        if ((this.o == null) || (!u.a(this.o).get()))
        {
          this.o = new u(this.m, this.n);
          this.o.start();
        }
      }
      else
      {
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
        e();
        continue;
        i1 = paramMessage.arg1;
        if (paramMessage.arg2 == 1)
          bool = true;
        a(i1, bool);
        continue;
        paramMessage = (g)paramMessage.obj;
        localObject = (v)this.i.get(paramMessage.a);
        if (((v)localObject).b.b())
        {
          ((v)localObject).a(paramMessage);
          ((v)localObject).d();
        }
        else
        {
          ((v)localObject).a.add(paramMessage);
          if ((((v)localObject).h != null) && (((v)localObject).h.a()))
          {
            ((v)localObject).a(((v)localObject).h);
          }
          else
          {
            ((v)localObject).f();
            continue;
            if (this.i.get(paramMessage.arg1) != null)
            {
              ((v)this.i.get(paramMessage.arg1)).a(new Status(17, "Error resolution was canceled by the user."));
              continue;
              if (this.j.containsKey(paramMessage.obj))
              {
                paramMessage = (v)this.j.get(paramMessage.obj);
                if (paramMessage.g)
                {
                  paramMessage.f();
                  continue;
                  if (this.j.containsKey(paramMessage.obj))
                  {
                    localObject = (v)this.j.get(paramMessage.obj);
                    if (((v)localObject).g)
                    {
                      ((v)localObject).c();
                      if (((v)localObject).i.g.a(((v)localObject).i.f) == 18);
                      for (paramMessage = new Status(8, "Connection timed out while waiting for Google Play services update to complete."); ; paramMessage = new Status(8, "API failed to connect while resuming due to an unknown error."))
                      {
                        ((v)localObject).a(paramMessage);
                        ((v)localObject).b.a();
                        break;
                      }
                      if (this.j.containsKey(paramMessage.obj))
                        ((v)this.j.get(paramMessage.obj)).e();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.s
 * JD-Core Version:    0.6.2
 */