package rx.e;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class d
{
  static final a a = new e();
  private static final d b = new d();
  private final AtomicReference<a> c = new AtomicReference();
  private final AtomicReference<b> d = new AtomicReference();
  private final AtomicReference<f> e = new AtomicReference();

  private static Object a(Class<?> paramClass, Properties paramProperties)
  {
    String str2 = paramClass.getSimpleName();
    String str1 = paramProperties.getProperty("rxjava.plugin." + str2 + ".implementation");
    Object localObject = str1;
    if (str1 == null)
    {
      Iterator localIterator = paramProperties.entrySet().iterator();
      String str3;
      do
      {
        localObject = str1;
        if (!localIterator.hasNext())
          break;
        localObject = (Map.Entry)localIterator.next();
        str3 = ((Map.Entry)localObject).getKey().toString();
      }
      while ((!str3.startsWith("rxjava.plugin.")) || (!str3.endsWith(".class")) || (!str2.equals(((Map.Entry)localObject).getValue().toString())));
      localObject = str3.substring(0, str3.length() - 6).substring(14);
      str1 = "rxjava.plugin." + (String)localObject + ".impl";
      localObject = paramProperties.getProperty(str1);
      if (localObject == null)
        throw new RuntimeException("Implementing class declaration for " + str2 + " missing: " + str1);
    }
    if (localObject != null)
      try
      {
        paramClass = Class.forName((String)localObject).asSubclass(paramClass).newInstance();
        return paramClass;
      }
      catch (ClassCastException paramClass)
      {
        throw new RuntimeException(str2 + " implementation is not an instance of " + str2 + ": " + (String)localObject);
      }
      catch (ClassNotFoundException paramClass)
      {
        throw new RuntimeException(str2 + " implementation class not found: " + (String)localObject, paramClass);
      }
      catch (InstantiationException paramClass)
      {
        throw new RuntimeException(str2 + " implementation not able to be instantiated: " + (String)localObject, paramClass);
      }
      catch (IllegalAccessException paramClass)
      {
        throw new RuntimeException(str2 + " implementation not able to be accessed: " + (String)localObject, paramClass);
      }
    return null;
  }

  public static d a()
  {
    return b;
  }

  public final a b()
  {
    Object localObject;
    if (this.c.get() == null)
    {
      localObject = a(a.class, System.getProperties());
      if (localObject != null)
        break label46;
      this.c.compareAndSet(null, a);
    }
    while (true)
    {
      return (a)this.c.get();
      label46: this.c.compareAndSet(null, (a)localObject);
    }
  }

  public final b c()
  {
    Object localObject;
    if (this.d.get() == null)
    {
      localObject = a(b.class, System.getProperties());
      if (localObject != null)
        break label46;
      this.d.compareAndSet(null, c.a());
    }
    while (true)
    {
      return (b)this.d.get();
      label46: this.d.compareAndSet(null, (b)localObject);
    }
  }

  public final f d()
  {
    Object localObject;
    if (this.e.get() == null)
    {
      localObject = a(f.class, System.getProperties());
      if (localObject != null)
        break label46;
      this.e.compareAndSet(null, f.d());
    }
    while (true)
    {
      return (f)this.e.get();
      label46: this.e.compareAndSet(null, (f)localObject);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.e.d
 * JD-Core Version:    0.6.2
 */