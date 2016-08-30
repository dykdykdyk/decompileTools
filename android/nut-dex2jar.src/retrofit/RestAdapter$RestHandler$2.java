package retrofit;

import java.util.concurrent.Executor;

class RestAdapter$RestHandler$2 extends CallbackRunnable
{
  RestAdapter$RestHandler$2(RestAdapter.RestHandler paramRestHandler, Callback paramCallback, Executor paramExecutor, ErrorHandler paramErrorHandler, RequestInterceptorTape paramRequestInterceptorTape, RestMethodInfo paramRestMethodInfo, Object[] paramArrayOfObject)
  {
    super(paramCallback, paramExecutor, paramErrorHandler);
  }

  public ResponseWrapper obtainResponse()
  {
    return (ResponseWrapper)RestAdapter.RestHandler.access$100(this.this$1, this.val$interceptorTape, this.val$methodInfo, this.val$args);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RestAdapter.RestHandler.2
 * JD-Core Version:    0.6.2
 */