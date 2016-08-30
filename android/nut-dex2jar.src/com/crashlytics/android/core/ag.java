package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class ag
  implements FilenameFilter
{
  ag(ab paramab, String paramString)
  {
  }

  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.ag
 * JD-Core Version:    0.6.2
 */