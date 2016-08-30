package retrofit;

import java.lang.reflect.Type;
import rx.h;

final class RestMethodInfo$RxSupport
{
  public static Type getObservableType(Type paramType, Class paramClass)
  {
    return Types.getSupertype(paramType, paramClass, h.class);
  }

  public static boolean isObservable(Class paramClass)
  {
    return paramClass == h.class;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RestMethodInfo.RxSupport
 * JD-Core Version:    0.6.2
 */