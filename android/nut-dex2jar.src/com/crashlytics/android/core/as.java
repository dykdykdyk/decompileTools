package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.a;
import io.fabric.sdk.android.services.b.ag;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.network.l;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class as extends a
  implements ar
{
  public as(o paramo, String paramString1, String paramString2, l paraml)
  {
    super(paramo, paramString1, paramString2, paraml, d.b);
  }

  public final boolean a(aq paramaq)
  {
    HttpRequest localHttpRequest = a(Collections.emptyMap()).a("X-CRASHLYTICS-API-KEY", paramaq.a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
    h.f();
    localHttpRequest = localHttpRequest.a("X-CRASHLYTICS-API-CLIENT-VERSION", "2.3.8.97");
    Iterator localIterator = paramaq.b.e().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHttpRequest = localHttpRequest.a((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    paramaq = paramaq.b;
    paramaq = localHttpRequest.a("report[file]", paramaq.b(), "application/octet-stream", paramaq.d()).b("report[identifier]", paramaq.c());
    f.b().a("CrashlyticsCore", "Sending report to: " + this.a);
    int i = paramaq.b();
    f.b().a("CrashlyticsCore", "Create report request ID: " + paramaq.a("X-REQUEST-ID"));
    f.b().a("CrashlyticsCore", "Result was: " + i);
    return ag.a(i) == 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.as
 * JD-Core Version:    0.6.2
 */