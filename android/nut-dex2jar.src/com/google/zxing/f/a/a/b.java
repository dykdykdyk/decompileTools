package com.google.zxing.f.a.a;

public final class b
{
  public static final b a = new b();
  public final int[] b = new int[929];
  public final int[] c = new int[929];
  public final c d;
  public final c e;
  final int f = 929;

  private b()
  {
    int i = 0;
    int j = 1;
    while (i < 929)
    {
      this.b[i] = j;
      j = j * 3 % 929;
      i += 1;
    }
    i = 0;
    while (i < 928)
    {
      this.c[this.b[i]] = i;
      i += 1;
    }
    this.d = new c(this, new int[] { 0 });
    this.e = new c(this, new int[] { 1 });
  }

  public final int a(int paramInt)
  {
    if (paramInt == 0)
      throw new ArithmeticException();
    return this.b[(this.f - this.c[paramInt] - 1)];
  }

  public final c a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.d;
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new c(this, arrayOfInt);
  }

  final int b(int paramInt1, int paramInt2)
  {
    return (paramInt1 + paramInt2) % this.f;
  }

  public final int c(int paramInt1, int paramInt2)
  {
    return (this.f + paramInt1 - paramInt2) % this.f;
  }

  public final int d(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0))
      return 0;
    return this.b[((this.c[paramInt1] + this.c[paramInt2]) % (this.f - 1))];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.a.b
 * JD-Core Version:    0.6.2
 */