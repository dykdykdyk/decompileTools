package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class e
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".cls_temp");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.e
 * JD-Core Version:    0.6.2
 */