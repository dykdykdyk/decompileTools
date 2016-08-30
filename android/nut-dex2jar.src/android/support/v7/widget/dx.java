package android.support.v7.widget;

import java.util.ArrayList;
import java.util.List;

public abstract class dx
{
  private ArrayList<Object> a = new ArrayList();
  dy h = null;
  long i = 120L;
  long j = 120L;
  long k = 250L;
  long l = 250L;

  static int d(er paramer)
  {
    int n = er.h(paramer) & 0xE;
    int m;
    if (paramer.j())
      m = 4;
    int i1;
    int i2;
    do
    {
      do
      {
        do
        {
          do
          {
            return m;
            m = n;
          }
          while ((n & 0x4) != 0);
          i1 = paramer.c;
          i2 = paramer.d();
          m = n;
        }
        while (i1 == -1);
        m = n;
      }
      while (i2 == -1);
      m = n;
    }
    while (i1 == i2);
    return n | 0x800;
  }

  public abstract void a();

  public abstract boolean a(er paramer, dz paramdz1, dz paramdz2);

  public abstract boolean a(er paramer1, er paramer2, dz paramdz1, dz paramdz2);

  public boolean a(er paramer, List<Object> paramList)
  {
    return f(paramer);
  }

  public abstract boolean b();

  public abstract boolean b(er paramer, dz paramdz1, dz paramdz2);

  public abstract void c(er paramer);

  public abstract boolean c(er paramer, dz paramdz1, dz paramdz2);

  public abstract void d();

  public final void e()
  {
    int n = this.a.size();
    int m = 0;
    while (m < n)
    {
      this.a.get(m);
      m += 1;
    }
    this.a.clear();
  }

  public final void e(er paramer)
  {
    if (this.h != null)
      this.h.a(paramer);
  }

  public boolean f(er paramer)
  {
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dx
 * JD-Core Version:    0.6.2
 */