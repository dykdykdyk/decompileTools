package io.fabric.sdk.android.services.c;

import android.content.Context;
import io.fabric.sdk.android.services.b.q;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class d<T>
{
  private final int a;
  protected final Context b;
  protected final c<T> c;
  public final q d;
  protected final k e;
  protected volatile long f;
  protected final List<l> g = new CopyOnWriteArrayList();

  public d(Context paramContext, c<T> paramc, q paramq, k paramk, int paramInt)
    throws IOException
  {
    this.b = paramContext.getApplicationContext();
    this.c = paramc;
    this.e = paramk;
    this.d = paramq;
    this.f = this.d.a();
    this.a = paramInt;
  }

  private static long a(String paramString)
  {
    paramString = paramString.split("_");
    if (paramString.length != 3)
      return 0L;
    try
    {
      long l = Long.valueOf(paramString[2]).longValue();
      return l;
    }
    catch (NumberFormatException paramString)
    {
    }
    return 0L;
  }

  public abstract String a();

  public final void a(l paraml)
  {
    if (paraml != null)
      this.g.add(paraml);
  }

  public final void a(T paramT)
    throws IOException
  {
    paramT = this.c.a(paramT);
    int i = paramT.length;
    if (!this.e.a(i, c()))
    {
      String str = String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[] { Integer.valueOf(this.e.a()), Integer.valueOf(i), Integer.valueOf(c()) });
      io.fabric.sdk.android.services.b.l.c(this.b, str);
      d();
    }
    this.e.a(paramT);
  }

  public final void a(List<File> paramList)
  {
    this.e.a(paramList);
  }

  public int b()
  {
    return this.a;
  }

  public int c()
  {
    return 8000;
  }

  public final boolean d()
    throws IOException
  {
    boolean bool = false;
    if (!this.e.b())
    {
      localObject = a();
      this.e.a((String)localObject);
      io.fabric.sdk.android.services.b.l.c(this.b, String.format(Locale.US, "generated new file %s", new Object[] { localObject }));
      this.f = this.d.a();
      bool = true;
    }
    Object localObject = this.g.iterator();
    while (((Iterator)localObject).hasNext())
    {
      l locall = (l)((Iterator)localObject).next();
      try
      {
        locall.a();
      }
      catch (Exception localException)
      {
        io.fabric.sdk.android.services.b.l.b(this.b, "One of the roll over listeners threw an exception");
      }
    }
    return bool;
  }

  public final List<File> e()
  {
    return this.e.c();
  }

  public final void f()
  {
    this.e.a(this.e.d());
    this.e.e();
  }

  public final void g()
  {
    Object localObject2 = this.e.d();
    int i = b();
    if (((List)localObject2).size() <= i)
      return;
    int j = ((List)localObject2).size() - i;
    io.fabric.sdk.android.services.b.l.a(this.b, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[] { Integer.valueOf(((List)localObject2).size()), Integer.valueOf(i), Integer.valueOf(j) }));
    Object localObject1 = new TreeSet(new e(this));
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      File localFile = (File)((Iterator)localObject2).next();
      ((TreeSet)localObject1).add(new f(localFile, a(localFile.getName())));
    }
    localObject2 = new ArrayList();
    localObject1 = ((TreeSet)localObject1).iterator();
    do
    {
      if (!((Iterator)localObject1).hasNext())
        break;
      ((ArrayList)localObject2).add(((f)((Iterator)localObject1).next()).a);
    }
    while (((ArrayList)localObject2).size() != j);
    this.e.a((List)localObject2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.d
 * JD-Core Version:    0.6.2
 */