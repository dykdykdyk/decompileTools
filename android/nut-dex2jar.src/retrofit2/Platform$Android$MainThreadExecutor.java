package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

class Platform$Android$MainThreadExecutor
  implements Executor
{
  private final Handler handler = new Handler(Looper.getMainLooper());

  public void execute(Runnable paramRunnable)
  {
    this.handler.post(paramRunnable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Platform.Android.MainThreadExecutor
 * JD-Core Version:    0.6.2
 */