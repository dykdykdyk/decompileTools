package bolts;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

final class b
  implements Executor
{
  public final void execute(Runnable paramRunnable)
  {
    new Handler(Looper.getMainLooper()).post(paramRunnable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.b
 * JD-Core Version:    0.6.2
 */