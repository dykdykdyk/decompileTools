package a;

final class x
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  x f;
  x g;

  x()
  {
    this.a = new byte[2048];
    this.e = true;
    this.d = false;
  }

  x(x paramx)
  {
    this(paramx.a, paramx.b, paramx.c);
    paramx.d = true;
  }

  private x(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.e = false;
    this.d = true;
  }

  public final x a()
  {
    if (this.f != this);
    for (x localx = this.f; ; localx = null)
    {
      this.g.f = this.f;
      this.f.g = this.g;
      this.f = null;
      this.g = null;
      return localx;
    }
  }

  public final x a(x paramx)
  {
    paramx.g = this;
    paramx.f = this.f;
    this.f.g = paramx;
    this.f = paramx;
    return paramx;
  }

  public final void a(x paramx, int paramInt)
  {
    if (!paramx.e)
      throw new IllegalArgumentException();
    if (paramx.c + paramInt > 2048)
    {
      if (paramx.d)
        throw new IllegalArgumentException();
      if (paramx.c + paramInt - paramx.b > 2048)
        throw new IllegalArgumentException();
      System.arraycopy(paramx.a, paramx.b, paramx.a, 0, paramx.c - paramx.b);
      paramx.c -= paramx.b;
      paramx.b = 0;
    }
    System.arraycopy(this.a, this.b, paramx.a, paramx.c, paramInt);
    paramx.c += paramInt;
    this.b += paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.x
 * JD-Core Version:    0.6.2
 */