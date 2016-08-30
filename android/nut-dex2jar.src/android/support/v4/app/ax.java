package android.support.v4.app;

import android.support.v4.b.g;
import android.support.v4.f.d;
import android.support.v4.f.s;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class ax extends av
{
  static boolean a = false;
  final s<ay> b = new s();
  final s<ay> c = new s();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  ab h;

  ax(String paramString, ab paramab, boolean paramBoolean)
  {
    this.d = paramString;
    this.h = paramab;
    this.e = paramBoolean;
  }

  private ay b(aw<Object> paramaw)
  {
    try
    {
      this.g = true;
      ay localay = new ay(this, paramaw);
      localay.d = paramaw.onCreateLoader(0, null);
      a(localay);
      return localay;
    }
    finally
    {
      this.g = false;
    }
    throw paramaw;
  }

  public final <D> g<D> a(aw<D> paramaw)
  {
    if (this.g)
      throw new IllegalStateException("Called while creating a loader");
    ay localay = (ay)this.b.a(0);
    if (a)
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + null);
    if (localay == null)
    {
      localay = b(paramaw);
      paramaw = localay;
      if (a)
        Log.v("LoaderManager", "  Created new loader " + localay);
    }
    for (paramaw = localay; ; paramaw = localay)
    {
      if ((paramaw.e) && (this.e))
        paramaw.b(paramaw.d, paramaw.g);
      return paramaw.d;
      if (a)
        Log.v("LoaderManager", "  Re-using existing loader " + localay);
      localay.c = paramaw;
    }
  }

  final void a(ay paramay)
  {
    this.b.a(paramay.a, paramay);
    if (this.e)
      paramay.a();
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    ay localay;
    if (this.b.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < this.b.b())
      {
        localay = (ay)this.b.d(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.b.c(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localay.toString());
        localay.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (this.c.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < this.c.b())
      {
        localay = (ay)this.c.d(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.c.c(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localay.toString());
        localay.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }

  public final boolean a()
  {
    int j = this.b.b();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      ay localay = (ay)this.b.d(i);
      if ((localay.h) && (!localay.f));
      for (boolean bool1 = true; ; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }

  final void b()
  {
    if (a)
      Log.v("LoaderManager", "Starting in " + this);
    if (this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.e = true;
      int i = this.b.b() - 1;
      while (i >= 0)
      {
        ((ay)this.b.d(i)).a();
        i -= 1;
      }
    }
  }

  final void c()
  {
    if (a)
      Log.v("LoaderManager", "Stopping in " + this);
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = this.b.b() - 1;
    while (i >= 0)
    {
      ((ay)this.b.d(i)).b();
      i -= 1;
    }
    this.e = false;
  }

  final void d()
  {
    if (a)
      Log.v("LoaderManager", "Retaining in " + this);
    Object localObject;
    if (!this.e)
    {
      localObject = new RuntimeException("here");
      ((RuntimeException)localObject).fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, (Throwable)localObject);
    }
    while (true)
    {
      return;
      this.f = true;
      this.e = false;
      int i = this.b.b() - 1;
      while (i >= 0)
      {
        localObject = (ay)this.b.d(i);
        if (a)
          Log.v("LoaderManager", "  Retaining: " + localObject);
        ((ay)localObject).i = true;
        ((ay)localObject).j = ((ay)localObject).h;
        ((ay)localObject).h = false;
        ((ay)localObject).c = null;
        i -= 1;
      }
    }
  }

  final void e()
  {
    int i = this.b.b() - 1;
    while (i >= 0)
    {
      ((ay)this.b.d(i)).k = true;
      i -= 1;
    }
  }

  final void f()
  {
    int i = this.b.b() - 1;
    while (i >= 0)
    {
      ay localay = (ay)this.b.d(i);
      if ((localay.h) && (localay.k))
      {
        localay.k = false;
        if (localay.e)
          localay.b(localay.d, localay.g);
      }
      i -= 1;
    }
  }

  final void g()
  {
    if (!this.f)
    {
      if (a)
        Log.v("LoaderManager", "Destroying Active in " + this);
      i = this.b.b() - 1;
      while (i >= 0)
      {
        ((ay)this.b.d(i)).c();
        i -= 1;
      }
      this.b.c();
    }
    if (a)
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    int i = this.c.b() - 1;
    while (i >= 0)
    {
      ((ay)this.c.d(i)).c();
      i -= 1;
    }
    this.c.c();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    d.a(this.h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ax
 * JD-Core Version:    0.6.2
 */