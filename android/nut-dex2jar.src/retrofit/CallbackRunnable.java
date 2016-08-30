package retrofit;

import java.util.concurrent.Executor;

abstract class CallbackRunnable<T>
  implements Runnable
{
  private final Callback<T> callback;
  private final Executor callbackExecutor;
  private final ErrorHandler errorHandler;

  CallbackRunnable(Callback<T> paramCallback, Executor paramExecutor, ErrorHandler paramErrorHandler)
  {
    this.callback = paramCallback;
    this.callbackExecutor = paramExecutor;
    this.errorHandler = paramErrorHandler;
  }

  public abstract ResponseWrapper obtainResponse();

  public final void run()
  {
    Throwable localThrowable;
    try
    {
      ResponseWrapper localResponseWrapper = obtainResponse();
      this.callbackExecutor.execute(new CallbackRunnable.1(this, localResponseWrapper));
      return;
    }
    catch (RetrofitError localRetrofitError1)
    {
      localThrowable = this.errorHandler.handleError(localRetrofitError1);
      if (localThrowable != localRetrofitError1);
    }
    while (true)
    {
      this.callbackExecutor.execute(new CallbackRunnable.2(this, localRetrofitError1));
      return;
      RetrofitError localRetrofitError2 = RetrofitError.unexpectedError(localRetrofitError1.getUrl(), localThrowable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.CallbackRunnable
 * JD-Core Version:    0.6.2
 */