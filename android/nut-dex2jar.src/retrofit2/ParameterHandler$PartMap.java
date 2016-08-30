package retrofit2;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import okhttp3.ab;
import okhttp3.av;

final class ParameterHandler$PartMap<T> extends ParameterHandler<Map<String, T>>
{
  private final String transferEncoding;
  private final Converter<T, av> valueConverter;

  ParameterHandler$PartMap(Converter<T, av> paramConverter, String paramString)
  {
    this.valueConverter = paramConverter;
    this.transferEncoding = paramString;
  }

  final void apply(RequestBuilder paramRequestBuilder, Map<String, T> paramMap)
    throws IOException
  {
    if (paramMap == null)
      throw new IllegalArgumentException("Part map was null.");
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      if (str == null)
        throw new IllegalArgumentException("Part map contained null key.");
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject == null)
        throw new IllegalArgumentException("Part map contained null value for key '" + str + "'.");
      paramRequestBuilder.addPart(ab.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.transferEncoding }), (av)this.valueConverter.convert(localObject));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.PartMap
 * JD-Core Version:    0.6.2
 */