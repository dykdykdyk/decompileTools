package com.squareup.picasso;

public enum MemoryPolicy
{
  NO_CACHE(1), NO_STORE(2);

  final int index;

  private MemoryPolicy(int paramInt)
  {
    this.index = paramInt;
  }

  static boolean shouldReadFromMemoryCache(int paramInt)
  {
    return (NO_CACHE.index & paramInt) == 0;
  }

  static boolean shouldWriteToMemoryCache(int paramInt)
  {
    return (NO_STORE.index & paramInt) == 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.MemoryPolicy
 * JD-Core Version:    0.6.2
 */