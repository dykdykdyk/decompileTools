package retrofit;

import java.util.concurrent.Executor;

class Utils$SynchronousExecutor
  implements Executor
{
  public void execute(Runnable paramRunnable)
  {
    paramRunnable.run();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Utils.SynchronousExecutor
 * JD-Core Version:    0.6.2
 */