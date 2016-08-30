package retrofit2;

import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.at;

final class ExecutorCallAdapterFactory$ExecutorCallbackCall<T>
  implements Call<T>
{
  final Executor callbackExecutor;
  final Call<T> delegate;

  ExecutorCallAdapterFactory$ExecutorCallbackCall(Executor paramExecutor, Call<T> paramCall)
  {
    this.callbackExecutor = paramExecutor;
    this.delegate = paramCall;
  }

  public final void cancel()
  {
    this.delegate.cancel();
  }

  public final Call<T> clone()
  {
    return new ExecutorCallbackCall(this.callbackExecutor, this.delegate.clone());
  }

  public final void enqueue(Callback<T> paramCallback)
  {
    if (paramCallback == null)
      throw new NullPointerException("callback == null");
    this.delegate.enqueue(new ExecutorCallAdapterFactory.ExecutorCallbackCall.1(this, paramCallback));
  }

  public final Response<T> execute()
    throws IOException
  {
    return this.delegate.execute();
  }

  public final boolean isCanceled()
  {
    return this.delegate.isCanceled();
  }

  public final boolean isExecuted()
  {
    return this.delegate.isExecuted();
  }

  public final at request()
  {
    return this.delegate.request();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall
 * JD-Core Version:    0.6.2
 */