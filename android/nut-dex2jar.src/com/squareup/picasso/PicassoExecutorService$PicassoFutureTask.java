package com.squareup.picasso;

import java.util.concurrent.FutureTask;

final class PicassoExecutorService$PicassoFutureTask extends FutureTask<BitmapHunter>
  implements Comparable<PicassoFutureTask>
{
  private final BitmapHunter hunter;

  public PicassoExecutorService$PicassoFutureTask(BitmapHunter paramBitmapHunter)
  {
    super(paramBitmapHunter, null);
    this.hunter = paramBitmapHunter;
  }

  public final int compareTo(PicassoFutureTask paramPicassoFutureTask)
  {
    Picasso.Priority localPriority1 = this.hunter.getPriority();
    Picasso.Priority localPriority2 = paramPicassoFutureTask.hunter.getPriority();
    if (localPriority1 == localPriority2)
      return this.hunter.sequence - paramPicassoFutureTask.hunter.sequence;
    return localPriority2.ordinal() - localPriority1.ordinal();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.PicassoExecutorService.PicassoFutureTask
 * JD-Core Version:    0.6.2
 */