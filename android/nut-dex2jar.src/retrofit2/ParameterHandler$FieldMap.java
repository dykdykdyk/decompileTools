package retrofit2;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ParameterHandler$FieldMap<T> extends ParameterHandler<Map<String, T>>
{
  private final boolean encoded;
  private final Converter<T, String> valueConverter;

  ParameterHandler$FieldMap(Converter<T, String> paramConverter, boolean paramBoolean)
  {
    this.valueConverter = paramConverter;
    this.encoded = paramBoolean;
  }

  final void apply(RequestBuilder paramRequestBuilder, Map<String, T> paramMap)
    throws IOException
  {
    if (paramMap == null)
      throw new IllegalArgumentException("Field map was null.");
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      if (str == null)
        throw new IllegalArgumentException("Field map contained null key.");
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject == null)
        throw new IllegalArgumentException("Field map contained null value for key '" + str + "'.");
      paramRequestBuilder.addFormField(str, (String)this.valueConverter.convert(localObject), this.encoded);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.FieldMap
 * JD-Core Version:    0.6.2
 */