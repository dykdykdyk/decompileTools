package com.amap.api.services.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class bz$a
{
  private final bz.c b;
  private final boolean[] c;
  private boolean d;
  private boolean e;

  private bz$a(bz parambz, bz.c paramc)
  {
    this.b = paramc;
    if (bz.c.d(paramc));
    for (parambz = null; ; parambz = new boolean[bz.e(parambz)])
    {
      this.c = parambz;
      return;
    }
  }

  public final OutputStream a(int paramInt)
    throws IOException
  {
    if ((paramInt < 0) || (paramInt >= bz.e(this.a)))
      throw new IllegalArgumentException("Expected index " + paramInt + " to be greater than 0 and less than the maximum value count of " + bz.e(this.a));
    synchronized (this.a)
    {
      if (bz.c.a(this.b) != this)
        throw new IllegalStateException();
    }
    if (!bz.c.d(this.b))
      this.c[paramInt] = true;
    File localFile = this.b.b(paramInt);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new bz.a.a(this, (OutputStream)localObject2, null);
      return localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      while (true)
      {
        bz.f(this.a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = bz.d();
          return localOutputStream;
        }
      }
    }
  }

  public final void a()
    throws IOException
  {
    if (this.d)
    {
      bz.a(this.a, this, false);
      this.a.c(bz.c.c(this.b));
    }
    while (true)
    {
      this.e = true;
      return;
      bz.a(this.a, this, true);
    }
  }

  public final void b()
    throws IOException
  {
    bz.a(this.a, this, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bz.a
 * JD-Core Version:    0.6.2
 */