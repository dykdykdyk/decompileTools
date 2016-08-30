package com.google.zxing.f.a;

final class d
{
  final int a;
  final int b;
  final int c;
  final int d;
  int e = -1;

  d(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramInt4;
  }

  final boolean a()
  {
    return a(this.e);
  }

  final boolean a(int paramInt)
  {
    return (paramInt != -1) && (this.c == paramInt % 3 * 3);
  }

  final void b()
  {
    this.e = (this.d / 30 * 3 + this.c / 3);
  }

  final int c()
  {
    return this.b - this.a;
  }

  public final String toString()
  {
    return this.e + "|" + this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.d
 * JD-Core Version:    0.6.2
 */