package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class cc
{
  public static void a(File paramFile, FilenameFilter paramFilenameFilter, int paramInt, Comparator<File> paramComparator)
  {
    paramFile = paramFile.listFiles(paramFilenameFilter);
    int j;
    int k;
    int i;
    if ((paramFile != null) && (paramFile.length > paramInt))
    {
      Arrays.sort(paramFile, paramComparator);
      j = paramFile.length;
      k = paramFile.length;
      i = 0;
    }
    while (true)
    {
      if (i < k)
      {
        paramFilenameFilter = paramFile[i];
        if (j > paramInt);
      }
      else
      {
        return;
      }
      paramFilenameFilter.delete();
      j -= 1;
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.cc
 * JD-Core Version:    0.6.2
 */