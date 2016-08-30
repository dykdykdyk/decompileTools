package com.crashlytics.android.a;

import android.app.Activity;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.Collections;

public final class z
  implements o
{
  final long a;
  public final b b;
  final a c;
  final m d;
  final k e;

  z(b paramb, a parama, m paramm, k paramk, long paramLong)
  {
    this.b = paramb;
    this.c = parama;
    this.d = paramm;
    this.e = paramk;
    this.a = paramLong;
  }

  public final void a()
  {
    f.b().a("Answers", "Flush events when app is backgrounded");
    b localb = this.b;
    localb.a(new g(localb));
  }

  public final void a(Activity paramActivity, ad paramad)
  {
    f.b().a("Answers", "Logged lifecycle event: " + paramad.name());
    b localb = this.b;
    paramActivity = Collections.singletonMap("activity", paramActivity.getClass().getName());
    paramad = new ac(paramad);
    paramad.c = paramActivity;
    localb.a(paramad, false, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.z
 * JD-Core Version:    0.6.2
 */