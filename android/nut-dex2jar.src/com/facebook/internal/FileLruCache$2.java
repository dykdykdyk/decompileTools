package com.facebook.internal;

import java.io.File;

class FileLruCache$2
  implements Runnable
{
  FileLruCache$2(FileLruCache paramFileLruCache, File[] paramArrayOfFile)
  {
  }

  public void run()
  {
    File[] arrayOfFile = this.val$filesToDelete;
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      arrayOfFile[i].delete();
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.2
 * JD-Core Version:    0.6.2
 */