package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class ap
  implements FilenameFilter
{
  private final String a;

  public ap(String paramString)
  {
    this.a = paramString;
  }

  public final boolean accept(File paramFile, String paramString)
  {
    if (paramString.equals(this.a + ".cls"));
    while ((!paramString.contains(this.a)) || (paramString.endsWith(".cls_temp")))
      return false;
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.ap
 * JD-Core Version:    0.6.2
 */