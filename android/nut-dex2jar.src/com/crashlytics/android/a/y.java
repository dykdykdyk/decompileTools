package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.a;
import io.fabric.sdk.android.services.b.ag;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.network.l;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class y extends a
  implements io.fabric.sdk.android.services.c.o
{
  private final String c;

  public y(io.fabric.sdk.android.o paramo, String paramString1, String paramString2, l paraml, String paramString3)
  {
    super(paramo, paramString1, paramString2, paraml, d.b);
    this.c = paramString3;
  }

  public final boolean a(List<File> paramList)
  {
    boolean bool = false;
    HttpRequest localHttpRequest = a(Collections.emptyMap()).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", this.b.a()).a("X-CRASHLYTICS-API-KEY", this.c);
    Iterator localIterator = paramList.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      File localFile = (File)localIterator.next();
      localHttpRequest.a("session_analytics_file_" + i, localFile.getName(), "application/vnd.crashlytics.android.events", localFile);
      i += 1;
    }
    f.b().a("Answers", "Sending " + paramList.size() + " analytics files to " + this.a);
    i = localHttpRequest.b();
    f.b().a("Answers", "Response code for analytics file send is " + i);
    if (ag.a(i) == 0)
      bool = true;
    return bool;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.y
 * JD-Core Version:    0.6.2
 */