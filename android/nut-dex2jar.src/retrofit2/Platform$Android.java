package retrofit2;

import java.util.concurrent.Executor;

class Platform$Android extends Platform
{
  CallAdapter.Factory defaultCallAdapterFactory(Executor paramExecutor)
  {
    return new ExecutorCallAdapterFactory(paramExecutor);
  }

  public Executor defaultCallbackExecutor()
  {
    return new Platform.Android.MainThreadExecutor();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Platform.Android
 * JD-Core Version:    0.6.2
 */