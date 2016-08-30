package rx.exceptions;

public final class OnErrorThrowable extends RuntimeException
{
  public static Throwable a(Throwable paramThrowable, Object paramObject)
  {
    Object localObject = paramThrowable;
    if (paramThrowable == null)
      localObject = new NullPointerException();
    paramThrowable = e.b((Throwable)localObject);
    if ((paramThrowable != null) && ((paramThrowable instanceof OnErrorThrowable.OnNextValue)) && (((OnErrorThrowable.OnNextValue)paramThrowable).a == paramObject))
      return localObject;
    e.a((Throwable)localObject, new OnErrorThrowable.OnNextValue(paramObject));
    return localObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.exceptions.OnErrorThrowable
 * JD-Core Version:    0.6.2
 */