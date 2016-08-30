package com.sina.weibo.sdk.d;

import com.sina.weibo.sdk.exception.WeiboException;
import java.util.concurrent.locks.ReentrantLock;

final class d
  implements Runnable
{
  d(b paramb)
  {
  }

  public final void run()
  {
    if (!this.a.b.tryLock())
    {
      i.c("AidTask", "tryLock : false, return");
      return;
    }
    Object localObject = this.a.a();
    int i;
    int j;
    if (localObject == null)
    {
      i = 1;
      j = i + 1;
    }
    while (true)
    {
      try
      {
        localObject = this.a.b();
        e locale = e.a((String)localObject);
        this.a.b((String)localObject);
        this.a.a = locale;
        this.a.b.unlock();
        return;
      }
      catch (WeiboException localWeiboException)
      {
        i.c("AidTask", "AidTaskInit WeiboException Msg : " + localWeiboException.getMessage());
        i = j;
      }
      if (j < 3)
        break;
      continue;
      this.a.a = localWeiboException;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.d
 * JD-Core Version:    0.6.2
 */