package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;

class ParameterHandler$2 extends ParameterHandler<Object>
{
  ParameterHandler$2(ParameterHandler paramParameterHandler)
  {
  }

  void apply(RequestBuilder paramRequestBuilder, Object paramObject)
    throws IOException
  {
    if (paramObject == null);
    while (true)
    {
      return;
      int i = 0;
      int j = Array.getLength(paramObject);
      while (i < j)
      {
        this.this$0.apply(paramRequestBuilder, Array.get(paramObject, i));
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.2
 * JD-Core Version:    0.6.2
 */