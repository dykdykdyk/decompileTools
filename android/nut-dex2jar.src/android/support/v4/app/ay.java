package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.b.g;
import android.support.v4.b.h;
import android.support.v4.b.i;
import android.support.v4.f.d;
import android.support.v4.f.s;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class ay
  implements h<Object>, i<Object>
{
  final int a = 0;
  final Bundle b = null;
  aw<Object> c;
  g<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  ay n;

  public ay(int paramInt)
  {
    Object localObject;
    this.c = localObject;
  }

  final void a()
  {
    if ((this.i) && (this.j))
      this.h = true;
    do
    {
      do
        return;
      while (this.h);
      this.h = true;
      if (ax.a)
        Log.v("LoaderManager", "  Starting: " + this);
      if ((this.d == null) && (this.c != null))
        this.d = this.c.onCreateLoader(this.a, this.b);
    }
    while (this.d == null);
    if ((this.d.getClass().isMemberClass()) && (!Modifier.isStatic(this.d.getClass().getModifiers())))
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
    if (!this.m)
    {
      this.d.registerListener(this.a, this);
      this.d.registerOnLoadCanceledListener(this);
      this.m = true;
    }
    this.d.startLoading();
  }

  public final void a(g<Object> paramg, Object paramObject)
  {
    if (ax.a)
      Log.v("LoaderManager", "onLoadComplete: " + this);
    if (this.l)
      if (ax.a)
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
    do
    {
      do
      {
        return;
        if (this.o.b.a(this.a) == this)
          break;
      }
      while (!ax.a);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      ay localay = this.n;
      if (localay != null)
      {
        if (ax.a)
          Log.v("LoaderManager", "  Switching to pending loader: " + localay);
        this.n = null;
        this.o.b.a(this.a, null);
        c();
        this.o.a(localay);
        return;
      }
      if ((this.g != paramObject) || (!this.e))
      {
        this.g = paramObject;
        this.e = true;
        if (this.h)
          b(paramg, paramObject);
      }
      paramg = (ay)this.o.c.a(this.a);
      if ((paramg != null) && (paramg != this))
      {
        paramg.f = false;
        paramg.c();
        this.o.c.b(this.a);
      }
    }
    while ((ax.a(this.o) == null) || (this.o.a()));
    ax.a(this.o).f.c();
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString;
    paramString = this;
    while (true)
    {
      paramPrintWriter.print(str);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(paramString.a);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(paramString.b);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(paramString.c);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(paramString.d);
      if (paramString.d != null)
        paramString.d.dump(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      if ((paramString.e) || (paramString.f))
      {
        paramPrintWriter.print(str);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(paramString.e);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(paramString.f);
        paramPrintWriter.print(str);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(paramString.g);
      }
      paramPrintWriter.print(str);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(paramString.h);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(paramString.k);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(paramString.l);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(paramString.i);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(paramString.j);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(paramString.m);
      if (paramString.n == null)
        break;
      paramPrintWriter.print(str);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(paramString.n);
      paramPrintWriter.println(":");
      paramString = paramString.n;
      str = str + "  ";
    }
  }

  final void b()
  {
    if (ax.a)
      Log.v("LoaderManager", "  Stopping: " + this);
    this.h = false;
    if ((!this.i) && (this.d != null) && (this.m))
    {
      this.m = false;
      this.d.unregisterListener(this);
      this.d.unregisterOnLoadCanceledListener(this);
      this.d.stopLoading();
    }
  }

  final void b(g<Object> paramg, Object paramObject)
  {
    String str;
    if (this.c != null)
    {
      if (ax.a(this.o) == null)
        break label158;
      str = ax.a(this.o).f.v;
      ax.a(this.o).f.v = "onLoadFinished";
    }
    while (true)
    {
      try
      {
        if (ax.a)
          Log.v("LoaderManager", "  onLoadFinished in " + paramg + ": " + paramg.dataToString(paramObject));
        this.c.onLoadFinished(paramg, paramObject);
        if (ax.a(this.o) != null)
          ax.a(this.o).f.v = str;
        this.f = true;
        return;
      }
      finally
      {
        if (ax.a(this.o) != null)
          ax.a(this.o).f.v = str;
      }
      label158: str = null;
    }
  }

  final void c()
  {
    ay localay = this;
    if (ax.a)
      Log.v("LoaderManager", "  Destroying: " + localay);
    localay.l = true;
    boolean bool = localay.f;
    localay.f = false;
    String str;
    if ((localay.c != null) && (localay.d != null) && (localay.e) && (bool))
    {
      if (ax.a)
        Log.v("LoaderManager", "  Reseting: " + localay);
      if (ax.a(localay.o) == null)
        break label279;
      str = ax.a(localay.o).f.v;
      ax.a(localay.o).f.v = "onLoaderReset";
    }
    while (true)
      label279: 
      try
      {
        localay.c.onLoaderReset(localay.d);
        if (ax.a(localay.o) != null)
          ax.a(localay.o).f.v = str;
        localay.c = null;
        localay.g = null;
        localay.e = false;
        if (localay.d != null)
        {
          if (localay.m)
          {
            localay.m = false;
            localay.d.unregisterListener(localay);
            localay.d.unregisterOnLoadCanceledListener(localay);
          }
          localay.d.reset();
        }
        if (localay.n != null)
          localay = localay.n;
      }
      finally
      {
        if (ax.a(localay.o) != null)
          ax.a(localay.o).f.v = str;
      }
  }

  public final void d()
  {
    if (ax.a)
      Log.v("LoaderManager", "onLoadCanceled: " + this);
    if (this.l)
      if (ax.a)
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
    ay localay;
    do
    {
      do
      {
        return;
        if (this.o.b.a(this.a) == this)
          break;
      }
      while (!ax.a);
      Log.v("LoaderManager", "  Ignoring load canceled -- not active");
      return;
      localay = this.n;
    }
    while (localay == null);
    if (ax.a)
      Log.v("LoaderManager", "  Switching to pending loader: " + localay);
    this.n = null;
    this.o.b.a(this.a, null);
    c();
    this.o.a(localay);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" : ");
    d.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ay
 * JD-Core Version:    0.6.2
 */