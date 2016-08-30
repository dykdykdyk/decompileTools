package com.google.zxing.f.a;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.b;
import com.google.zxing.o;

final class c
{
  b a;
  o b;
  o c;
  o d;
  o e;
  int f;
  int g;
  int h;
  int i;

  c(b paramb, o paramo1, o paramo2, o paramo3, o paramo4)
    throws NotFoundException
  {
    if (((paramo1 == null) && (paramo3 == null)) || ((paramo2 == null) && (paramo4 == null)) || ((paramo1 != null) && (paramo2 == null)) || ((paramo3 != null) && (paramo4 == null)))
      throw NotFoundException.a();
    a(paramb, paramo1, paramo2, paramo3, paramo4);
  }

  c(c paramc)
  {
    a(paramc.a, paramc.b, paramc.c, paramc.d, paramc.e);
  }

  private void a(b paramb, o paramo1, o paramo2, o paramo3, o paramo4)
  {
    this.a = paramb;
    this.b = paramo1;
    this.c = paramo2;
    this.d = paramo3;
    this.e = paramo4;
    a();
  }

  final void a()
  {
    if (this.b == null)
    {
      this.b = new o(0.0F, this.d.b);
      this.c = new o(0.0F, this.e.b);
    }
    while (true)
    {
      this.f = ((int)Math.min(this.b.a, this.c.a));
      this.g = ((int)Math.max(this.d.a, this.e.a));
      this.h = ((int)Math.min(this.b.b, this.d.b));
      this.i = ((int)Math.max(this.c.b, this.e.b));
      return;
      if (this.d == null)
      {
        this.d = new o(this.a.a - 1, this.b.b);
        this.e = new o(this.a.a - 1, this.c.b);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.c
 * JD-Core Version:    0.6.2
 */