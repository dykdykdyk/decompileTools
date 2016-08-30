package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class CallAdapter$Factory
{
  public static Type getParameterUpperBound(int paramInt, ParameterizedType paramParameterizedType)
  {
    return Utils.getParameterUpperBound(paramInt, paramParameterizedType);
  }

  public static Class<?> getRawType(Type paramType)
  {
    return Utils.getRawType(paramType);
  }

  public abstract CallAdapter<?> get(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.CallAdapter.Factory
 * JD-Core Version:    0.6.2
 */