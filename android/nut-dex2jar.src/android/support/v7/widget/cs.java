package android.support.v7.widget;

import android.view.View;
import java.util.List;

final class cs
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  boolean i = false;
  int j;
  List<er> k = null;
  boolean l;

  final View a(ei paramei)
  {
    if (this.k != null)
    {
      int n = this.k.size();
      int m = 0;
      while (m < n)
      {
        paramei = ((er)this.k.get(m)).a;
        ee localee = (ee)paramei.getLayoutParams();
        if ((!localee.c.m()) && (this.d == localee.c.c()))
        {
          a(paramei);
          return paramei;
        }
        m += 1;
      }
      return null;
    }
    paramei = paramei.b(this.d);
    this.d += this.e;
    return paramei;
  }

  public final void a(View paramView)
  {
    int i2 = this.k.size();
    Object localObject = null;
    int m = 2147483647;
    int n = 0;
    if (n < i2)
    {
      View localView = ((er)this.k.get(n)).a;
      ee localee = (ee)localView.getLayoutParams();
      if ((localView == paramView) || (localee.c.m()))
        break label154;
      int i1 = (localee.c.c() - this.d) * this.e;
      if ((i1 < 0) || (i1 >= m))
        break label154;
      localObject = localView;
      if (i1 != 0)
      {
        localObject = localView;
        m = i1;
      }
    }
    label154: 
    while (true)
    {
      n += 1;
      break;
      if (localObject == null)
      {
        this.d = -1;
        return;
      }
      this.d = ((ee)localObject.getLayoutParams()).c.c();
      return;
    }
  }

  final boolean a(eo parameo)
  {
    return (this.d >= 0) && (this.d < parameo.a());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cs
 * JD-Core Version:    0.6.2
 */