package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.d.a;
import java.io.File;
import java.util.Set;

final class az
{
  private static final ba b = new ba((byte)0);
  ay a;
  private final Context c;
  private final a d;

  public az(Context paramContext, a parama)
  {
    this(paramContext, parama, null);
  }

  public az(Context paramContext, a parama, String paramString)
  {
    this.c = paramContext;
    this.d = parama;
    this.a = b;
    a(paramString);
  }

  private File c()
  {
    File localFile = new File(this.d.a(), "log-files");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public final b a()
  {
    return this.a.a();
  }

  public final void a(String paramString)
  {
    this.a.b();
    this.a = b;
    if (paramString == null)
      return;
    if (!l.a(this.c, "com.crashlytics.CollectCustomLogs", true))
    {
      f.b().a("CrashlyticsCore", "Preferences requested no custom logs. Aborting log file creation.");
      return;
    }
    paramString = "crashlytics-userlog-" + paramString + ".temp";
    this.a = new bs(new File(c(), paramString));
  }

  public final void a(Set<String> paramSet)
  {
    File[] arrayOfFile = c().listFiles();
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        String str = localFile.getName();
        int k = str.lastIndexOf(".temp");
        if (k == -1);
        while (true)
        {
          if (!paramSet.contains(str))
            localFile.delete();
          i += 1;
          break;
          str = str.substring(20, k);
        }
      }
    }
  }

  public final void b()
  {
    this.a.c();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.az
 * JD-Core Version:    0.6.2
 */