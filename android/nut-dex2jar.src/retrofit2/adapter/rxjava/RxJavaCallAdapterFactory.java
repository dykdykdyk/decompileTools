package retrofit2.adapter.rxjava;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.CallAdapter;
import retrofit2.CallAdapter.Factory;
import retrofit2.Response;
import retrofit2.Retrofit;
import rx.h;
import rx.r;

public final class RxJavaCallAdapterFactory extends CallAdapter.Factory
{
  private final r scheduler;

  private RxJavaCallAdapterFactory(r paramr)
  {
    this.scheduler = paramr;
  }

  public static RxJavaCallAdapterFactory create()
  {
    return new RxJavaCallAdapterFactory(null);
  }

  public static RxJavaCallAdapterFactory createWithScheduler(r paramr)
  {
    if (paramr == null)
      throw new NullPointerException("scheduler == null");
    return new RxJavaCallAdapterFactory(paramr);
  }

  private CallAdapter<h<?>> getCallAdapter(Type paramType, r paramr)
  {
    paramType = getParameterUpperBound(0, (ParameterizedType)paramType);
    Class localClass = getRawType(paramType);
    if (localClass == Response.class)
    {
      if (!(paramType instanceof ParameterizedType))
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
      return new RxJavaCallAdapterFactory.ResponseCallAdapter(getParameterUpperBound(0, (ParameterizedType)paramType), paramr);
    }
    if (localClass == Result.class)
    {
      if (!(paramType instanceof ParameterizedType))
        throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
      return new RxJavaCallAdapterFactory.ResultCallAdapter(getParameterUpperBound(0, (ParameterizedType)paramType), paramr);
    }
    return new RxJavaCallAdapterFactory.SimpleCallAdapter(paramType, paramr);
  }

  public final CallAdapter<?> get(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    paramArrayOfAnnotation = getRawType(paramType);
    paramRetrofit = paramArrayOfAnnotation.getCanonicalName();
    boolean bool1 = "rx.Single".equals(paramRetrofit);
    boolean bool2 = "rx.Completable".equals(paramRetrofit);
    if ((paramArrayOfAnnotation != h.class) && (!bool1) && (!bool2))
      paramType = null;
    do
    {
      return paramType;
      if ((!bool2) && (!(paramType instanceof ParameterizedType)))
      {
        if (bool1);
        for (paramType = "Single"; ; paramType = "Observable")
          throw new IllegalStateException(paramType + " return type must be parameterized as " + paramType + "<Foo> or " + paramType + "<? extends Foo>");
      }
      if (bool2)
        return CompletableHelper.createCallAdapter(this.scheduler);
      paramArrayOfAnnotation = getCallAdapter(paramType, this.scheduler);
      paramType = paramArrayOfAnnotation;
    }
    while (!bool1);
    return SingleHelper.makeSingle(paramArrayOfAnnotation);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory
 * JD-Core Version:    0.6.2
 */