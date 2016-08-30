package com.umeng.analytics;

import java.io.File;
import java.io.FilenameFilter;

final class ag
  implements FilenameFilter
{
  ag(ae paramae)
  {
  }

  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith("um");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.ag
 * JD-Core Version:    0.6.2
 */