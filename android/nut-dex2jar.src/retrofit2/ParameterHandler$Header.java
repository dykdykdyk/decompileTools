package retrofit2;

import java.io.IOException;

final class ParameterHandler$Header<T> extends ParameterHandler<T>
{
  private final String name;
  private final Converter<T, String> valueConverter;

  ParameterHandler$Header(String paramString, Converter<T, String> paramConverter)
  {
    this.name = ((String)Utils.checkNotNull(paramString, "name == null"));
    this.valueConverter = paramConverter;
  }

  final void apply(RequestBuilder paramRequestBuilder, T paramT)
    throws IOException
  {
    if (paramT == null)
      return;
    paramRequestBuilder.addHeader(this.name, (String)this.valueConverter.convert(paramT));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.Header
 * JD-Core Version:    0.6.2
 */