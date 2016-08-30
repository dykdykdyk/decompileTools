package u.aly;

import com.umeng.analytics.j;
import com.umeng.analytics.k;
import com.umeng.analytics.l;
import com.umeng.analytics.m;
import com.umeng.analytics.n;
import com.umeng.analytics.o;
import com.umeng.analytics.p;

public final class g
{
  n a;
  int b = -1;
  int c = -1;
  int d = -1;
  int e = -1;

  public g(e parame)
  {
    parame = parame.e.b();
    this.b = parame[0];
    this.c = parame[1];
  }

  final n a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 2:
    case 3:
    case 7:
    default:
      if ((this.a instanceof j))
        return this.a;
      break;
    case 1:
      if ((this.a instanceof j))
        return this.a;
      return new j();
    case 6:
      if ((this.a instanceof k))
      {
        n localn = this.a;
        ((k)localn).a(paramInt2);
        return localn;
      }
      return new k(this.f.a, paramInt2);
    case 4:
      if ((this.a instanceof l))
        return this.a;
      return new l(this.f.a);
    case 0:
      if ((this.a instanceof m))
        return this.a;
      return new m();
    case 5:
      if ((this.a instanceof o))
        return this.a;
      return new o(e.f);
    case 8:
      if ((this.a instanceof p))
        return this.a;
      return new p(this.f.a);
    }
    return new j();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.g
 * JD-Core Version:    0.6.2
 */