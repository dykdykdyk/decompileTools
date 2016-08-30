package rx.d;

import java.util.Arrays;
import rx.c.d.s;
import rx.exceptions.CompositeException;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.OnErrorNotImplementedException;
import rx.exceptions.UnsubscribeFailedException;
import rx.z;

public final class a<T> extends z<T>
{
  boolean a = false;
  private final z<? super T> b;

  public a(z<? super T> paramz)
  {
    super(paramz);
    this.b = paramz;
  }

  public final void a()
  {
    if (!this.a)
      this.a = true;
    try
    {
      this.b.a();
      try
      {
        this.c.n_();
        return;
      }
      catch (Throwable localThrowable1)
      {
        rx.c.d.e.a();
        throw new UnsubscribeFailedException(localThrowable1.getMessage(), localThrowable1);
      }
    }
    catch (Throwable localThrowable2)
    {
      rx.exceptions.e.a(localThrowable2);
      rx.c.d.e.a();
      throw new OnCompletedFailedException(localThrowable2.getMessage(), localThrowable2);
    }
    finally
    {
      try
      {
        this.c.n_();
        throw localObject;
      }
      catch (Throwable localThrowable3)
      {
        rx.c.d.e.a();
        throw new UnsubscribeFailedException(localThrowable3.getMessage(), localThrowable3);
      }
    }
  }

  public final void a(T paramT)
  {
    try
    {
      if (!this.a)
        this.b.a(paramT);
      return;
    }
    catch (Throwable paramT)
    {
      rx.exceptions.e.a(paramT, this);
    }
  }

  public final void a(Throwable paramThrowable)
  {
    rx.exceptions.e.a(paramThrowable);
    if (!this.a)
    {
      this.a = true;
      rx.c.d.e.a();
    }
    try
    {
      this.b.a(paramThrowable);
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        n_();
        return;
        localThrowable1 = localThrowable1;
        if ((localThrowable1 instanceof OnErrorNotImplementedException))
          try
          {
            this.c.n_();
            throw ((OnErrorNotImplementedException)localThrowable1);
          }
          catch (Throwable localThrowable2)
          {
            rx.c.d.e.a();
            throw new RuntimeException("Observer.onError not implemented and error while unsubscribing.", new CompositeException(Arrays.asList(new Throwable[] { paramThrowable, localThrowable2 }), (byte)0));
          }
        rx.c.d.e.a();
        try
        {
          n_();
          throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError", new CompositeException(Arrays.asList(new Throwable[] { paramThrowable, localThrowable2 }), (byte)0));
        }
        catch (Throwable localThrowable3)
        {
          rx.c.d.e.a();
          throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new CompositeException(Arrays.asList(new Throwable[] { paramThrowable, localThrowable2, localThrowable3 }), (byte)0));
        }
      }
      catch (RuntimeException paramThrowable)
      {
        rx.c.d.e.a();
      }
    }
    throw new OnErrorFailedException(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.d.a
 * JD-Core Version:    0.6.2
 */