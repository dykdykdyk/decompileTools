package com.amap.api.mapcore2d;

class cj extends h
{
  private ab c;
  private ab d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private ck l;

  public cj(int paramInt1, int paramInt2, ab paramab1, ab paramab2, int paramInt3, ck paramck)
  {
    super(paramInt1, paramInt2);
    this.c = paramab1;
    this.d = paramab2;
    this.e = ((int)this.c.e());
    this.f = ((int)this.c.f());
    this.l = paramck;
    this.i = ((int)Math.abs(paramab2.e() - this.c.e()));
    this.j = ((int)Math.abs(paramab2.f() - this.c.f()));
    a(paramInt3);
  }

  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 > paramInt1)
    {
      paramInt3 = paramInt1 + paramInt3;
      paramInt1 = paramInt3;
      if (paramInt3 >= paramInt2)
      {
        this.k = 0;
        return paramInt2;
      }
    }
    else
    {
      paramInt3 = paramInt1 - paramInt3;
      paramInt1 = paramInt3;
      if (paramInt3 <= paramInt2)
      {
        this.k = 0;
        return paramInt2;
      }
    }
    return paramInt1;
  }

  private void a(int paramInt)
  {
    int m = 2;
    paramInt = paramInt / 10 / 10;
    if (paramInt < 2)
      paramInt = m;
    while (true)
    {
      this.g = (this.i / paramInt);
      this.h = (this.j / paramInt);
      return;
    }
  }

  protected void a()
  {
    int m = (int)this.d.e();
    int n = (int)this.d.f();
    if (!e())
    {
      this.e = m;
      this.f = n;
      this.l.a(new ab(this.f, this.e, false));
    }
    do
    {
      return;
      this.k += 1;
      this.e = a(this.e, m, this.g);
      this.f = a(this.f, n, this.h);
      this.l.a(new ab(this.f, this.e, false));
    }
    while ((this.e != m) || (this.f != n));
    a(false);
    f();
  }

  protected void b()
  {
    this.l.b();
    q.a().b();
  }

  protected void f()
  {
    bw.a().b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cj
 * JD-Core Version:    0.6.2
 */