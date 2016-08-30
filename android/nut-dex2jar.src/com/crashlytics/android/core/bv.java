package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.j;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class bv
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new bw();
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final ar e;
  private Thread f;

  public bv(ar paramar)
  {
    if (paramar == null)
      throw new IllegalArgumentException("createReportCall must not be null.");
    this.e = paramar;
  }

  final List<bu> a()
  {
    f.b().a("CrashlyticsCore", "Checking for crash reports...");
    synchronized (this.d)
    {
      File[] arrayOfFile = h.f().g().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        f.b().a("CrashlyticsCore", "Found crash report " + localFile.getPath());
        ((List)???).add(new bz(localFile));
        i += 1;
      }
    }
    if (((List)???).isEmpty())
      f.b().a("CrashlyticsCore", "No reports found.");
    return ???;
  }

  public final void a(float paramFloat)
  {
    try
    {
      if (this.f == null)
      {
        this.f = new Thread(new bx(this, paramFloat), "Crashlytics Report Uploader");
        this.f.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final boolean a(bu parambu)
  {
    boolean bool2 = false;
    synchronized (this.d)
    {
      try
      {
        Object localObject1 = h.f().q;
        new j();
        localObject1 = new aq(j.a((Context)localObject1), parambu);
        boolean bool3 = this.e.a((aq)localObject1);
        r localr = f.b();
        StringBuilder localStringBuilder = new StringBuilder("Crashlytics report upload ");
        if (bool3);
        for (localObject1 = "complete: "; ; localObject1 = "FAILED: ")
        {
          localr.c("CrashlyticsCore", (String)localObject1 + parambu.b());
          bool1 = bool2;
          if (bool3)
          {
            parambu.a();
            bool1 = true;
          }
          return bool1;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          f.b().c("CrashlyticsCore", "Error occurred sending report " + parambu, localException);
          boolean bool1 = bool2;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bv
 * JD-Core Version:    0.6.2
 */