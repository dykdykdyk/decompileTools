package a;

import java.io.Closeable;
import java.io.IOException;

public abstract interface aa extends Closeable
{
  public abstract void close()
    throws IOException;

  public abstract long read(f paramf, long paramLong)
    throws IOException;

  public abstract ab timeout();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.aa
 * JD-Core Version:    0.6.2
 */