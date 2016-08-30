package retrofit2;

import java.io.IOException;
import okhttp3.ab;
import okhttp3.av;

final class ParameterHandler$Part<T> extends ParameterHandler<T>
{
  private final Converter<T, av> converter;
  private final ab headers;

  ParameterHandler$Part(ab paramab, Converter<T, av> paramConverter)
  {
    this.headers = paramab;
    this.converter = paramConverter;
  }

  final void apply(RequestBuilder paramRequestBuilder, T paramT)
  {
    if (paramT == null)
      return;
    try
    {
      av localav = (av)this.converter.convert(paramT);
      paramRequestBuilder.addPart(this.headers, localav);
      return;
    }
    catch (IOException paramRequestBuilder)
    {
    }
    throw new RuntimeException("Unable to convert " + paramT + " to RequestBody", paramRequestBuilder);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.Part
 * JD-Core Version:    0.6.2
 */