package com.crashlytics.android;

import com.crashlytics.android.b.e;
import com.crashlytics.android.core.ab;
import com.crashlytics.android.core.al;
import com.crashlytics.android.core.h;
import com.crashlytics.android.core.v;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.p;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class a extends o<Void>
  implements p
{
  public final com.crashlytics.android.a.a a;
  public final e b;
  public final h c;
  public final Collection<? extends o> d;

  public a()
  {
    this(new com.crashlytics.android.a.a(), new e(), new h());
  }

  private a(com.crashlytics.android.a.a parama, e parame, h paramh)
  {
    this.a = parama;
    this.b = parame;
    this.c = paramh;
    this.d = Collections.unmodifiableCollection(Arrays.asList(new o[] { parama, parame, paramh }));
  }

  public static void a(String paramString)
  {
    if (e() == null)
      throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
    Object localObject = e().c;
    if ((!((h)localObject).m) && (h.b("prior to logging messages.")))
    {
      long l1 = System.currentTimeMillis();
      long l2 = ((h)localObject).a;
      localObject = ((h)localObject).d;
      paramString = h.a("CrashlyticsCore", paramString);
      ((ab)localObject).f.b(new al((ab)localObject, l1 - l2, paramString));
    }
  }

  private static a e()
  {
    return (a)f.a(a.class);
  }

  public final String a()
  {
    return "2.5.5.97";
  }

  public final String b()
  {
    return "com.crashlytics.sdk.android:crashlytics";
  }

  public final Collection<? extends o> c()
  {
    return this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a
 * JD-Core Version:    0.6.2
 */