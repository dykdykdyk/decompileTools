package io.fabric.sdk.android.services.network;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract class g<V> extends j<V>
{
  private final Closeable a;
  private final boolean b;

  protected g(Closeable paramCloseable, boolean paramBoolean)
  {
    this.a = paramCloseable;
    this.b = paramBoolean;
  }

  protected final void b()
    throws IOException
  {
    if ((this.a instanceof Flushable))
      ((Flushable)this.a).flush();
    if (this.b);
    try
    {
      this.a.close();
      return;
      this.a.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.g
 * JD-Core Version:    0.6.2
 */