package retrofit2;

class ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2
  implements Runnable
{
  ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2(ExecutorCallAdapterFactory.ExecutorCallbackCall.1 param1, Throwable paramThrowable)
  {
  }

  public void run()
  {
    this.this$1.val$callback.onFailure(this.this$1.this$0, this.val$t);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.1.2
 * JD-Core Version:    0.6.2
 */