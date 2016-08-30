package retrofit2.adapter.rxjava;

import retrofit2.CallAdapter;
import rx.h;
import rx.u;

final class SingleHelper
{
  static CallAdapter<u<?>> makeSingle(CallAdapter<h<?>> paramCallAdapter)
  {
    return new SingleHelper.1(paramCallAdapter);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.SingleHelper
 * JD-Core Version:    0.6.2
 */