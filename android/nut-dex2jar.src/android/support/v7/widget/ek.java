package android.support.v7.widget;

import android.support.v4.view.bl;
import java.util.ArrayList;

final class ek extends dv
{
  private ek(RecyclerView paramRecyclerView)
  {
  }

  private void b()
  {
    if ((RecyclerView.o(this.a)) && (RecyclerView.p(this.a)) && (RecyclerView.q(this.a)))
    {
      bl.a(this.a, RecyclerView.r(this.a));
      return;
    }
    RecyclerView.s(this.a);
    this.a.requestLayout();
  }

  public final void a()
  {
    this.a.a(null);
    RecyclerView.h(this.a);
    this.a.p.f = true;
    RecyclerView.n(this.a);
    if (!this.a.c.d())
      this.a.requestLayout();
  }

  public final void a(int paramInt)
  {
    int i = 1;
    this.a.a(null);
    af localaf = this.a.c;
    localaf.a.add(localaf.a(4, paramInt, 1, null));
    localaf.g |= 4;
    if (localaf.a.size() == 1);
    for (paramInt = i; ; paramInt = 0)
    {
      if (paramInt != 0)
        b();
      return;
    }
  }

  public final void b(int paramInt)
  {
    int i = 1;
    this.a.a(null);
    af localaf = this.a.c;
    localaf.a.add(localaf.a(1, paramInt, 1, null));
    localaf.g |= 1;
    if (localaf.a.size() == 1);
    for (paramInt = i; ; paramInt = 0)
    {
      if (paramInt != 0)
        b();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ek
 * JD-Core Version:    0.6.2
 */