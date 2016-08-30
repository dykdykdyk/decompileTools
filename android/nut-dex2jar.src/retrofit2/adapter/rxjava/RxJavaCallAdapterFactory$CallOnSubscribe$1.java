package retrofit2.adapter.rxjava;

import retrofit2.Call;
import rx.b.a;

class RxJavaCallAdapterFactory$CallOnSubscribe$1
  implements a
{
  RxJavaCallAdapterFactory$CallOnSubscribe$1(RxJavaCallAdapterFactory.CallOnSubscribe paramCallOnSubscribe, Call paramCall)
  {
  }

  public void call()
  {
    this.val$call.cancel();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.RxJavaCallAdapterFactory.CallOnSubscribe.1
 * JD-Core Version:    0.6.2
 */