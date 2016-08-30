package com.sina.weibo.sdk.d;

import java.io.File;

final class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public final void run()
  {
    int i = 0;
    while (true)
    {
      if (i > 0)
        return;
      File localFile = this.a.a(0);
      try
      {
        localFile.delete();
        label21: i += 1;
      }
      catch (Exception localException)
      {
        break label21;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.c
 * JD-Core Version:    0.6.2
 */