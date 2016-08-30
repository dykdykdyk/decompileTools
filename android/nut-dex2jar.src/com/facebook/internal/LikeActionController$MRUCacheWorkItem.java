package com.facebook.internal;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

class LikeActionController$MRUCacheWorkItem
  implements Runnable
{
  private static ArrayList<String> mruCachedItems = new ArrayList();
  private String cacheItem;
  private boolean shouldTrim;

  LikeActionController$MRUCacheWorkItem(String paramString, boolean paramBoolean)
  {
    this.cacheItem = paramString;
    this.shouldTrim = paramBoolean;
  }

  public void run()
  {
    if (this.cacheItem != null)
    {
      mruCachedItems.remove(this.cacheItem);
      mruCachedItems.add(0, this.cacheItem);
    }
    if ((this.shouldTrim) && (mruCachedItems.size() >= 128))
      while (64 < mruCachedItems.size())
      {
        String str = (String)mruCachedItems.remove(mruCachedItems.size() - 1);
        LikeActionController.access$500().remove(str);
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.MRUCacheWorkItem
 * JD-Core Version:    0.6.2
 */