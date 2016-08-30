package com.amap.api.mapcore2d;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class er$c
{
  private final String b;
  private final long[] c;
  private boolean d;
  private er.a e;
  private long f;

  private er$c(er paramer, String paramString)
  {
    this.b = paramString;
    this.c = new long[er.e(paramer)];
  }

  private void a(String[] paramArrayOfString)
    throws IOException
  {
    if (paramArrayOfString.length != er.e(this.a))
      throw b(paramArrayOfString);
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        this.c[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }

  private IOException b(String[] paramArrayOfString)
    throws IOException
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }

  public final File a(int paramInt)
  {
    return new File(er.f(this.a), this.b + "." + paramInt);
  }

  public final String a()
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = this.c;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }

  public final File b(int paramInt)
  {
    return new File(er.f(this.a), this.b + "." + paramInt + ".tmp");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.er.c
 * JD-Core Version:    0.6.2
 */