package com.crashlytics.android.core;

import java.io.IOException;

abstract class bn
{
  private final int a;
  private final bn[] b;

  public bn(int paramInt, bn[] paramArrayOfbn)
  {
    this.a = paramInt;
    if (paramArrayOfbn != null);
    while (true)
    {
      this.b = paramArrayOfbn;
      return;
      paramArrayOfbn = bd.a();
    }
  }

  private int c()
  {
    int j = a();
    bn[] arrayOfbn = this.b;
    int k = arrayOfbn.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfbn[i].b();
      i += 1;
    }
    return j;
  }

  public int a()
  {
    return 0;
  }

  public void a(f paramf)
    throws IOException
  {
  }

  public int b()
  {
    int i = c();
    return i + f.f(i) + f.d(this.a);
  }

  public void b(f paramf)
    throws IOException
  {
    paramf.e(this.a, 2);
    paramf.e(c());
    a(paramf);
    bn[] arrayOfbn = this.b;
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
 * Qualified Name:     com.crashlytics.android.core.bn
 * JD-Core Version:    0.6.2
 */