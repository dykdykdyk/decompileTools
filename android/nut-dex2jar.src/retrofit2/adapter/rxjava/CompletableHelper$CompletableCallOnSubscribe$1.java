package retrofit2.adapter.rxjava;

import retrofit2.Call;
import rx.b.a;

class CompletableHelper$CompletableCallOnSubscribe$1
  implements a
{
  CompletableHelper$CompletableCallOnSubscribe$1(CompletableHelper.CompletableCallOnSubscribe paramCompletableCallOnSubscribe, Call paramCall)
  {
  }

  public void call()
  {
    this.val$call.cancel();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.CompletableHelper.CompletableCallOnSubscribe.1
 * JD-Core Version:    0.6.2
 */