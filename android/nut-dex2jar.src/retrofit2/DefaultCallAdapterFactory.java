package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

final class DefaultCallAdapterFactory extends CallAdapter.Factory
{
  static final CallAdapter.Factory INSTANCE = new DefaultCallAdapterFactory();

  public final CallAdapter<?> get(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (getRawType(paramType) != Call.class)
      return null;
    return new DefaultCallAdapterFactory.1(this, Utils.getCallResponseType(paramType));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.DefaultCallAdapterFactory
 * JD-Core Version:    0.6.2
 */