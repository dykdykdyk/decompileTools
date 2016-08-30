package okhttp3.internal.b;

import java.io.File;
import java.io.IOException;

final class b
  implements a
{
  public final void a(File paramFile)
    throws IOException
  {
    if ((!paramFile.delete()) && (paramFile.exists()))
      throw new IOException("failed to delete " + paramFile);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.b.b
 * JD-Core Version:    0.6.2
 */