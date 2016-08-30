package com.squareup.picasso;

import java.util.concurrent.ThreadFactory;

class Utils$PicassoThreadFactory
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    return new Utils.PicassoThread(paramRunnable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Utils.PicassoThreadFactory
 * JD-Core Version:    0.6.2
 */