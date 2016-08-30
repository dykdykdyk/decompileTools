package android.support.v7.widget;

import android.view.View;

public abstract class fg extends dx
{
  boolean m = true;

  public abstract boolean a(er paramer);

  public abstract boolean a(er paramer, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public final boolean a(er paramer, dz paramdz1, dz paramdz2)
  {
    int k = paramdz1.a;
    int n = paramdz1.b;
    paramdz1 = paramer.a;
    int i;
    if (paramdz2 == null)
    {
      i = paramdz1.getLeft();
      if (paramdz2 != null)
        break label103;
    }
    label103: for (int j = paramdz1.getTop(); ; j = paramdz2.b)
    {
      if ((paramer.m()) || ((k == i) && (n == j)))
        break label112;
      paramdz1.layout(i, j, paramdz1.getWidth() + i, paramdz1.getHeight() + j);
      return a(paramer, k, n, i, j);
      i = paramdz2.a;
      break;
    }
    label112: return a(paramer);
  }

  public abstract boolean a(er paramer1, er paramer2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public final boolean a(er paramer1, er paramer2, dz paramdz1, dz paramdz2)
  {
    int k = paramdz1.a;
    int n = paramdz1.b;
    int i;
    if (paramer2.b())
      i = paramdz1.a;
    for (int j = paramdz1.b; ; j = paramdz2.b)
    {
      return a(paramer1, paramer2, k, n, i, j);
      i = paramdz2.a;
    }
  }

  public abstract boolean b(er paramer);

  public final boolean b(er paramer, dz paramdz1, dz paramdz2)
  {
    if ((paramdz1 != null) && ((paramdz1.a != paramdz2.a) || (paramdz1.b != paramdz2.b)))
      return a(paramer, paramdz1.a, paramdz1.b, paramdz2.a, paramdz2.b);
    return b(paramer);
  }

  public final boolean c(er paramer, dz paramdz1, dz paramdz2)
  {
    if ((paramdz1.a != paramdz2.a) || (paramdz1.b != paramdz2.b))
      return a(paramer, paramdz1.a, paramdz1.b, paramdz2.a, paramdz2.b);
    e(paramer);
    return false;
  }

  public final boolean f(er paramer)
  {
    return (!this.m) || (paramer.j());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fg
 * JD-Core Version:    0.6.2
 */