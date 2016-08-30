package okhttp3.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class i<T>
{
  private final Class<?> a;
  private final String b;
  private final Class[] c;

  public i(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    this.a = paramClass;
    this.b = paramString;
    this.c = paramArrayOfClass;
  }

  private Method a(Class<?> paramClass)
  {
    if (this.b != null)
    {
      paramClass = a(paramClass, this.b, this.c);
      if ((paramClass == null) || (this.a == null) || (this.a.isAssignableFrom(paramClass.getReturnType())));
    }
    else
    {
      return null;
    }
    return paramClass;
  }

  // ERROR //
  private static Method a(Class<?> paramClass, String paramString, Class[] paramArrayOfClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokevirtual 49	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   6: astore_0
    //   7: aload_0
    //   8: invokevirtual 53	java/lang/reflect/Method:getModifiers	()I
    //   11: istore_3
    //   12: iload_3
    //   13: iconst_1
    //   14: iand
    //   15: ifne +11 -> 26
    //   18: aconst_null
    //   19: areturn
    //   20: astore_0
    //   21: aconst_null
    //   22: areturn
    //   23: astore_1
    //   24: aload_0
    //   25: areturn
    //   26: aload_0
    //   27: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	20	java/lang/NoSuchMethodException
    //   7	12	23	java/lang/NoSuchMethodException
  }

  private Object c(T paramT, Object[] paramArrayOfObject)
    throws InvocationTargetException
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null)
      return null;
    try
    {
      paramT = localMethod.invoke(paramT, paramArrayOfObject);
      return paramT;
    }
    catch (IllegalAccessException paramT)
    {
    }
    return null;
  }

  private Object d(T paramT, Object[] paramArrayOfObject)
    throws InvocationTargetException
  {
    Method localMethod = a(paramT.getClass());
    if (localMethod == null)
      throw new AssertionError("Method " + this.b + " not supported for object " + paramT);
    try
    {
      paramT = localMethod.invoke(paramT, paramArrayOfObject);
      return paramT;
    }
    catch (IllegalAccessException paramT)
    {
      paramArrayOfObject = new AssertionError("Unexpectedly could not call: " + localMethod);
      paramArrayOfObject.initCause(paramT);
    }
    throw paramArrayOfObject;
  }

  public final Object a(T paramT, Object[] paramArrayOfObject)
  {
    try
    {
      paramT = c(paramT, paramArrayOfObject);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException))
        throw ((RuntimeException)paramT);
      paramArrayOfObject = new AssertionError("Unexpected exception");
      paramArrayOfObject.initCause(paramT);
    }
    throw paramArrayOfObject;
  }

  public final boolean a(T paramT)
  {
    return a(paramT.getClass()) != null;
  }

  public final Object b(T paramT, Object[] paramArrayOfObject)
  {
    try
    {
      paramT = d(paramT, paramArrayOfObject);
      return paramT;
    }
    catch (InvocationTargetException paramT)
    {
      paramT = paramT.getTargetException();
      if ((paramT instanceof RuntimeException))
        throw ((RuntimeException)paramT);
      paramArrayOfObject = new AssertionError("Unexpected exception");
      paramArrayOfObject.initCause(paramT);
    }
    throw paramArrayOfObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.i
 * JD-Core Version:    0.6.2
 */