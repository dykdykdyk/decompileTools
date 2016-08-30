package retrofit2.adapter.rxjava;

import retrofit2.Response;
import rx.b.d;
import rx.h;

class RxJavaCallAdapterFactory$SimpleCallAdapter$1
  implements d<Response<R>, h<R>>
{
  RxJavaCallAdapterFactory$SimpleCallAdapter$1(RxJavaCallAdapterFactory.SimpleCallAdapter paramSimpleCallAdapter)
  {
  }

  public h<R> call(Response<R> paramResponse)
  {
    if (paramResponse.isSuccessful())
      return h.a(paramResponse.body());
    return h.a(new HttpException(paramResponse));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.SimpleCallAdapter.1
 * JD-Core Version:    0.6.2
 */