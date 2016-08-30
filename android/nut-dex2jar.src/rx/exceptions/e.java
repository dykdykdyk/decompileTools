package rx.exceptions;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.p;

public final class e
{
  public static void a(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof OnErrorNotImplementedException))
      throw ((OnErrorNotImplementedException)paramThrowable);
    if ((paramThrowable instanceof OnErrorFailedException))
      throw ((OnErrorFailedException)paramThrowable);
    if ((paramThrowable instanceof StackOverflowError))
      throw ((StackOverflowError)paramThrowable);
    if ((paramThrowable instanceof VirtualMachineError))
      throw ((VirtualMachineError)paramThrowable);
    if ((paramThrowable instanceof ThreadDeath))
      throw ((ThreadDeath)paramThrowable);
    if ((paramThrowable instanceof LinkageError))
      throw ((LinkageError)paramThrowable);
  }

  public static void a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    Throwable localThrowable;
    while (true)
    {
      localThrowable = paramThrowable1;
      if (paramThrowable1.getCause() == null)
        break;
      if (i >= 25)
        return;
      paramThrowable1 = paramThrowable1.getCause();
      localThrowable = paramThrowable1;
      if (localHashSet.contains(paramThrowable1.getCause()))
        break;
      localHashSet.add(paramThrowable1.getCause());
      i += 1;
    }
    try
    {
      localThrowable.initCause(paramThrowable2);
      return;
    }
    catch (Throwable paramThrowable1)
    {
    }
  }

  public static void a(Throwable paramThrowable, p<?> paramp)
  {
    a(paramThrowable);
    paramp.a(paramThrowable);
  }

  public static void a(Throwable paramThrowable, p<?> paramp, Object paramObject)
  {
    a(paramThrowable);
    paramp.a(OnErrorThrowable.a(paramThrowable, paramObject));
  }

  public static void a(List<? extends Throwable> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      if (paramList.size() == 1)
      {
        paramList = (Throwable)paramList.get(0);
        if ((paramList instanceof RuntimeException))
          throw ((RuntimeException)paramList);
        if ((paramList instanceof Error))
          throw ((Error)paramList);
        throw new RuntimeException(paramList);
      }
      throw new CompositeException(paramList);
    }
  }

  public static Throwable b(Throwable paramThrowable)
  {
    int i = 0;
    while (true)
    {
      Object localObject = paramThrowable;
      if (paramThrowable.getCause() != null)
      {
        if (i >= 25)
          localObject = new RuntimeException("Stack too deep to get final cause");
      }
      else
        return localObject;
      paramThrowable = paramThrowable.getCause();
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.exceptions.e
 * JD-Core Version:    0.6.2
 */