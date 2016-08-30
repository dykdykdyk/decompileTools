package com.squareup.picasso;

import android.net.NetworkInfo;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class PicassoExecutorService extends ThreadPoolExecutor
{
  private static final int DEFAULT_THREAD_COUNT = 3;

  PicassoExecutorService()
  {
    super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new Utils.PicassoThreadFactory());
  }

  private void setThreadCount(int paramInt)
  {
    setCorePoolSize(paramInt);
    setMaximumPoolSize(paramInt);
  }

  void adjustThreadCount(NetworkInfo paramNetworkInfo)
  {
    if ((paramNetworkInfo == null) || (!paramNetworkInfo.isConnectedOrConnecting()))
    {
      setThreadCount(3);
      return;
    }
    switch (paramNetworkInfo.getType())
    {
    default:
      setThreadCount(3);
      return;
    case 1:
    case 6:
    case 9:
      setThreadCount(4);
      return;
    case 0:
    }
    switch (paramNetworkInfo.getSubtype())
    {
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    default:
      setThreadCount(3);
      return;
    case 13:
    case 14:
    case 15:
      setThreadCount(3);
      return;
    case 3:
    case 4:
    case 5:
    case 6:
    case 12:
      setThreadCount(2);
      return;
    case 1:
    case 2:
    }
    setThreadCount(1);
  }

  public Future<?> submit(Runnable paramRunnable)
  {
    paramRunnable = new PicassoExecutorService.PicassoFutureTask((BitmapHunter)paramRunnable);
    execute(paramRunnable);
    return paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.PicassoExecutorService
 * JD-Core Version:    0.6.2
 */