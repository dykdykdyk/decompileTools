package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.h;
import rx.u;

final class SingleHelper$1
  implements CallAdapter<u<?>>
{
  SingleHelper$1(CallAdapter paramCallAdapter)
  {
  }

  public final <R> u<?> adapt(Call<R> paramCall)
  {
    return ((h)this.val$callAdapter.adapt(paramCall)).a();
  }

  public final Type responseType()
  {
    return this.val$callAdapter.responseType();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.SingleHelper.1
 * JD-Core Version:    0.6.2
 */