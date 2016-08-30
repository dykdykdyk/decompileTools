package rx.c.c;

public final class c
{
  final int a;
  final d[] b;
  long c;

  c(int paramInt)
  {
    this.a = paramInt;
    this.b = new d[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      this.b[i] = new d(a.b);
      i += 1;
    }
  }

  public final d a()
  {
    int i = this.a;
    if (i == 0)
      return a.d;
    d[] arrayOfd = this.b;
    long l = this.c;
    this.c = (1L + l);
    return arrayOfd[((int)(l % i))];
  }

  public final void b()
  {
    d[] arrayOfd = this.b;
    int j = arrayOfd.length;
    int i = 0;
    while (i < j)
    {
      arrayOfd[i].n_();
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.c
 * JD-Core Version:    0.6.2
 */