package retrofit2;

import java.lang.reflect.Type;

class DefaultCallAdapterFactory$1
  implements CallAdapter<Call<?>>
{
  DefaultCallAdapterFactory$1(DefaultCallAdapterFactory paramDefaultCallAdapterFactory, Type paramType)
  {
  }

  public <R> Call<R> adapt(Call<R> paramCall)
  {
    return paramCall;
  }

  public Type responseType()
  {
    return this.val$responseType;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.DefaultCallAdapterFactory.1
 * JD-Core Version:    0.6.2
 */