package retrofit2;

import java.io.IOException;

abstract class ParameterHandler<T>
{
  abstract void apply(RequestBuilder paramRequestBuilder, T paramT)
    throws IOException;

  final ParameterHandler<Object> array()
  {
    return new ParameterHandler.2(this);
  }

  final ParameterHandler<Iterable<T>> iterable()
  {
    return new ParameterHandler.1(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ParameterHandler
 * JD-Core Version:    0.6.2
 */