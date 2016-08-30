package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;

final class FileLruCache$BufferFile$1
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return !paramString.startsWith("buffer");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.BufferFile.1
 * JD-Core Version:    0.6.2
 */