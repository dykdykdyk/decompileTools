package com.nut.blehunter.rxApi;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.ai;
import okhttp3.av;
import okhttp3.bb;
import retrofit2.Converter;
import retrofit2.Converter.Factory;
import retrofit2.Retrofit;

public final class j extends Converter.Factory
{
  private static final ai a = ai.a("text/plain");

  public final Converter<?, av> requestBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2, Retrofit paramRetrofit)
  {
    if (String.class.equals(paramType))
      return new k(this);
    return null;
  }

  public final Converter<bb, ?> responseBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (String.class.equals(paramType))
      return new l(this);
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.j
 * JD-Core Version:    0.6.2
 */