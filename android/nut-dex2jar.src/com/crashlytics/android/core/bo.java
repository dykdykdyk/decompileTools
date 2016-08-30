package com.crashlytics.android.core;

import java.io.IOException;

final class bo extends bn
{
  private final bn[] a;

  public bo(bn[] paramArrayOfbn)
  {
    super(0, new bn[0]);
    this.a = paramArrayOfbn;
  }

  public final int b()
  {
    int i = 0;
    bn[] arrayOfbn = this.a;
    int k = arrayOfbn.length;
    int j = 0;
    while (i < k)
    {
      j += arrayOfbn[i].b();
      i += 1;
    }
    return j;
  }

  public final void b(f paramf)
    throws IOException
  {
    bn[] arrayOfbn = this.a;
    int j = arrayOfbn.length;
    int i = 0;
    while (i < j)
    {
      arrayOfbn[i].b(paramf);
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bo
 * JD-Core Version:    0.6.2
 */