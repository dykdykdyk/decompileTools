package retrofit2.adapter.rxjava;

import retrofit2.Response;
import rx.b.d;

class RxJavaCallAdapterFactory$ResultCallAdapter$2
  implements d<Response<R>, Result<R>>
{
  RxJavaCallAdapterFactory$ResultCallAdapter$2(RxJavaCallAdapterFactory.ResultCallAdapter paramResultCallAdapter)
  {
  }

  public Result<R> call(Response<R> paramResponse)
  {
    return Result.response(paramResponse);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.ResultCallAdapter.2
 * JD-Core Version:    0.6.2
 */