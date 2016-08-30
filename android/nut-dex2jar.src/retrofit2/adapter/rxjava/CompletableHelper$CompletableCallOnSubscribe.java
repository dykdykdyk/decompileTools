package retrofit2.adapter.rxjava;

import retrofit2.Call;
import retrofit2.Response;
import rx.aa;
import rx.exceptions.e;
import rx.f;
import rx.f.h;
import rx.g;

final class CompletableHelper$CompletableCallOnSubscribe
  implements f
{
  private final Call originalCall;

  CompletableHelper$CompletableCallOnSubscribe(Call paramCall)
  {
    this.originalCall = paramCall;
  }

  public final void call(g paramg)
  {
    Object localObject = this.originalCall.clone();
    paramg = h.a(new CompletableHelper.CompletableCallOnSubscribe.1(this, (Call)localObject));
    try
    {
      localObject = ((Call)localObject).execute();
      if ((!paramg.b()) && (!((Response)localObject).isSuccessful()))
        new HttpException((Response)localObject);
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a(localThrowable);
      paramg.b();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.CompletableHelper.CompletableCallOnSubscribe
 * JD-Core Version:    0.6.2
 */