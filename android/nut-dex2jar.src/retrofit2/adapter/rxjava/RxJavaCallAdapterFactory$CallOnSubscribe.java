package retrofit2.adapter.rxjava;

import retrofit2.Call;
import retrofit2.Response;
import rx.c.d.s;
import rx.exceptions.e;
import rx.f.h;
import rx.l;
import rx.z;

final class RxJavaCallAdapterFactory$CallOnSubscribe<T>
  implements l<Response<T>>
{
  private final Call<T> originalCall;

  RxJavaCallAdapterFactory$CallOnSubscribe(Call<T> paramCall)
  {
    this.originalCall = paramCall;
  }

  public final void call(z<? super Response<T>> paramz)
  {
    Object localObject = this.originalCall.clone();
    paramz.a(h.a(new RxJavaCallAdapterFactory.CallOnSubscribe.1(this, (Call)localObject)));
    try
    {
      localObject = ((Call)localObject).execute();
      if (!paramz.c.b)
        paramz.a(localObject);
      if (!paramz.c.b)
        paramz.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      do
        e.a(localThrowable);
      while (paramz.c.b);
      paramz.a(localThrowable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.CallOnSubscribe
 * JD-Core Version:    0.6.2
 */