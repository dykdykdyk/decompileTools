package com.google.zxing.g.a;

public final class t
{
  final int a;
  final s[] b;

  t(int paramInt, s[] paramArrayOfs)
  {
    this.a = paramInt;
    this.b = paramArrayOfs;
  }

  public final int a()
  {
    int i = 0;
    s[] arrayOfs = this.b;
    int k = arrayOfs.length;
    int j = 0;
    while (i < k)
    {
      j += arrayOfs[i].a;
      i += 1;
    }
    return j;
  }

  public final int b()
  {
    return this.a * a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.t
 * JD-Core Version:    0.6.2
 */