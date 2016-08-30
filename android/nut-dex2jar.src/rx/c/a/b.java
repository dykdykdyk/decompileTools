package rx.c.a;

public final class b<T>
{
  private static final b a = new b();
  private static final Object b = new c();
  private static final Object c = new d();

  public static Object a(T paramT)
  {
    Object localObject = paramT;
    if (paramT == null)
      localObject = c;
    return localObject;
  }

  public static <T> b<T> a()
  {
    return a;
  }

  public static T b(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == c)
      localObject = null;
    return localObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.b
 * JD-Core Version:    0.6.2
 */