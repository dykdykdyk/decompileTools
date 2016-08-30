package retrofit;

import java.util.concurrent.Executor;
import rx.h;
import rx.z;

final class RxSupport
{
  private final ErrorHandler errorHandler;
  private final Executor executor;
  private final RequestInterceptor requestInterceptor;

  RxSupport(Executor paramExecutor, ErrorHandler paramErrorHandler, RequestInterceptor paramRequestInterceptor)
  {
    this.executor = paramExecutor;
    this.errorHandler = paramErrorHandler;
    this.requestInterceptor = paramRequestInterceptor;
  }

  private Runnable getRunnable(z<? super Object> paramz, RxSupport.Invoker paramInvoker, RequestInterceptorTape paramRequestInterceptorTape)
  {
    return new RxSupport.2(this, paramz, paramInvoker, paramRequestInterceptorTape);
  }

  final h createRequestObservable(RxSupport.Invoker paramInvoker)
  {
    return h.a(new RxSupport.1(this, paramInvoker));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RxSupport
 * JD-Core Version:    0.6.2
 */