package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class am
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return (!ab.a.accept(paramFile, paramString)) && (ab.a().matcher(paramString).matches());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.am
 * JD-Core Version:    0.6.2
 */