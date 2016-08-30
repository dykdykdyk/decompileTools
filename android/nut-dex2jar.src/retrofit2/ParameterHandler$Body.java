package retrofit2;

import java.io.IOException;
import okhttp3.av;

final class ParameterHandler$Body<T> extends ParameterHandler<T>
{
  private final Converter<T, av> converter;

  ParameterHandler$Body(Converter<T, av> paramConverter)
  {
    this.converter = paramConverter;
  }

  final void apply(RequestBuilder paramRequestBuilder, T paramT)
  {
    if (paramT == null)
      throw new IllegalArgumentException("Body parameter value must not be null.");
    try
    {
      av localav = (av)this.converter.convert(paramT);
      paramRequestBuilder.setBody(localav);
      return;
    }
    catch (IOException paramRequestBuilder)
    {
    }
    throw new RuntimeException("Unable to convert " + paramT + " to RequestBody", paramRequestBuilder);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.Body
 * JD-Core Version:    0.6.2
 */