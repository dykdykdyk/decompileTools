package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.a;
import rx.d;
import rx.r;

class CompletableHelper$CompletableCallAdapter
  implements CallAdapter<a>
{
  private final r scheduler;

  CompletableHelper$CompletableCallAdapter(r paramr)
  {
    this.scheduler = paramr;
  }

  public a adapt(Call paramCall)
  {
    a locala = a.a(new CompletableHelper.CompletableCallOnSubscribe(paramCall));
    paramCall = locala;
    if (this.scheduler != null)
    {
      paramCall = this.scheduler;
      a.a(paramCall);
      paramCall = a.a(new d(locala, paramCall));
    }
    return paramCall;
  }

  public Type responseType()
  {
    return Void.class;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.CompletableHelper.CompletableCallAdapter
 * JD-Core Version:    0.6.2
 */