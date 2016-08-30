package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.h;
import rx.r;

final class RxJavaCallAdapterFactory$SimpleCallAdapter
  implements CallAdapter<h<?>>
{
  private final Type responseType;
  private final r scheduler;

  RxJavaCallAdapterFactory$SimpleCallAdapter(Type paramType, r paramr)
  {
    this.responseType = paramType;
    this.scheduler = paramr;
  }

  public final <R> h<R> adapt(Call<R> paramCall)
  {
    h localh = h.a(new RxJavaCallAdapterFactory.CallOnSubscribe(paramCall)).a(new RxJavaCallAdapterFactory.SimpleCallAdapter.1(this));
    paramCall = localh;
    if (this.scheduler != null)
      paramCall = localh.b(this.scheduler);
    return paramCall;
  }

  public final Type responseType()
  {
    return this.responseType;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.SimpleCallAdapter
 * JD-Core Version:    0.6.2
 */