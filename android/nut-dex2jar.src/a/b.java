package a;

import java.io.IOException;

final class b
  implements z
{
  b(a parama, z paramz)
  {
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    this.b.i_();
    try
    {
      this.a.a(paramf, paramLong);
      this.b.a(true);
      return;
    }
    catch (IOException paramf)
    {
      throw this.b.b(paramf);
    }
    finally
    {
      this.b.a(false);
    }
    throw paramf;
  }

  public final void close()
    throws IOException
  {
    this.b.i_();
    try
    {
      this.a.close();
      this.b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.b.b(localIOException);
    }
    finally
    {
      this.b.a(false);
    }
  }

  public final void flush()
    throws IOException
  {
    this.b.i_();
    try
    {
      this.a.flush();
      this.b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.b.b(localIOException);
    }
    finally
    {
      this.b.a(false);
    }
  }

  public final ab timeout()
  {
    return this.b;
  }

  public final String toString()
  {
    return "AsyncTimeout.sink(" + this.a + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.b
 * JD-Core Version:    0.6.2
 */