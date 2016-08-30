package com.google.zxing.common.reedsolomon;

public final class a
{
  public static final a a = new a(4201, 4096, 1);
  public static final a b = new a(1033, 1024, 1);
  public static final a c = new a(67, 64, 1);
  public static final a d = new a(19, 16, 1);
  public static final a e = new a(285, 256, 0);
  public static final a f = locala;
  public static final a g = locala;
  public static final a h = c;
  final int[] i;
  final b j;
  final b k;
  final int l;
  final int m;
  private final int[] n;
  private final int o;

  static
  {
    a locala = new a(301, 256, 1);
  }

  private a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.o = paramInt1;
    this.l = paramInt2;
    this.m = paramInt3;
    this.i = new int[paramInt2];
    this.n = new int[paramInt2];
    int i1 = 0;
    paramInt3 = 1;
    while (i1 < paramInt2)
    {
      this.i[i1] = paramInt3;
      int i2 = paramInt3 * 2;
      paramInt3 = i2;
      if (i2 >= paramInt2)
        paramInt3 = (i2 ^ paramInt1) & paramInt2 - 1;
      i1 += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < paramInt2 - 1)
    {
      this.n[this.i[paramInt1]] = paramInt1;
      paramInt1 += 1;
    }
    this.j = new b(this, new int[] { 0 });
    this.k = new b(this, new int[] { 1 });
  }

  static int b(int paramInt1, int paramInt2)
  {
    return paramInt1 ^ paramInt2;
  }

  final int a(int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException();
    return this.n[paramInt];
  }

  final b a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.j;
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new b(this, arrayOfInt);
  }

  final int b(int paramInt)
  {
    if (paramInt == 0)
      throw new ArithmeticException();
    return this.i[(this.l - this.n[paramInt] - 1)];
  }

  final int c(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0))
      return 0;
    return this.i[((this.n[paramInt1] + this.n[paramInt2]) % (this.l - 1))];
  }

  public final String toString()
  {
    return "GF(0x" + Integer.toHexString(this.o) + ',' + this.l + ')';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.a
 * JD-Core Version:    0.6.2
 */