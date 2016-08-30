package retrofit2.adapter.rxjava;

import retrofit2.CallAdapter;
import rx.a;
import rx.r;

final class CompletableHelper
{
  static CallAdapter<a> createCallAdapter(r paramr)
  {
    return new CompletableHelper.CompletableCallAdapter(paramr);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.CompletableHelper
 * JD-Core Version:    0.6.2
 */