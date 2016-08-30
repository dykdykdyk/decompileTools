package retrofit2;

import java.io.IOException;

final class ParameterHandler$Field<T> extends ParameterHandler<T>
{
  private final boolean encoded;
  private final String name;
  private final Converter<T, String> valueConverter;

  ParameterHandler$Field(String paramString, Converter<T, String> paramConverter, boolean paramBoolean)
  {
    this.name = ((String)Utils.checkNotNull(paramString, "name == null"));
    this.valueConverter = paramConverter;
    this.encoded = paramBoolean;
  }

  final void apply(RequestBuilder paramRequestBuilder, T paramT)
    throws IOException
  {
    if (paramT == null)
      return;
    paramRequestBuilder.addFormField(this.name, (String)this.valueConverter.convert(paramT), this.encoded);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.Field
 * JD-Core Version:    0.6.2
 */