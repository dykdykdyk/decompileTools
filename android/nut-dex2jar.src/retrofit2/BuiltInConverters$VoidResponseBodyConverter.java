package retrofit2;

import java.io.IOException;
import okhttp3.bb;

final class BuiltInConverters$VoidResponseBodyConverter
  implements Converter<bb, Void>
{
  static final VoidResponseBodyConverter INSTANCE = new VoidResponseBodyConverter();

  public final Void convert(bb parambb)
    throws IOException
  {
    parambb.close();
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.BuiltInConverters.VoidResponseBodyConverter
 * JD-Core Version:    0.6.2
 */