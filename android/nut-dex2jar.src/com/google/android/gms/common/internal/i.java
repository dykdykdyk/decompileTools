package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class i<T extends IInterface>
{
  public static final String[] g = { "service_esmobile", "service_googleme" };
  private long a;
  int b;
  long c;
  public final Context d;
  final Handler e;
  protected AtomicInteger f = new AtomicInteger(0);
  private int h;
  private long i;
  private final Looper j;
  private final ar k;
  private final g l;
  private final Object m = new Object();
  private final Object n = new Object();
  private bg o;
  private o p;
  private T q;
  private final ArrayList<n<?>> r = new ArrayList();
  private q s;
  private int t = 1;
  private final k u;
  private final l v;
  private final int w;
  private final String x;

  protected i(Context paramContext, Looper paramLooper, ar paramar, g paramg, k paramk, l paraml, String paramString)
  {
    this.d = ((Context)b.a(paramContext, "Context must not be null"));
    this.j = ((Looper)b.a(paramLooper, "Looper must not be null"));
    this.k = ((ar)b.a(paramar, "Supervisor must not be null"));
    this.l = ((g)b.a(paramg, "API availability must not be null"));
    this.e = new m(this, paramLooper);
    this.w = 44;
    this.u = paramk;
    this.v = paraml;
    this.x = paramString;
  }

  private void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int i1;
    int i2;
    if (paramInt == 3)
    {
      i1 = 1;
      if (paramT == null)
        break label395;
      i2 = 1;
      label17: if (i1 != i2)
        break label401;
    }
    while (true)
    {
      b.a(bool);
      while (true)
      {
        String str;
        q localq;
        synchronized (this.m)
        {
          this.t = paramInt;
          this.q = paramT;
          switch (paramInt)
          {
          case 2:
            return;
            if (this.s != null)
            {
              paramT = String.valueOf(d());
              str = String.valueOf("com.google.android.gms");
              Log.e("GmsClient", String.valueOf(paramT).length() + 70 + String.valueOf(str).length() + "Calling connect() while still connected, missing disconnect() for " + paramT + " on " + str);
              paramT = this.k;
              str = d();
              localq = this.s;
              j();
              paramT.a(str, "com.google.android.gms", localq);
              this.f.incrementAndGet();
            }
            this.s = new q(this, this.f.get());
            if (this.k.a(d(), "com.google.android.gms", this.s, j()))
              continue;
            paramT = String.valueOf(d());
            str = String.valueOf("com.google.android.gms");
            Log.e("GmsClient", String.valueOf(paramT).length() + 34 + String.valueOf(str).length() + "unable to connect to service: " + paramT + " on " + str);
            a(16, this.f.get());
          case 3:
          case 1:
          }
        }
        this.a = System.currentTimeMillis();
        continue;
        if (this.s != null)
        {
          paramT = this.k;
          str = d();
          localq = this.s;
          j();
          paramT.a(str, "com.google.android.gms", localq);
          this.s = null;
        }
      }
      i1 = 0;
      break;
      label395: i2 = 0;
      break label17;
      label401: bool = false;
    }
  }

  private boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (this.m)
    {
      if (this.t != paramInt1)
        return false;
      a(paramInt2, paramT);
      return true;
    }
  }

  public static Bundle h()
  {
    return null;
  }

  private String j()
  {
    if (this.x == null)
      return this.d.getClass().getName();
    return this.x;
  }

  public abstract T a(IBinder paramIBinder);

  public final void a()
  {
    this.f.incrementAndGet();
    synchronized (this.r)
    {
      int i2 = this.r.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((n)this.r.get(i1)).d();
        i1 += 1;
      }
      this.r.clear();
    }
    synchronized (this.n)
    {
      this.o = null;
      a(1, null);
      return;
      localObject2 = finally;
      throw localObject2;
    }
  }

  protected final void a(int paramInt1, int paramInt2)
  {
    this.e.sendMessage(this.e.obtainMessage(5, paramInt2, -1, new s(this, paramInt1)));
  }

  protected final void a(ConnectionResult paramConnectionResult)
  {
    this.h = paramConnectionResult.c;
    this.i = System.currentTimeMillis();
  }

  public final void a(o paramo)
  {
    this.p = ((o)b.a(paramo, "Connection progress callbacks cannot be null."));
    a(2, null);
  }

  public final void a(Set<Scope> arg1)
  {
    try
    {
      Bundle localBundle = g();
      localGetServiceRequest = new GetServiceRequest(this.w);
      localGetServiceRequest.d = this.d.getPackageName();
      localGetServiceRequest.g = localBundle;
      if (??? != null)
        localGetServiceRequest.f = ((Scope[])???.toArray(new Scope[???.size()]));
      if (i())
      {
        if (f() == null)
          break label125;
        ??? = f();
        localGetServiceRequest.h = ???;
      }
    }
    catch (DeadObjectException )
    {
      synchronized (this.n)
      {
        GetServiceRequest localGetServiceRequest;
        while (this.o != null)
        {
          this.o.a(new p(this, this.f.get()), localGetServiceRequest);
          return;
          ??? = new Account("<<default account>>", "com.google");
          continue;
          ??? = ???;
          Log.w("GmsClient", "service died");
          this.e.sendMessage(this.e.obtainMessage(4, this.f.get(), 1));
          return;
        }
        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
      }
    }
    catch (RemoteException )
    {
      label125: Log.w("GmsClient", "Remote exception occurred", ???);
    }
  }

  public final boolean b()
  {
    while (true)
    {
      synchronized (this.m)
      {
        if (this.t == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  public final boolean c()
  {
    while (true)
    {
      synchronized (this.m)
      {
        if (this.t == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  public abstract String d();

  public abstract String e();

  public Account f()
  {
    return null;
  }

  public Bundle g()
  {
    return new Bundle();
  }

  public boolean i()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.i
 * JD-Core Version:    0.6.2
 */