package retrofit2;

import java.io.IOException;

final class BuiltInConverters$StringConverter
  implements Converter<String, String>
{
  static final StringConverter INSTANCE = new StringConverter();

  public final String convert(String paramString)
    throws IOException
  {
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.BuiltInConverters.StringConverter
 * JD-Core Version:    0.6.2
 */