package retrofit2;

import java.io.IOException;
import okhttp3.al;

final class ParameterHandler$RawPart extends ParameterHandler<al>
{
  static final RawPart INSTANCE = new RawPart();

  final void apply(RequestBuilder paramRequestBuilder, al paramal)
    throws IOException
  {
    if (paramal != null)
      paramRequestBuilder.addPart(paramal);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.RawPart
 * JD-Core Version:    0.6.2
 */