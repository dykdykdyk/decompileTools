package retrofit2;

import java.util.concurrent.Executor;

class ExecutorCallAdapterFactory$ExecutorCallbackCall$1
  implements Callback<T>
{
  ExecutorCallAdapterFactory$ExecutorCallbackCall$1(ExecutorCallAdapterFactory.ExecutorCallbackCall paramExecutorCallbackCall, Callback paramCallback)
  {
  }

  public void onFailure(Call<T> paramCall, Throwable paramThrowable)
  {
    this.this$0.callbackExecutor.execute(new ExecutorCallAdapterFactory.ExecutorCallbackCall.1.2(this, paramThrowable));
  }

  public void onResponse(Call<T> paramCall, Response<T> paramResponse)
  {
    this.this$0.callbackExecutor.execute(new ExecutorCallAdapterFactory.ExecutorCallbackCall.1.1(this, paramResponse));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.1
 * JD-Core Version:    0.6.2
 */