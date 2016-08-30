package okhttp3;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import okhttp3.internal.b;
import okhttp3.internal.g;

public final class d
  implements Closeable, Flushable
{
  final g a;
  private final b b;

  public final void close()
    throws IOException
  {
    this.b.close();
  }

  public final void flush()
    throws IOException
  {
    this.b.flush();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.d
 * JD-Core Version:    0.6.2
 */