package retrofit2;

import java.io.IOException;
import okhttp3.bb;

final class BuiltInConverters$BufferingResponseBodyConverter
  implements Converter<bb, bb>
{
  static final BufferingResponseBodyConverter INSTANCE = new BufferingResponseBodyConverter();

  public final bb convert(bb parambb)
    throws IOException
  {
    try
    {
      bb localbb = Utils.buffer(parambb);
      return localbb;
    }
    finally
    {
      parambb.close();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.BuiltInConverters.BufferingResponseBodyConverter
 * JD-Core Version:    0.6.2
 */