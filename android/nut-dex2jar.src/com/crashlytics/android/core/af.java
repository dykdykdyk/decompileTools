package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.File;
import java.io.FilenameFilter;

final class af
  implements Runnable
{
  af(ab paramab)
  {
  }

  public final void run()
  {
    ab localab = this.a;
    File[] arrayOfFile = ab.a(this.a, d.a);
    Object localObject1 = new File(localab.g.g(), "invalidClsFiles");
    Object localObject2;
    int j;
    if (((File)localObject1).exists())
    {
      if (((File)localObject1).isDirectory())
      {
        localObject2 = ((File)localObject1).listFiles();
        j = localObject2.length;
        i = 0;
        while (i < j)
        {
          localObject2[i].delete();
          i += 1;
        }
      }
      ((File)localObject1).delete();
    }
    int k = arrayOfFile.length;
    int i = 0;
    while (i < k)
    {
      localObject1 = arrayOfFile[i];
      f.b().a("CrashlyticsCore", "Found invalid session part file: " + localObject1);
      localObject1 = ab.a((File)localObject1);
      localObject2 = new ag(localab, (String)localObject1);
      f.b().a("CrashlyticsCore", "Deleting all part files for invalid session: " + (String)localObject1);
      localObject1 = localab.a((FilenameFilter)localObject2);
      int m = localObject1.length;
      j = 0;
      while (j < m)
      {
        localObject2 = localObject1[j];
        f.b().a("CrashlyticsCore", "Deleting session file: " + localObject2);
        ((File)localObject2).delete();
        j += 1;
      }
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.af
 * JD-Core Version:    0.6.2
 */