package a;

import java.io.IOException;
import java.io.InterruptedIOException;

public class a extends ab
{
  private static a a;
  private boolean c;
  private a d;
  private long e;

  private static void a(a parama, long paramLong, boolean paramBoolean)
  {
    while (true)
    {
      a locala;
      try
      {
        if (a == null)
        {
          a = new a();
          new d().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          parama.e = (Math.min(paramLong, parama.c() - l) + l);
          paramLong = parama.e;
          locala = a;
          if ((locala.d != null) && (paramLong - l >= locala.d.e - l))
            break label177;
          parama.d = locala.d;
          locala.d = parama;
          if (locala == a)
            a.class.notify();
          return;
        }
        if (paramLong != 0L)
        {
          parama.e = (l + paramLong);
          continue;
        }
      }
      finally
      {
      }
      if (paramBoolean)
      {
        parama.e = parama.c();
      }
      else
      {
        throw new AssertionError();
        label177: locala = locala.d;
      }
    }
  }

  private static boolean a(a parama)
  {
    try
    {
      a locala = a;
      if (locala != null)
        if (locala.d == parama)
        {
          locala.d = parama.d;
          parama.d = null;
        }
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        locala = locala.d;
        break;
      }
    }
    finally
    {
    }
    throw parama;
  }

  private static a g()
    throws InterruptedException
  {
    a locala1 = null;
    while (true)
    {
      a locala2;
      try
      {
        locala2 = a.d;
        if (locala2 == null)
        {
          a.class.wait();
          return locala1;
        }
        long l1 = System.nanoTime();
        l1 = locala2.e - l1;
        if (l1 > 0L)
        {
          long l2 = l1 / 1000000L;
          a.class.wait(l2, (int)(l1 - 1000000L * l2));
          continue;
        }
      }
      finally
      {
      }
      a.d = locala2.d;
      locala2.d = null;
      Object localObject2 = locala2;
    }
  }

  public IOException a(IOException paramIOException)
  {
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    if (paramIOException != null)
      localInterruptedIOException.initCause(paramIOException);
    return localInterruptedIOException;
  }

  public void a()
  {
  }

  final void a(boolean paramBoolean)
    throws IOException
  {
    if ((j_()) && (paramBoolean))
      throw a(null);
  }

  final IOException b(IOException paramIOException)
    throws IOException
  {
    if (!j_())
      return paramIOException;
    return a(paramIOException);
  }

  public final void i_()
  {
    if (this.c)
      throw new IllegalStateException("Unbalanced enter/exit");
    long l = k_();
    boolean bool = l_();
    if ((l == 0L) && (!bool))
      return;
    this.c = true;
    a(this, l, bool);
  }

  public final boolean j_()
  {
    if (!this.c)
      return false;
    this.c = false;
    return a(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.a
 * JD-Core Version:    0.6.2
 */