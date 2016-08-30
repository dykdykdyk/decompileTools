package com.amap.api.mapcore2d;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class er$a
{
  private final er.c b;
  private final boolean[] c;
  private boolean d;
  private boolean e;

  private er$a(er paramer, er.c paramc)
  {
    this.b = paramc;
    if (er.c.d(paramc));
    for (paramer = null; ; paramer = new boolean[er.e(paramer)])
    {
      this.c = paramer;
      return;
    }
  }

  public final OutputStream a(int paramInt)
    throws IOException
  {
    if ((paramInt < 0) || (paramInt >= er.e(this.a)))
      throw new IllegalArgumentException("Expected index " + paramInt + " to be greater than 0 and less than the maximum value count of " + er.e(this.a));
    synchronized (this.a)
    {
      if (er.c.a(this.b) != this)
        throw new IllegalStateException();
    }
    if (!er.c.d(this.b))
      this.c[paramInt] = true;
    File localFile = this.b.b(paramInt);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new er.a.a(this, (OutputStream)localObject2, null);
      return localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      while (true)
      {
        er.f(this.a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = er.d();
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
      er.a(this.a, this, false);
      this.a.c(er.c.c(this.b));
    }
    while (true)
    {
      this.e = true;
      return;
      er.a(this.a, this, true);
    }
  }

  public final void b()
    throws IOException
  {
    er.a(this.a, this, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.er.a
 * JD-Core Version:    0.6.2
 */