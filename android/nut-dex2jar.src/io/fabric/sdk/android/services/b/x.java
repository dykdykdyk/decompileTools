package io.fabric.sdk.android.services.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.provider.Settings.Secure;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class x
{
  private static final Pattern g = Pattern.compile("[^\\p{Alnum}]");
  private static final String h = Pattern.quote("/");
  public final boolean a;
  public final boolean b;
  public final String c;
  c d;
  b e;
  boolean f;
  private final ReentrantLock i = new ReentrantLock();
  private final z j;
  private final Context k;
  private final String l;
  private final Collection<o> m;

  public x(Context paramContext, String paramString1, String paramString2, Collection<o> paramCollection)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("appContext must not be null");
    if (paramString1 == null)
      throw new IllegalArgumentException("appIdentifier must not be null");
    if (paramCollection == null)
      throw new IllegalArgumentException("kits must not be null");
    this.k = paramContext;
    this.c = paramString1;
    this.l = paramString2;
    this.m = paramCollection;
    this.j = new z();
    this.d = new c(paramContext);
    this.a = l.a(paramContext, "com.crashlytics.CollectDeviceIdentifiers", true);
    if (!this.a)
      f.b().a("Fabric", "Device ID collection disabled for " + paramContext.getPackageName());
    this.b = l.a(paramContext, "com.crashlytics.CollectUserIdentifiers", true);
    if (!this.b)
      f.b().a("Fabric", "User information collection disabled for " + paramContext.getPackageName());
  }

  private String a(SharedPreferences paramSharedPreferences)
  {
    this.i.lock();
    try
    {
      String str2 = paramSharedPreferences.getString("crashlytics.installation.id", null);
      String str1 = str2;
      if (str2 == null)
      {
        str1 = b(UUID.randomUUID().toString());
        paramSharedPreferences.edit().putString("crashlytics.installation.id", str1).commit();
      }
      return str1;
    }
    finally
    {
      this.i.unlock();
    }
    throw paramSharedPreferences;
  }

  public static String a(String paramString)
  {
    return paramString.replaceAll(h, "");
  }

  private static void a(Map<y, String> paramMap, y paramy, String paramString)
  {
    if (paramString != null)
      paramMap.put(paramy, paramString);
  }

  public static String b()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { a(Build.MANUFACTURER), a(Build.MODEL) });
  }

  private static String b(String paramString)
  {
    if (paramString == null)
      return null;
    return g.matcher(paramString).replaceAll("").toLowerCase(Locale.US);
  }

  public final String a()
  {
    String str2 = this.l;
    String str1 = str2;
    if (str2 == null)
    {
      SharedPreferences localSharedPreferences = l.a(this.k);
      str2 = localSharedPreferences.getString("crashlytics.installation.id", null);
      str1 = str2;
      if (str2 == null)
        str1 = a(localSharedPreferences);
    }
    return str1;
  }

  public final String c()
  {
    Object localObject = "";
    if (this.a)
    {
      String str = h();
      localObject = str;
      if (str == null)
      {
        SharedPreferences localSharedPreferences = l.a(this.k);
        str = localSharedPreferences.getString("crashlytics.installation.id", null);
        localObject = str;
        if (str == null)
          localObject = a(localSharedPreferences);
      }
    }
    return localObject;
  }

  public final Map<y, String> d()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.m.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (o)localIterator.next();
      if ((localObject instanceof s))
      {
        localObject = ((s)localObject).e().entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          a(localHashMap, (y)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
    a(localHashMap, y.d, h());
    a(localHashMap, y.g, g());
    return Collections.unmodifiableMap(localHashMap);
  }

  public final String e()
  {
    return this.j.a(this.k);
  }

  public final b f()
  {
    try
    {
      c localc;
      b localb;
      if (!this.f)
      {
        localc = this.d;
        localb = new b(localc.a.a().getString("advertising_id", ""), localc.a.a().getBoolean("limit_ad_tracking_enabled", false));
        if (!c.b(localb))
          break label117;
        f.b().a("Fabric", "Using AdvertisingInfo from Preference Store");
        new Thread(new d(localc, localb)).start();
      }
      while (true)
      {
        this.e = localb;
        this.f = true;
        localb = this.e;
        return localb;
        label117: localb = localc.a();
        localc.a(localb);
      }
    }
    finally
    {
    }
  }

  public final String g()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.a)
    {
      b localb = f();
      localObject1 = localObject2;
      if (localb != null)
        localObject1 = localb.a;
    }
    return localObject1;
  }

  public final String h()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.a)
    {
      String str = Settings.Secure.getString(this.k.getContentResolver(), "android_id");
      localObject1 = localObject2;
      if (!"9774d56d682e549c".equals(str))
        localObject1 = b(str);
    }
    return localObject1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.x
 * JD-Core Version:    0.6.2
 */