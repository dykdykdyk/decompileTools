package com.squareup.picasso;

public enum NetworkPolicy
{
  NO_CACHE(1), NO_STORE(2), OFFLINE(4);

  final int index;

  private NetworkPolicy(int paramInt)
  {
    this.index = paramInt;
  }

  public static boolean isOfflineOnly(int paramInt)
  {
    return (OFFLINE.index & paramInt) != 0;
  }

  public static boolean shouldReadFromDiskCache(int paramInt)
  {
    return (NO_CACHE.index & paramInt) == 0;
  }

  public static boolean shouldWriteToDiskCache(int paramInt)
  {
    return (NO_STORE.index & paramInt) == 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.NetworkPolicy
 * JD-Core Version:    0.6.2
 */