package retrofit2.adapter.rxjava;

import rx.b.d;

class RxJavaCallAdapterFactory$ResultCallAdapter$1
  implements d<Throwable, Result<R>>
{
  RxJavaCallAdapterFactory$ResultCallAdapter$1(RxJavaCallAdapterFactory.ResultCallAdapter paramResultCallAdapter)
  {
  }

  public Result<R> call(Throwable paramThrowable)
  {
    return Result.error(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.ResultCallAdapter.1
 * JD-Core Version:    0.6.2
 */