package retrofit;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import rx.f.h;
import rx.l;
import rx.z;

class RxSupport$1
  implements l<Object>
{
  RxSupport$1(RxSupport paramRxSupport, RxSupport.Invoker paramInvoker)
  {
  }

  public void call(z<? super Object> paramz)
  {
    Object localObject = new RequestInterceptorTape();
    RxSupport.access$000(this.this$0).intercept((RequestInterceptor.RequestFacade)localObject);
    localObject = new FutureTask(RxSupport.access$100(this.this$0, paramz, this.val$invoker, (RequestInterceptorTape)localObject), null);
    paramz.a(h.a((Future)localObject));
    RxSupport.access$200(this.this$0).execute((Runnable)localObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RxSupport.1
 * JD-Core Version:    0.6.2
 */