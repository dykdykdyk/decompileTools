package retrofit;

import rx.c.d.s;
import rx.z;

class RxSupport$2
  implements Runnable
{
  RxSupport$2(RxSupport paramRxSupport, z paramz, RxSupport.Invoker paramInvoker, RequestInterceptorTape paramRequestInterceptorTape)
  {
  }

  public void run()
  {
    try
    {
      if (this.val$subscriber.c.b)
        return;
      ResponseWrapper localResponseWrapper = this.val$invoker.invoke(this.val$interceptorTape);
      this.val$subscriber.a(localResponseWrapper.responseBody);
      this.val$subscriber.a();
      return;
    }
    catch (RetrofitError localRetrofitError)
    {
      this.val$subscriber.a(RxSupport.access$300(this.this$0).handleError(localRetrofitError));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RxSupport.2
 * JD-Core Version:    0.6.2
 */