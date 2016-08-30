package a;

final class y
{
  static x a;
  static long b;

  static x a()
  {
    try
    {
      if (a != null)
      {
        x localx = a;
        a = localx.f;
        localx.f = null;
        b -= 2048L;
        return localx;
      }
      return new x();
    }
    finally
    {
    }
  }

  static void a(x paramx)
  {
    if ((paramx.f != null) || (paramx.g != null))
      throw new IllegalArgumentException();
    if (paramx.d)
      return;
    try
    {
      if (b + 2048L > 65536L)
        return;
    }
    finally
    {
    }
    b += 2048L;
    paramx.f = a;
    paramx.c = 0;
    paramx.b = 0;
    a = paramx;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.y
 * JD-Core Version:    0.6.2
 */