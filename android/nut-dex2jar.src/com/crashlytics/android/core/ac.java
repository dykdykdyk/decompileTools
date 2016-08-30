package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class ac
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return (paramString.length() == 39) && (paramString.endsWith(".cls"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.ac
 * JD-Core Version:    0.6.2
 */