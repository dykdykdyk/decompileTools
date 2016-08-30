package android.support.v7.widget;

import android.support.v4.os.e;
import android.support.v4.view.bl;
import android.support.v4.widget.ai;
import android.support.v4.widget.aj;
import android.support.v4.widget.o;
import android.view.animation.Interpolator;
import java.util.ArrayList;

final class eq
  implements Runnable
{
  int a;
  int b;
  ai c;
  private Interpolator e = RecyclerView.h();
  private boolean f = false;
  private boolean g = false;

  public eq(RecyclerView paramRecyclerView)
  {
    this.c = ai.a(paramRecyclerView.getContext(), RecyclerView.h());
  }

  final void a()
  {
    if (this.f)
    {
      this.g = true;
      return;
    }
    this.d.removeCallbacks(this);
    bl.a(this.d, this);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n;
    int i1;
    if (k > m)
    {
      j = 1;
      n = (int)Math.sqrt(0.0D);
      i1 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (j == 0)
        break label155;
    }
    label155: for (int i = this.d.getWidth(); ; i = this.d.getHeight())
    {
      int i2 = i / 2;
      float f3 = Math.min(1.0F, i1 * 1.0F / i);
      float f1 = i2;
      float f2 = i2;
      f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.47123891676382D));
      if (n <= 0)
        break label167;
      i = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / n)) * 4;
      a(paramInt1, paramInt2, Math.min(i, 2000));
      return;
      j = 0;
      break;
    }
    label167: if (j != 0);
    for (int j = k; ; j = m)
    {
      i = (int)((j / i + 1.0F) * 300.0F);
      break;
    }
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, RecyclerView.h());
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (this.e != paramInterpolator)
    {
      this.e = paramInterpolator;
      this.c = ai.a(this.d.getContext(), paramInterpolator);
    }
    RecyclerView.b(this.d, 2);
    this.b = 0;
    this.a = 0;
    paramInterpolator = this.c;
    paramInterpolator.b.b(paramInterpolator.a, paramInt1, paramInt2, paramInt3);
    a();
  }

  public final void b()
  {
    this.d.removeCallbacks(this);
    this.c.g();
  }

  public final void run()
  {
    if (this.d.f == null)
    {
      b();
      return;
    }
    this.g = false;
    this.f = true;
    RecyclerView.d(this.d);
    ai localai = this.c;
    em localem = this.d.f.s;
    int i6;
    int i7;
    int i4;
    int i5;
    int i1;
    int i;
    int m;
    int i3;
    int j;
    int n;
    int k;
    if (localai.f())
    {
      i6 = localai.b();
      i7 = localai.c();
      i4 = i6 - this.a;
      i5 = i7 - this.b;
      i1 = 0;
      i = 0;
      i2 = 0;
      m = 0;
      this.a = i6;
      this.b = i7;
      i3 = 0;
      j = 0;
      n = 0;
      k = 0;
      if (RecyclerView.h(this.d) == null)
        break label764;
      this.d.a();
      RecyclerView.i(this.d);
      e.a("RV Scroll");
      if (i4 != 0)
      {
        i = this.d.f.a(i4, this.d.b, this.d.p);
        j = i4 - i;
      }
      if (i5 != 0)
      {
        m = this.d.f.b(i5, this.d.b, this.d.p);
        k = i5 - m;
      }
      e.a();
      RecyclerView.j(this.d);
      RecyclerView.k(this.d);
      this.d.a(false);
      n = k;
      i2 = m;
      i3 = j;
      i1 = i;
      if (localem == null)
        break label764;
      n = k;
      i2 = m;
      i3 = j;
      i1 = i;
      if (localem.b)
        break label764;
      n = k;
      i2 = m;
      i3 = j;
      i1 = i;
      if (!localem.c)
        break label764;
      n = this.d.p.a();
      if (n != 0)
        break label727;
      localem.a();
      i1 = i;
      label338: if (!RecyclerView.l(this.d).isEmpty())
        this.d.invalidate();
      if (bl.a(this.d) != 2)
        RecyclerView.a(this.d, i4, i5);
      if ((j != 0) || (k != 0))
      {
        n = (int)localai.e();
        if (j == i6)
          break label877;
        if (j >= 0)
          break label777;
        i = -n;
      }
    }
    label410: label427: label466: label486: label877: for (int i2 = i; ; i2 = 0)
    {
      if (k != i7)
        if (k < 0)
          i = -n;
      while (true)
      {
        RecyclerView localRecyclerView;
        if (bl.a(this.d) != 2)
        {
          localRecyclerView = this.d;
          if (i2 >= 0)
            break label804;
          localRecyclerView.b();
          localRecyclerView.j.a(-i2);
          if (i >= 0)
            break label828;
          localRecyclerView.d();
          localRecyclerView.k.a(-i);
          if ((i2 != 0) || (i != 0))
            bl.d(localRecyclerView);
        }
        if (((i2 != 0) || (j == i6) || (localai.b.g(localai.a) == 0)) && ((i != 0) || (k == i7) || (localai.d() == 0)))
          localai.g();
        if ((i1 != 0) || (m != 0))
          this.d.g();
        if (!RecyclerView.m(this.d))
          this.d.invalidate();
        if ((i5 != 0) && (this.d.f.f()) && (m == i5))
        {
          i = 1;
          if ((i4 == 0) || (!this.d.f.e()) || (i1 != i4))
            break label855;
          j = 1;
          if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0))
            break label860;
          i = 1;
          if ((!localai.a()) && (i != 0))
            break label865;
          RecyclerView.b(this.d, 0);
        }
        while (true)
        {
          if (localem != null)
          {
            if (localem.b)
              em.a(localem);
            if (!this.g)
              localem.a();
          }
          this.f = false;
          if (!this.g)
            break;
          a();
          return;
          if (localem.a >= n)
            localem.a = (n - 1);
          em.a(localem);
          i1 = i;
          i3 = j;
          i2 = m;
          n = k;
          label764: m = i2;
          j = i3;
          k = n;
          break label338;
          if (j > 0)
          {
            i = n;
            break label410;
          }
          i = 0;
          break label410;
          i = n;
          if (k > 0)
            break label427;
          i = 0;
          break label427;
          if (i2 <= 0)
            break label466;
          localRecyclerView.c();
          localRecyclerView.l.a(i2);
          break label466;
          if (i <= 0)
            break label486;
          localRecyclerView.e();
          localRecyclerView.m.a(i);
          break label486;
          i = 0;
          break label613;
          j = 0;
          break label640;
          i = 0;
          break label660;
          a();
        }
        i = 0;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.eq
 * JD-Core Version:    0.6.2
 */