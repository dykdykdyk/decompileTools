package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import io.fabric.sdk.android.services.b.j;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.e.aa;
import io.fabric.sdk.android.services.e.d;
import io.fabric.sdk.android.services.e.e;
import io.fabric.sdk.android.services.e.h;
import io.fabric.sdk.android.services.e.n;
import io.fabric.sdk.android.services.e.v;
import io.fabric.sdk.android.services.network.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;

final class s extends o<Boolean>
{
  private final io.fabric.sdk.android.services.network.l a = new b();
  private PackageManager b;
  private String c;
  private PackageInfo d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private final Future<Map<String, q>> j;
  private final Collection<o> k;

  public s(Future<Map<String, q>> paramFuture, Collection<o> paramCollection)
  {
    this.j = paramFuture;
    this.k = paramCollection;
  }

  private d a(n paramn, Collection<q> paramCollection)
  {
    Object localObject = this.q;
    new j();
    String str = j.a((Context)localObject);
    localObject = io.fabric.sdk.android.services.b.l.a(new String[] { io.fabric.sdk.android.services.b.l.k((Context)localObject) });
    int m = io.fabric.sdk.android.services.b.r.a(this.g).e;
    return new d(str, this.s.c, this.f, this.e, (String)localObject, this.h, m, this.i, "0", paramn, paramCollection);
  }

  private static Map<String, q> a(Map<String, q> paramMap, Collection<o> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      o localo = (o)paramCollection.next();
      if (!paramMap.containsKey(localo.b()))
        paramMap.put(localo.b(), new q(localo.b(), localo.a(), "binary"));
    }
    return paramMap;
  }

  private Boolean e()
  {
    boolean bool2 = false;
    Object localObject2 = io.fabric.sdk.android.services.b.l.i(this.q);
    Object localObject3 = f();
    boolean bool1 = bool2;
    if (localObject3 != null);
    try
    {
      if (this.j != null);
      for (Object localObject1 = (Map)this.j.get(); ; localObject1 = new HashMap())
      {
        Map localMap = a((Map)localObject1, this.k);
        localObject1 = ((v)localObject3).a;
        localObject3 = localMap.values();
        bool3 = true;
        if (!"new".equals(((e)localObject1).b))
          break label196;
        localObject2 = a(n.a(this.q, (String)localObject2), (Collection)localObject3);
        if (!new h(this, g(), ((e)localObject1).c, this.a).a((d)localObject2))
          break;
        bool1 = io.fabric.sdk.android.services.e.r.a().c();
        return Boolean.valueOf(bool1);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool3;
        f.b().c("Fabric", "Error performing auto configuration.", localException);
        bool1 = bool2;
        continue;
        f.b().c("Fabric", "Failed to create app with Crashlytics service.", null);
        bool1 = false;
        continue;
        label196: if ("configured".equals(localException.b))
        {
          bool1 = io.fabric.sdk.android.services.e.r.a().c();
        }
        else
        {
          bool1 = bool3;
          if (localException.e)
          {
            f.b().a("Fabric", "Server says an update is required - forcing a full App update.");
            localObject2 = a(n.a(this.q, (String)localObject2), (Collection)localObject3);
            new aa(this, g(), localException.c, this.a).a((d)localObject2);
            bool1 = bool3;
          }
        }
      }
    }
  }

  private v f()
  {
    try
    {
      io.fabric.sdk.android.services.e.r.a().a(this, this.s, this.a, this.e, this.f, g()).b();
      v localv = io.fabric.sdk.android.services.e.r.a().a();
      return localv;
    }
    catch (Exception localException)
    {
      f.b().c("Fabric", "Error dealing with settings", localException);
    }
    return null;
  }

  private String g()
  {
    return io.fabric.sdk.android.services.b.l.d(this.q, "com.crashlytics.ApiEndpoint");
  }

  public final String a()
  {
    return "1.3.10.97";
  }

  public final String b()
  {
    return "io.fabric.sdk.android:fabric";
  }

  protected final boolean c_()
  {
    try
    {
      this.g = this.s.e();
      this.b = this.q.getPackageManager();
      this.c = this.q.getPackageName();
      this.d = this.b.getPackageInfo(this.c, 0);
      this.e = Integer.toString(this.d.versionCode);
      if (this.d.versionName == null);
      for (String str = "0.0"; ; str = this.d.versionName)
      {
        this.f = str;
        this.h = this.b.getApplicationLabel(this.q.getApplicationInfo()).toString();
        this.i = Integer.toString(this.q.getApplicationInfo().targetSdkVersion);
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      f.b().c("Fabric", "Failed init", localNameNotFoundException);
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.s
 * JD-Core Version:    0.6.2
 */