package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.c.a.s;
import rx.c.a.t;
import rx.h;
import rx.r;

final class RxJavaCallAdapterFactory$ResultCallAdapter
  implements CallAdapter<h<?>>
{
  private final Type responseType;
  private final r scheduler;

  RxJavaCallAdapterFactory$ResultCallAdapter(Type paramType, r paramr)
  {
    this.responseType = paramType;
    this.scheduler = paramr;
  }

  public final <R> h<Result<R>> adapt(Call<R> paramCall)
  {
    h localh = h.a(new RxJavaCallAdapterFactory.CallOnSubscribe(paramCall)).b(new RxJavaCallAdapterFactory.ResultCallAdapter.2(this)).a(new s(new t(new RxJavaCallAdapterFactory.ResultCallAdapter.1(this))));
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
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.ResultCallAdapter
 * JD-Core Version:    0.6.2
 */