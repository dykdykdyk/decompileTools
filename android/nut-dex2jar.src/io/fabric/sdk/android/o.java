package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.concurrency.a;
import io.fabric.sdk.android.services.concurrency.q;
import java.io.File;
import java.util.concurrent.Executor;

public abstract class o<Result>
  implements Comparable<o>
{
  public f o;
  public n<Result> p = new n(this);
  public Context q;
  l<Result> r;
  public x s;

  private boolean a(o paramo)
  {
    Object localObject = (io.fabric.sdk.android.services.concurrency.n)getClass().getAnnotation(io.fabric.sdk.android.services.concurrency.n.class);
    if (localObject != null)
    {
      localObject = ((io.fabric.sdk.android.services.concurrency.n)localObject).a();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        if (localObject[i].equals(paramo.getClass()))
          return true;
        i += 1;
      }
    }
    return false;
  }

  private boolean e()
  {
    return (io.fabric.sdk.android.services.concurrency.n)getClass().getAnnotation(io.fabric.sdk.android.services.concurrency.n.class) != null;
  }

  public abstract String a();

  final void a(Context paramContext, f paramf, l<Result> paraml, x paramx)
  {
    this.o = paramf;
    this.q = new j(paramContext, b(), k());
    this.r = paraml;
    this.s = paramx;
  }

  public abstract String b();

  public boolean c_()
  {
    return true;
  }

  public abstract Result d();

  final void j()
  {
    n localn = this.p;
    q localq = new q(this.o.c, localn);
    if (localn.f != io.fabric.sdk.android.services.concurrency.j.a);
    switch (io.fabric.sdk.android.services.concurrency.e.a[(localn.f - 1)])
    {
    default:
      localn.f = io.fabric.sdk.android.services.concurrency.j.b;
      localn.b();
      localn.d.b = new Void[] { null };
      localq.execute(localn.e);
      return;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  public final String k()
  {
    return ".Fabric" + File.separator + b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.o
 * JD-Core Version:    0.6.2
 */