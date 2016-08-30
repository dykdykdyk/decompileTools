package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class an
  implements FilenameFilter
{
  private final String a;

  public an(String paramString)
  {
    this.a = paramString;
  }

  public final boolean accept(File paramFile, String paramString)
  {
    return (paramString.contains(this.a)) && (!paramString.endsWith(".cls_temp"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.an
 * JD-Core Version:    0.6.2
 */