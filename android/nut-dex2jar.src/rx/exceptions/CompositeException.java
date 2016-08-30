package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class CompositeException extends RuntimeException
{
  private final List<Throwable> a;
  private final String b;
  private Throwable c = null;

  public CompositeException(Collection<? extends Throwable> paramCollection)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    ArrayList localArrayList = new ArrayList();
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Throwable localThrowable = (Throwable)paramCollection.next();
        if ((localThrowable instanceof CompositeException))
          localLinkedHashSet.addAll(((CompositeException)localThrowable).a);
        else if (localThrowable != null)
          localLinkedHashSet.add(localThrowable);
        else
          localLinkedHashSet.add(new NullPointerException());
      }
    }
    localLinkedHashSet.add(new NullPointerException());
    localArrayList.addAll(localLinkedHashSet);
    this.a = Collections.unmodifiableList(localArrayList);
    this.b = (this.a.size() + " exceptions occurred. ");
  }

  public CompositeException(Collection<? extends Throwable> paramCollection, byte paramByte)
  {
    this(paramCollection);
  }

  private static List<Throwable> a(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    Throwable localThrowable = paramThrowable.getCause();
    paramThrowable = localThrowable;
    if (localThrowable == null)
      return localArrayList;
    do
    {
      paramThrowable = paramThrowable.getCause();
      localArrayList.add(paramThrowable);
    }
    while (paramThrowable.getCause() != null);
    return localArrayList;
  }

  private static void a(StringBuilder paramStringBuilder, Throwable paramThrowable, String paramString)
  {
    while (true)
    {
      paramStringBuilder.append(paramString).append(paramThrowable).append("\n");
      paramString = paramThrowable.getStackTrace();
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramString[i];
        paramStringBuilder.append("\t\tat ").append(localObject).append("\n");
        i += 1;
      }
      if (paramThrowable.getCause() == null)
        break;
      paramStringBuilder.append("\tCaused by: ");
      paramThrowable = paramThrowable.getCause();
      paramString = "";
    }
  }

  private void a(b paramb)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this).append("\n");
    ??? = getStackTrace();
    int j = ???.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = ???[i];
      localStringBuilder.append("\tat ").append(localObject2).append("\n");
      i += 1;
    }
    ??? = this.a.iterator();
    i = 1;
    while (((Iterator)???).hasNext())
    {
      localObject2 = (Throwable)((Iterator)???).next();
      localStringBuilder.append("  ComposedException ").append(i).append(" :\n");
      a(localStringBuilder, (Throwable)localObject2, "\t");
      i += 1;
    }
    synchronized (paramb.a())
    {
      paramb.a(localStringBuilder.toString());
      return;
    }
  }

  public final Throwable getCause()
  {
    a locala2;
    while (true)
    {
      Object localObject3;
      try
      {
        if (this.c != null)
          break label181;
        locala2 = new a();
        HashSet localHashSet = new HashSet();
        Iterator localIterator1 = this.a.iterator();
        a locala1 = locala2;
        if (!localIterator1.hasNext())
          break;
        localObject3 = (Throwable)localIterator1.next();
        if (localHashSet.contains(localObject3))
          continue;
        localHashSet.add(localObject3);
        Iterator localIterator2 = a((Throwable)localObject3).iterator();
        if (localIterator2.hasNext())
        {
          Throwable localThrowable3 = (Throwable)localIterator2.next();
          if (localHashSet.contains(localThrowable3))
          {
            localObject3 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
            continue;
          }
          localHashSet.add(localThrowable3);
          continue;
        }
      }
      finally
      {
      }
      try
      {
        localObject1.initCause((Throwable)localObject3);
        Throwable localThrowable1 = localObject1.getCause();
      }
      catch (Throwable localThrowable2)
      {
        localObject2 = localObject3;
      }
    }
    this.c = locala2;
    label181: Object localObject2 = this.c;
    return localObject2;
  }

  public final String getMessage()
  {
    return this.b;
  }

  public final void printStackTrace()
  {
    printStackTrace(System.err);
  }

  public final void printStackTrace(PrintStream paramPrintStream)
  {
    a(new c(paramPrintStream));
  }

  public final void printStackTrace(PrintWriter paramPrintWriter)
  {
    a(new d(paramPrintWriter));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.exceptions.CompositeException
 * JD-Core Version:    0.6.2
 */