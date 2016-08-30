package com.amap.api.services.core;

import java.io.Closeable;
import java.io.InputStream;

public final class bz$b
  implements Closeable
{
  private final String b;
  private final long c;
  private final InputStream[] d;
  private final long[] e;

  private bz$b(bz parambz, String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    this.b = paramString;
    this.c = paramLong;
    this.d = paramArrayOfInputStream;
    this.e = paramArrayOfLong;
  }

  public final InputStream a(int paramInt)
  {
    return this.d[paramInt];
  }

  public final void close()
  {
    InputStream[] arrayOfInputStream = this.d;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      ce.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bz.b
 * JD-Core Version:    0.6.2
 */