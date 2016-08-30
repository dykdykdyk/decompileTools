package a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class ab
{
  public static final ab b = new ac();
  private boolean a;
  private long c;
  private long d;

  public ab a(long paramLong)
  {
    this.a = true;
    this.c = paramLong;
    return this;
  }

  public ab a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    this.d = paramTimeUnit.toNanos(paramLong);
    return this;
  }

  public long c()
  {
    if (!this.a)
      throw new IllegalStateException("No deadline");
    return this.c;
  }

  public ab d()
  {
    this.d = 0L;
    return this;
  }

  public void f()
    throws IOException
  {
    if (Thread.interrupted())
      throw new InterruptedIOException("thread interrupted");
    if ((this.a) && (this.c - System.nanoTime() <= 0L))
      throw new InterruptedIOException("deadline reached");
  }

  public long k_()
  {
    return this.d;
  }

  public boolean l_()
  {
    return this.a;
  }

  public ab m_()
  {
    this.a = false;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.ab
 * JD-Core Version:    0.6.2
 */