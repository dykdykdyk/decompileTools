package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.support.v4.view.a.f;
import android.support.v4.view.a.j;
import android.support.v4.view.a.p;
import android.support.v4.view.bl;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class es extends a
{
  final RecyclerView b;
  final a c = new et(this);

  public es(RecyclerView paramRecyclerView)
  {
    this.b = paramRecyclerView;
  }

  public final void a(View paramView, f paramf)
  {
    super.a(paramView, paramf);
    paramf.a(RecyclerView.class.getName());
    if ((!a()) && (this.b.getLayoutManager() != null))
    {
      paramView = this.b.getLayoutManager();
      ei localei = paramView.r.b;
      eo localeo = paramView.r.p;
      if ((bl.b(paramView.r, -1)) || (bl.a(paramView.r, -1)))
      {
        paramf.a(8192);
        paramf.a(true);
      }
      if ((bl.b(paramView.r, 1)) || (bl.a(paramView.r, 1)))
      {
        paramf.a(4096);
        paramf.a(true);
      }
      int i = paramView.a(localei, localeo);
      int j = paramView.b(localei, localeo);
      paramView = new p(f.a().a(i, j));
      f.a.a(paramf.b, ((p)paramView).a);
    }
  }

  final boolean a()
  {
    RecyclerView localRecyclerView = this.b;
    return (!localRecyclerView.g) || (localRecyclerView.i) || (localRecyclerView.c.d());
  }

  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool2 = false;
    boolean bool1;
    if (super.a(paramView, paramInt, paramBundle))
      bool1 = true;
    int i;
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          }
          while (a());
          bool1 = bool2;
        }
        while (this.b.getLayoutManager() == null);
        paramView = this.b.getLayoutManager();
        paramBundle = paramView.r.b;
        paramBundle = paramView.r.p;
        bool1 = bool2;
      }
      while (paramView.r == null);
      switch (paramInt)
      {
      default:
        paramInt = 0;
        i = 0;
        if (i != 0)
          break label126;
        bool1 = bool2;
      case 8192:
      case 4096:
      }
    }
    while (paramInt == 0);
    label126: paramView.r.scrollBy(paramInt, i);
    return true;
    if (bl.b(paramView.r, -1));
    for (paramInt = -(paramView.A - paramView.n() - paramView.p()); ; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (bl.a(paramView.r, -1))
      {
        j = -(paramView.z - paramView.m() - paramView.o());
        i = paramInt;
        paramInt = j;
        break;
        if (!bl.b(paramView.r, 1))
          break label283;
      }
      label283: for (paramInt = paramView.A - paramView.n() - paramView.p(); ; paramInt = 0)
      {
        i = paramInt;
        if (bl.a(paramView.r, 1))
        {
          j = paramView.z;
          int k = paramView.m();
          int m = paramView.o();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }

  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!a()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null)
        paramView.getLayoutManager().a(paramAccessibilityEvent);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.es
 * JD-Core Version:    0.6.2
 */