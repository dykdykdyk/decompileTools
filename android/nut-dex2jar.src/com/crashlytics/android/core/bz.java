package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class bz
  implements bu
{
  private final File a;
  private final Map<String, String> b;

  public bz(File paramFile)
  {
    this(paramFile, Collections.emptyMap());
  }

  public bz(File paramFile, Map<String, String> paramMap)
  {
    this.a = paramFile;
    this.b = new HashMap(paramMap);
    if (this.a.length() == 0L)
      this.b.putAll(bv.a);
  }

  public final boolean a()
  {
    f.b().a("CrashlyticsCore", "Removing report at " + this.a.getPath());
    return this.a.delete();
  }

  public final String b()
  {
    return this.a.getName();
  }

  public final String c()
  {
    String str = this.a.getName();
    return str.substring(0, str.lastIndexOf('.'));
  }

  public final File d()
  {
    return this.a;
  }

  public final Map<String, String> e()
  {
    return Collections.unmodifiableMap(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bz
 * JD-Core Version:    0.6.2
 */