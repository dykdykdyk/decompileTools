package a;

import java.io.IOException;

final class c
  implements aa
{
  c(a parama, aa paramaa)
  {
  }

  public final void close()
    throws IOException
  {
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

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    this.b.i_();
    try
    {
      paramLong = this.a.read(paramf, paramLong);
      this.b.a(true);
      return paramLong;
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

  public final ab timeout()
  {
    return this.b;
  }

  public final String toString()
  {
    return "AsyncTimeout.source(" + this.a + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.c
 * JD-Core Version:    0.6.2
 */