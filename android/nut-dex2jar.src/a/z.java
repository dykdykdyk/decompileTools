package a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract interface z extends Closeable, Flushable
{
  public abstract void a(f paramf, long paramLong)
    throws IOException;

  public abstract void close()
    throws IOException;

  public abstract void flush()
    throws IOException;

  public abstract ab timeout();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.z
 * JD-Core Version:    0.6.2
 */