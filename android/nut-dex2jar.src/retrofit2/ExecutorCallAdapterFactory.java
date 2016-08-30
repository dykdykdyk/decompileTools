package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

final class ExecutorCallAdapterFactory extends CallAdapter.Factory
{
  final Executor callbackExecutor;

  ExecutorCallAdapterFactory(Executor paramExecutor)
  {
    this.callbackExecutor = paramExecutor;
  }

  public final CallAdapter<Call<?>> get(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (getRawType(paramType) != Call.class)
      return null;
    return new ExecutorCallAdapterFactory.1(this, Utils.getCallResponseType(paramType));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory
 * JD-Core Version:    0.6.2
 */