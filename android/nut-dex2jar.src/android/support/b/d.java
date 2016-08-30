package android.support.b;

import java.io.File;
import java.io.FileFilter;

final class d
  implements FileFilter
{
  d(String paramString)
  {
  }

  public final boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.b.d
 * JD-Core Version:    0.6.2
 */