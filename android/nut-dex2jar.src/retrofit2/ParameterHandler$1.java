package retrofit2;

import java.io.IOException;
import java.util.Iterator;

class ParameterHandler$1 extends ParameterHandler<Iterable<T>>
{
  ParameterHandler$1(ParameterHandler paramParameterHandler)
  {
  }

  void apply(RequestBuilder paramRequestBuilder, Iterable<T> paramIterable)
    throws IOException
  {
    if (paramIterable == null);
    while (true)
    {
      return;
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        Object localObject = paramIterable.next();
        this.this$0.apply(paramRequestBuilder, localObject);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler.1
 * JD-Core Version:    0.6.2
 */