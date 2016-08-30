package retrofit2;

import java.lang.reflect.Type;

public abstract interface CallAdapter<T>
{
  public abstract <R> T adapt(Call<R> paramCall);

  public abstract Type responseType();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.CallAdapter
 * JD-Core Version:    0.6.2
 */