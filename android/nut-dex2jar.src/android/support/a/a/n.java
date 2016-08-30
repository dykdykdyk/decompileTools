package android.support.a.a;

import android.graphics.Matrix;
import android.support.v4.f.a;
import java.util.ArrayList;

final class n
{
  final Matrix a = new Matrix();
  final ArrayList<Object> b = new ArrayList();
  float c = 0.0F;
  float d = 0.0F;
  float e = 0.0F;
  float f = 1.0F;
  float g = 1.0F;
  float h = 0.0F;
  float i = 0.0F;
  final Matrix j = new Matrix();
  int k;
  int[] l;
  String m = null;

  public n()
  {
  }

  public n(n paramn, a<String, Object> parama)
  {
    this.c = paramn.c;
    this.d = paramn.d;
    this.e = paramn.e;
    this.f = paramn.f;
    this.g = paramn.g;
    this.h = paramn.h;
    this.i = paramn.i;
    this.l = paramn.l;
    this.m = paramn.m;
    this.k = paramn.k;
    if (this.m != null)
      parama.put(this.m, this);
    this.j.set(paramn.j);
    ArrayList localArrayList = paramn.b;
    int n = 0;
    while (n < localArrayList.size())
    {
      paramn = localArrayList.get(n);
      if ((paramn instanceof n))
      {
        paramn = (n)paramn;
        this.b.add(new n(paramn, parama));
        n += 1;
      }
      else
      {
        if ((paramn instanceof m));
        for (paramn = new m((m)paramn); ; paramn = new l((l)paramn))
        {
          this.b.add(paramn);
          if (paramn.n == null)
            break;
          parama.put(paramn.n, paramn);
          break;
          if (!(paramn instanceof l))
            break label315;
        }
        label315: throw new IllegalStateException("Unknown object in the tree!");
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.n
 * JD-Core Version:    0.6.2
 */