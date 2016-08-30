package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class Stats$StatsHandler extends Handler
{
  private final Stats stats;

  public Stats$StatsHandler(Looper paramLooper, Stats paramStats)
  {
    super(paramLooper);
    this.stats = paramStats;
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      Picasso.HANDLER.post(new Stats.StatsHandler.1(this, paramMessage));
      return;
    case 0:
      this.stats.performCacheHit();
      return;
    case 1:
      this.stats.performCacheMiss();
      return;
    case 2:
      this.stats.performBitmapDecoded(paramMessage.arg1);
      return;
    case 3:
      this.stats.performBitmapTransformed(paramMessage.arg1);
      return;
    case 4:
    }
    this.stats.performDownloadFinished((Long)paramMessage.obj);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Stats.StatsHandler
 * JD-Core Version:    0.6.2
 */