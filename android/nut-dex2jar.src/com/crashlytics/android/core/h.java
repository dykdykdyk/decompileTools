package com.crashlytics.android.core;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.util.Log;
import com.crashlytics.android.a.ac;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.e.e;
import io.fabric.sdk.android.services.e.q;
import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@io.fabric.sdk.android.services.concurrency.n(a={com.crashlytics.android.core.a.a.class})
public class h extends io.fabric.sdk.android.o<Void>
{
  private io.fabric.sdk.android.services.network.l A;
  private v B;
  public final long a;
  final ConcurrentHashMap<String, String> b;
  y c;
  public ab d;
  String e = null;
  String f = null;
  String g = null;
  String h;
  String i;
  String j;
  String k;
  String l;
  public boolean m = false;
  com.crashlytics.android.core.a.a n;
  private File t;
  private io.fabric.sdk.android.services.d.a u;
  private y v;
  private z w = new t((byte)0);
  private String x;
  private float y = 1.0F;
  private final br z = null;

  public h()
  {
    this((byte)0);
  }

  private h(byte paramByte)
  {
    this(localExecutorService);
  }

  private h(ExecutorService paramExecutorService)
  {
    this.B = new v(paramExecutorService);
    this.b = new ConcurrentHashMap();
    this.a = System.currentTimeMillis();
  }

  public static String a(String paramString1, String paramString2)
  {
    return io.fabric.sdk.android.services.b.l.c() + "/" + paramString1 + " " + paramString2;
  }

  static void a(String paramString)
  {
    Object localObject1 = (com.crashlytics.android.a.a)f.a(com.crashlytics.android.a.a.class);
    if (localObject1 != null)
    {
      paramString = new io.fabric.sdk.android.services.b.p(paramString);
      if (((com.crashlytics.android.a.a)localObject1).a != null)
      {
        localObject1 = ((com.crashlytics.android.a.a)localObject1).a;
        Object localObject2 = paramString.a;
        if (Looper.myLooper() == Looper.getMainLooper())
          throw new IllegalStateException("onCrash called from main thread!!!");
        f.b().a("Answers", "Logged crash");
        paramString = ((com.crashlytics.android.a.z)localObject1).b;
        localObject1 = Collections.singletonMap("sessionId", localObject2);
        localObject2 = new ac(com.crashlytics.android.a.ad.e);
        ((ac)localObject2).c = ((Map)localObject1);
        paramString.a((ac)localObject2, true, false);
      }
    }
  }

  private boolean a(Activity paramActivity, io.fabric.sdk.android.services.e.o paramo)
  {
    aw localaw = new aw(paramActivity, paramo);
    u localu = new u((byte)0);
    paramActivity.runOnUiThread(new o(this, paramActivity, localu, localaw, paramo));
    f.b().a("CrashlyticsCore", "Waiting for user opt-in.");
    try
    {
      localu.b.await();
      label56: return localu.a;
    }
    catch (InterruptedException paramActivity)
    {
      break label56;
    }
  }

  private boolean a(Context paramContext)
  {
    if (this.m)
      return false;
    new io.fabric.sdk.android.services.b.j();
    this.i = io.fabric.sdk.android.services.b.j.a(paramContext);
    if (this.i == null)
      return false;
    f.b().c("CrashlyticsCore", "Initializing Crashlytics 2.3.8.97");
    this.u = new io.fabric.sdk.android.services.d.b(this);
    this.c = new y("crash_marker", this.u);
    this.v = new y("initialization_marker", this.u);
    try
    {
      if (this.z != null)
      {
        localObject = new aa(this.z);
        this.A = new io.fabric.sdk.android.services.network.b(f.b());
        this.A.a((io.fabric.sdk.android.services.network.n)localObject);
        this.x = paramContext.getPackageName();
        this.j = this.s.e();
        f.b().a("CrashlyticsCore", "Installer package name is: " + this.j);
        localObject = paramContext.getPackageManager().getPackageInfo(this.x, 0);
        this.k = Integer.toString(((PackageInfo)localObject).versionCode);
        if (((PackageInfo)localObject).versionName != null)
          break label469;
        localObject = "0.0";
        this.l = ((String)localObject);
        this.h = io.fabric.sdk.android.services.b.l.k(paramContext);
        localObject = new a(this.h, io.fabric.sdk.android.services.b.l.a(paramContext, "com.crashlytics.RequireBuildId", true));
        if ((!io.fabric.sdk.android.services.b.l.c(((a)localObject).a)) || (!((a)localObject).b))
          break label477;
        Log.e("CrashlyticsCore", ".");
        Log.e("CrashlyticsCore", ".     |  | ");
        Log.e("CrashlyticsCore", ".     |  |");
        Log.e("CrashlyticsCore", ".     |  |");
        Log.e("CrashlyticsCore", ".   \\ |  | /");
        Log.e("CrashlyticsCore", ".    \\    /");
        Log.e("CrashlyticsCore", ".     \\  /");
        Log.e("CrashlyticsCore", ".      \\/");
        Log.e("CrashlyticsCore", ".");
        Log.e("CrashlyticsCore", "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.");
        Log.e("CrashlyticsCore", ".");
        Log.e("CrashlyticsCore", ".      /\\");
        Log.e("CrashlyticsCore", ".     /  \\");
        Log.e("CrashlyticsCore", ".    /    \\");
        Log.e("CrashlyticsCore", ".   / |  | \\");
        Log.e("CrashlyticsCore", ".     |  |");
        Log.e("CrashlyticsCore", ".     |  |");
        Log.e("CrashlyticsCore", ".     |  |");
        Log.e("CrashlyticsCore", ".");
        throw new CrashlyticsMissingDependencyException("This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.");
      }
    }
    catch (CrashlyticsMissingDependencyException paramContext)
    {
      while (true)
      {
        throw new UnmetDependencyException(paramContext);
        localObject = null;
        continue;
        localObject = ((PackageInfo)localObject).versionName;
      }
      if (!((a)localObject).b)
        f.b().a("CrashlyticsCore", "Configured not to require a build ID.");
      Object localObject = new bb(paramContext, this.x);
      boolean bool = ((Boolean)this.B.a(new l(this))).booleanValue();
      Boolean localBoolean = (Boolean)this.B.a(new s(this.c));
      Boolean.TRUE.equals(localBoolean);
      try
      {
        f.b().a("CrashlyticsCore", "Installing exception handler...");
        this.d = new ab(Thread.getDefaultUncaughtExceptionHandler(), this.B, this.s, (ca)localObject, this.u, this);
        localObject = this.d;
        ((ab)localObject).f.b(new ad((ab)localObject));
        Thread.setDefaultUncaughtExceptionHandler(this.d);
        f.b().a("CrashlyticsCore", "Successfully installed exception handler.");
        if ((bool) && (io.fabric.sdk.android.services.b.l.l(paramContext)))
        {
          l();
          return false;
        }
      }
      catch (Exception localException)
      {
        while (true)
          f.b().c("CrashlyticsCore", "There was a problem installing the exception handler.", localException);
      }
    }
    catch (Exception paramContext)
    {
      label469: label477: f.b().c("CrashlyticsCore", "Crashlytics was not started due to an exception during initialization", paramContext);
      return false;
    }
    return true;
  }

  public static boolean b(String paramString)
  {
    h localh = f();
    if ((localh == null) || (localh.d == null))
    {
      f.b().c("CrashlyticsCore", "Crashlytics must be initialized by calling Fabric.with(Context) " + paramString, null);
      return false;
    }
    return true;
  }

  public static h f()
  {
    return (h)f.a(h.class);
  }

  static io.fabric.sdk.android.services.e.p i()
  {
    io.fabric.sdk.android.services.e.v localv = io.fabric.sdk.android.services.e.r.a().a();
    if (localv == null)
      return null;
    return localv.b;
  }

  private void l()
  {
    Object localObject = new i(this);
    Iterator localIterator = this.p.f().iterator();
    while (localIterator.hasNext())
      ((io.fabric.sdk.android.services.concurrency.s)localObject).a((io.fabric.sdk.android.services.concurrency.y)localIterator.next());
    localObject = this.o.c.submit((Callable)localObject);
    f.b().a("CrashlyticsCore", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
    try
    {
      ((Future)localObject).get(4L, TimeUnit.SECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      f.b().c("CrashlyticsCore", "Crashlytics was interrupted during initialization.", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      f.b().c("CrashlyticsCore", "Problem encountered during Crashlytics initialization.", localExecutionException);
      return;
    }
    catch (TimeoutException localTimeoutException)
    {
      f.b().c("CrashlyticsCore", "Crashlytics timed out during initialization.", localTimeoutException);
    }
  }

  private void m()
  {
    this.B.b(new k(this));
  }

  final ar a(io.fabric.sdk.android.services.e.v paramv)
  {
    if (paramv != null)
      return new as(this, io.fabric.sdk.android.services.b.l.d(this.q, "com.crashlytics.ApiEndpoint"), paramv.a.d, this.A);
    return null;
  }

  public final String a()
  {
    return "2.3.8.97";
  }

  public final String b()
  {
    return "com.crashlytics.sdk.android.crashlytics-core";
  }

  protected final boolean c_()
  {
    return a(this.q);
  }

  protected final Void e()
  {
    this.B.a(new j(this));
    Object localObject1 = this.d;
    ((ab)localObject1).f.a(new af((ab)localObject1));
    try
    {
      localObject1 = io.fabric.sdk.android.services.e.r.a().a();
      if (localObject1 == null)
      {
        f.b().d("CrashlyticsCore", "Received null settings, skipping initialization!");
        return null;
      }
      if (!((io.fabric.sdk.android.services.e.v)localObject1).d.c)
      {
        f.b().a("CrashlyticsCore", "Collection of crash reports disabled in Crashlytics settings.");
        return null;
      }
      ab localab = this.d;
      ((Boolean)localab.f.a(new ae(localab))).booleanValue();
      localObject1 = a((io.fabric.sdk.android.services.e.v)localObject1);
      if (localObject1 == null)
      {
        f.b().d("CrashlyticsCore", "Unable to create a call to upload reports.");
        return null;
      }
      new bv((ar)localObject1).a(this.y);
      return null;
    }
    catch (Exception localException)
    {
      f.b().c("CrashlyticsCore", "Crashlytics encountered a problem during asynchronous initialization.", localException);
      return null;
    }
    finally
    {
      m();
    }
  }

  final File g()
  {
    if (this.t == null)
      this.t = new io.fabric.sdk.android.services.d.b(this).a();
    return this.t;
  }

  final boolean h()
  {
    return ((Boolean)io.fabric.sdk.android.services.e.r.a().a(new m(this), Boolean.valueOf(false))).booleanValue();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.h
 * JD-Core Version:    0.6.2
 */