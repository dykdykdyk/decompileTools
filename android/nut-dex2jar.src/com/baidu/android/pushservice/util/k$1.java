package com.baidu.android.pushservice.util;

import java.io.File;
import java.io.FileFilter;

final class k$1
  implements FileFilter
{
  k$1(String paramString)
  {
  }

  public final boolean accept(File paramFile)
  {
    if (paramFile == null);
    do
    {
      return false;
      paramFile = paramFile.getName();
    }
    while ((paramFile == null) || (!paramFile.contains("pushstat")) || (paramFile.contains(this.a)));
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.k.1
 * JD-Core Version:    0.6.2
 */