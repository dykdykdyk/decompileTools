package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.av;
import okhttp3.bb;
import retrofit2.http.Streaming;

final class BuiltInConverters extends Converter.Factory
{
  public final Converter<?, av> requestBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2, Retrofit paramRetrofit)
  {
    if (av.class.isAssignableFrom(Utils.getRawType(paramType)))
      return BuiltInConverters.RequestBodyConverter.INSTANCE;
    return null;
  }

  public final Converter<bb, ?> responseBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (paramType == bb.class)
    {
      if (Utils.isAnnotationPresent(paramArrayOfAnnotation, Streaming.class))
        return BuiltInConverters.StreamingResponseBodyConverter.INSTANCE;
      return BuiltInConverters.BufferingResponseBodyConverter.INSTANCE;
    }
    if (paramType == Void.class)
      return BuiltInConverters.VoidResponseBodyConverter.INSTANCE;
    return null;
  }

  public final Converter<?, String> stringConverter(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (paramType == String.class)
      return BuiltInConverters.StringConverter.INSTANCE;
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.BuiltInConverters
 * JD-Core Version:    0.6.2
 */