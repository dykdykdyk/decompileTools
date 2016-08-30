package com.google.firebase;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.common.internal.bo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class a
{
  static final Map<String, a> a = new android.support.v4.f.a();
  private static final List<String> b = Arrays.asList(new String[] { "com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId" });
  private static final List<String> c = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
  private static final List<String> d = Arrays.asList(new String[] { "com.google.android.gms.measurement.AppMeasurement" });
  private static final Set<String> e = Collections.emptySet();
  private static final Object f = new Object();
  private final Context g;
  private final String h;
  private final b i;
  private final AtomicBoolean j = new AtomicBoolean(true);
  private final AtomicBoolean k = new AtomicBoolean();
  private final List<Object> l = new CopyOnWriteArrayList();
  private final List<Object> m = new CopyOnWriteArrayList();
  private final List<Object> n = new CopyOnWriteArrayList();

  private a(Context paramContext, String paramString, b paramb)
  {
    this.g = ((Context)com.google.android.gms.common.internal.b.a(paramContext));
    this.h = com.google.android.gms.common.internal.b.a(paramString);
    this.i = ((b)com.google.android.gms.common.internal.b.a(paramb));
  }

  public static a a(Context paramContext)
  {
    Object localObject = new com.google.android.gms.common.internal.f(paramContext);
    String str = ((com.google.android.gms.common.internal.f)localObject).a("google_app_id");
    if (TextUtils.isEmpty(str));
    for (localObject = null; localObject == null; localObject = new b(str, ((com.google.android.gms.common.internal.f)localObject).a("google_api_key"), ((com.google.android.gms.common.internal.f)localObject).a("firebase_database_url"), ((com.google.android.gms.common.internal.f)localObject).a("ga_trackingId"), ((com.google.android.gms.common.internal.f)localObject).a("gcm_defaultSenderId"), ((com.google.android.gms.common.internal.f)localObject).a("google_storage_bucket")))
      return null;
    return a(paramContext, (b)localObject, "[DEFAULT]");
  }

  private static a a(Context arg0, b paramb, String paramString)
  {
    com.google.android.gms.internal.b.a();
    if ((com.google.android.gms.common.b.f.a(14)) && ((???.getApplicationContext() instanceof Application)))
      com.google.android.gms.internal.a.a((Application)???.getApplicationContext());
    paramString = paramString.trim();
    Context localContext = ???.getApplicationContext();
    synchronized (f)
    {
      if (!a.containsKey(paramString))
      {
        bool = true;
        com.google.android.gms.common.internal.b.a(bool, String.valueOf(paramString).length() + 33 + "FirebaseApp name " + paramString + " already exists!");
        com.google.android.gms.common.internal.b.a(localContext, "Application context cannot be null.");
        paramb = new a(localContext, paramString, paramb);
        a.put(paramString, paramb);
        com.google.android.gms.internal.b.b();
        a(a.class, paramb, b);
        if ("[DEFAULT]".equals(paramb.b()))
        {
          a(a.class, paramb, c);
          paramb.c();
          a(Context.class, paramb.g, d);
        }
        return paramb;
      }
      boolean bool = false;
    }
  }

  public static void a()
  {
    synchronized (f)
    {
      Iterator localIterator = new ArrayList(a.values()).iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala.j.get())
          locala.d();
      }
    }
  }

  private static <T> void a(Class<T> paramClass, T paramT, Iterable<String> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (true)
      if (localIterator.hasNext())
      {
        paramIterable = (String)localIterator.next();
        try
        {
          Object localObject = Class.forName(paramIterable);
          Method localMethod = ((Class)localObject).getMethod("getInstance", new Class[] { paramClass });
          if ((localMethod.getModifiers() & 0x9) == 9)
            localMethod.invoke(null, new Object[] { paramT });
          localObject = String.valueOf(localObject);
          Log.d("FirebaseApp", String.valueOf(localObject).length() + 13 + "Initialized " + (String)localObject + ".");
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          if (e.contains(paramIterable))
            throw new IllegalStateException(String.valueOf(paramIterable).concat(" is missing, but is required. Check if it has been removed by Proguard."));
          Log.d("FirebaseApp", String.valueOf(paramIterable).concat(" is not linked. Skipping initialization."));
        }
        catch (NoSuchMethodException paramClass)
        {
          throw new IllegalStateException(String.valueOf(paramIterable).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
        }
        catch (InvocationTargetException paramIterable)
        {
          Log.wtf("FirebaseApp", "Firebase API initialization failure.", paramIterable);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          paramIterable = String.valueOf(paramIterable);
          if (paramIterable.length() != 0);
          for (paramIterable = "Failed to initialize ".concat(paramIterable); ; paramIterable = new String("Failed to initialize "))
          {
            Log.wtf("FirebaseApp", paramIterable, localIllegalAccessException);
            break;
          }
        }
      }
  }

  private String b()
  {
    c();
    return this.h;
  }

  private void c()
  {
    if (!this.k.get());
    for (boolean bool = true; ; bool = false)
    {
      com.google.android.gms.common.internal.b.a(bool, "FirebaseApp was deleted");
      return;
    }
  }

  private void d()
  {
    Log.d("FirebaseApp", "Notifying background state change listeners.");
    Iterator localIterator = this.m.iterator();
    while (localIterator.hasNext())
      localIterator.next();
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a))
      return false;
    return this.h.equals(((a)paramObject).b());
  }

  public int hashCode()
  {
    return this.h.hashCode();
  }

  public String toString()
  {
    return bn.a(this).a("name", this.h).a("options", this.i).toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.firebase.a
 * JD-Core Version:    0.6.2
 */