package retrofit2;

import java.lang.reflect.Type;

class ExecutorCallAdapterFactory$1
  implements CallAdapter<Call<?>>
{
  ExecutorCallAdapterFactory$1(ExecutorCallAdapterFactory paramExecutorCallAdapterFactory, Type paramType)
  {
  }

  public <R> Call<R> adapt(Call<R> paramCall)
  {
    return new ExecutorCallAdapterFactory.ExecutorCallbackCall(this.this$0.callbackExecutor, paramCall);
  }

  public Type responseType()
  {
    return this.val$responseType;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.ExecutorCallAdapterFactory.1
 * JD-Core Version:    0.6.2
 */