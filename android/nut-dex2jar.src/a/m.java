package a;

import java.io.IOException;

public abstract class m
  implements aa
{
  private final aa delegate;

  public m(aa paramaa)
  {
    if (paramaa == null)
      throw new IllegalArgumentException("delegate == null");
    this.delegate = paramaa;
  }

  public void close()
    throws IOException
  {
    this.delegate.close();
  }

  public final aa delegate()
  {
    return this.delegate;
  }

  public long read(f paramf, long paramLong)
    throws IOException
  {
    return this.delegate.read(paramf, paramLong);
  }

  public ab timeout()
  {
    return this.delegate.timeout();
  }

  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.m
 * JD-Core Version:    0.6.2
 */