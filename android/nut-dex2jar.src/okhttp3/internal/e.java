package okhttp3.internal;

import a.i;
import java.io.File;
import java.io.IOException;

final class e
{
  final String a;
  final long[] b;
  final File[] c;
  final File[] d;
  boolean e;
  d f;

  final void a(i parami)
    throws IOException
  {
    long[] arrayOfLong = this.b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      parami.h(32).j(l);
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.e
 * JD-Core Version:    0.6.2
 */