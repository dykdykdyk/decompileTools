package retrofit2;

import java.io.IOException;

class ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1
  implements Runnable
{
  ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1(ExecutorCallAdapterFactory.ExecutorCallbackCall.1 param1, Response paramResponse)
  {
  }

  public void run()
  {
    if (this.this$1.this$0.delegate.isCanceled())
    {
      this.this$1.val$callback.onFailure(this.this$1.this$0, new IOException("Canceled"));
      return;
    }
    this.this$1.val$callback.onResponse(this.this$1.this$0, this.val$response);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.1.1
 * JD-Core Version:    0.6.2
 */