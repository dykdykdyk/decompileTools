package com.crashlytics.android.a;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.t;
import io.fabric.sdk.android.services.e.q;
import io.fabric.sdk.android.services.e.v;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

public class a extends o<Boolean>
{
  public z a;

  private Boolean e()
  {
    try
    {
      Object localObject2 = io.fabric.sdk.android.services.e.r.a().a();
      if (localObject2 == null)
      {
        io.fabric.sdk.android.f.b().e("Answers", "Failed to retrieve settings");
        return Boolean.valueOf(false);
      }
      Object localObject3;
      if (((v)localObject2).d.d)
      {
        io.fabric.sdk.android.f.b().a("Answers", "Analytics collection enabled");
        localObject1 = this.a;
        localObject2 = ((v)localObject2).e;
        localObject3 = io.fabric.sdk.android.services.b.l.d(this.q, "com.crashlytics.ApiEndpoint");
        ((z)localObject1).d.c = ((io.fabric.sdk.android.services.e.b)localObject2).h;
        localObject1 = ((z)localObject1).b;
        ((b)localObject1).a(new c((b)localObject1, (io.fabric.sdk.android.services.e.b)localObject2, (String)localObject3));
        return Boolean.valueOf(true);
      }
      io.fabric.sdk.android.f.b().a("Answers", "Analytics collection disabled");
      Object localObject1 = this.a;
      localObject2 = ((z)localObject1).c;
      if (((io.fabric.sdk.android.a)localObject2).a != null)
      {
        localObject2 = ((io.fabric.sdk.android.a)localObject2).a;
        localObject3 = ((io.fabric.sdk.android.b)localObject2).a.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          Application.ActivityLifecycleCallbacks localActivityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks)((Iterator)localObject3).next();
          ((io.fabric.sdk.android.b)localObject2).b.unregisterActivityLifecycleCallbacks(localActivityLifecycleCallbacks);
        }
      }
    }
    catch (Exception localException)
    {
      io.fabric.sdk.android.f.b().c("Answers", "Error dealing with settings", localException);
      return Boolean.valueOf(false);
    }
    b localb = localException.b;
    localb.a(new d(localb));
    return Boolean.valueOf(false);
  }

  public final String a()
  {
    return "1.3.6.97";
  }

  public final String b()
  {
    return "com.crashlytics.sdk.android:answers";
  }

  @SuppressLint({"NewApi"})
  protected final boolean c_()
  {
    while (true)
    {
      int i;
      try
      {
        Object localObject2 = this.q;
        Object localObject3 = ((Context)localObject2).getPackageManager();
        Object localObject4 = ((Context)localObject2).getPackageName();
        Object localObject5 = ((PackageManager)localObject3).getPackageInfo((String)localObject4, 0);
        Object localObject6 = Integer.toString(((PackageInfo)localObject5).versionCode);
        Object localObject1;
        if (((PackageInfo)localObject5).versionName == null)
        {
          localObject1 = "0.0";
          if (Build.VERSION.SDK_INT >= 9)
          {
            l = ((PackageInfo)localObject5).firstInstallTime;
            localObject1 = new ag((Context)localObject2, this.s, (String)localObject6, (String)localObject1);
            localObject3 = new i((Context)localObject2, new io.fabric.sdk.android.services.d.b(this));
            localObject4 = new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.f.b());
            localObject5 = new io.fabric.sdk.android.a((Context)localObject2);
            localObject6 = t.a("Answers Events Handler");
            m localm = new m((ScheduledExecutorService)localObject6);
            this.a = new z(new b(this, (Context)localObject2, (i)localObject3, (ag)localObject1, (io.fabric.sdk.android.services.network.l)localObject4, (ScheduledExecutorService)localObject6), (io.fabric.sdk.android.a)localObject5, localm, new k(new io.fabric.sdk.android.services.d.d((Context)localObject2, "settings")), l);
            localObject1 = this.a;
            localObject2 = ((z)localObject1).b;
            ((b)localObject2).a(new f((b)localObject2));
            ((z)localObject1).c.a(new j((z)localObject1, ((z)localObject1).d));
            ((z)localObject1).d.b.add(localObject1);
            l = ((z)localObject1).a;
            if (((z)localObject1).e.a.a().getBoolean("analytics_launched", false))
              continue;
            if (System.currentTimeMillis() - l >= 3600000L)
              continue;
            i = 1;
            break label452;
            if (i == 0)
              break;
            io.fabric.sdk.android.f.b().a("Answers", "Logged install");
            ((z)localObject1).b.a(new ac(ad.f), false, true);
            localObject1 = ((z)localObject1).e;
            ((k)localObject1).a.a(((k)localObject1).a.b().putBoolean("analytics_launched", true));
            break;
          }
        }
        else
        {
          localObject1 = ((PackageInfo)localObject5).versionName;
          continue;
        }
        long l = new File(((PackageManager)localObject3).getApplicationInfo((String)localObject4, 0).sourceDir).lastModified();
        continue;
        i = 0;
        break label452;
        i = 0;
        continue;
      }
      catch (Exception localException)
      {
        io.fabric.sdk.android.f.b().c("Answers", "Error retrieving app properties", localException);
        return false;
      }
      label452: if (i != 0)
        i = 1;
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.a
 * JD-Core Version:    0.6.2
 */