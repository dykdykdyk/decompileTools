package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

final class fm
{
  ArrayList<View> a = new ArrayList();
  int b = -2147483648;
  int c = -2147483648;
  int d = 0;
  final int e;

  private fm(StaggeredGridLayoutManager paramStaggeredGridLayoutManager, int paramInt)
  {
    this.e = paramInt;
  }

  private void f()
  {
    Object localObject = (View)this.a.get(0);
    fj localfj = (fj)((View)localObject).getLayoutParams();
    this.b = this.f.a.a((View)localObject);
    if (localfj.b)
    {
      localObject = this.f.f.d(localfj.c.c());
      if ((localObject != null) && (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).b == -1))
        this.b -= ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(this.e);
    }
  }

  private void g()
  {
    Object localObject = (View)this.a.get(this.a.size() - 1);
    fj localfj = (fj)((View)localObject).getLayoutParams();
    this.c = this.f.a.b((View)localObject);
    if (localfj.b)
    {
      localObject = this.f.f.d(localfj.c.c());
      if ((localObject != null) && (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).b == 1))
      {
        int i = this.c;
        this.c = (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(this.e) + i);
      }
    }
  }

  final int a()
  {
    if (this.b != -2147483648)
      return this.b;
    f();
    return this.b;
  }

  final int a(int paramInt)
  {
    if (this.b != -2147483648)
      paramInt = this.b;
    while (this.a.size() == 0)
      return paramInt;
    f();
    return this.b;
  }

  public final View a(int paramInt1, int paramInt2)
  {
    View localView2 = null;
    View localView1 = null;
    int i;
    if (paramInt2 == -1)
    {
      i = this.a.size();
      paramInt2 = 0;
      if (paramInt2 < i)
      {
        localView2 = (View)this.a.get(paramInt2);
        if (localView2.isFocusable())
        {
          if (StaggeredGridLayoutManager.a(localView2) > paramInt1);
          for (int k = 1; ; k = 0)
          {
            if (k != StaggeredGridLayoutManager.b(this.f))
              break label88;
            paramInt2 += 1;
            localView1 = localView2;
            break;
          }
        }
      }
      label88: return localView1;
    }
    paramInt2 = this.a.size() - 1;
    localView1 = localView2;
    if (paramInt2 >= 0)
    {
      localView2 = (View)this.a.get(paramInt2);
      if (localView2.isFocusable())
      {
        if (StaggeredGridLayoutManager.a(localView2) > paramInt1)
        {
          i = 1;
          label141: if (StaggeredGridLayoutManager.b(this.f))
            break label176;
        }
        label176: for (int j = 1; ; j = 0)
        {
          if (i != j)
            break label182;
          localView1 = localView2;
          paramInt2 -= 1;
          break;
          i = 0;
          break label141;
        }
      }
    }
    label182: return localView1;
  }

  final void a(View paramView)
  {
    fj localfj = (fj)paramView.getLayoutParams();
    localfj.a = this;
    this.a.add(0, paramView);
    this.b = -2147483648;
    if (this.a.size() == 1)
      this.c = -2147483648;
    if ((localfj.c.m()) || (localfj.c.s()))
      this.d += this.f.a.c(paramView);
  }

  final int b()
  {
    if (this.c != -2147483648)
      return this.c;
    g();
    return this.c;
  }

  final int b(int paramInt)
  {
    if (this.c != -2147483648)
      paramInt = this.c;
    while (this.a.size() == 0)
      return paramInt;
    g();
    return this.c;
  }

  final void b(View paramView)
  {
    fj localfj = (fj)paramView.getLayoutParams();
    localfj.a = this;
    this.a.add(paramView);
    this.c = -2147483648;
    if (this.a.size() == 1)
      this.b = -2147483648;
    if ((localfj.c.m()) || (localfj.c.s()))
      this.d += this.f.a.c(paramView);
  }

  final void c()
  {
    this.a.clear();
    this.b = -2147483648;
    this.c = -2147483648;
    this.d = 0;
  }

  final void c(int paramInt)
  {
    this.b = paramInt;
    this.c = paramInt;
  }

  final void d()
  {
    int i = this.a.size();
    View localView = (View)this.a.remove(i - 1);
    fj localfj = (fj)localView.getLayoutParams();
    localfj.a = null;
    if ((localfj.c.m()) || (localfj.c.s()))
      this.d -= this.f.a.c(localView);
    if (i == 1)
      this.b = -2147483648;
    this.c = -2147483648;
  }

  final void d(int paramInt)
  {
    if (this.b != -2147483648)
      this.b += paramInt;
    if (this.c != -2147483648)
      this.c += paramInt;
  }

  final void e()
  {
    View localView = (View)this.a.remove(0);
    fj localfj = (fj)localView.getLayoutParams();
    localfj.a = null;
    if (this.a.size() == 0)
      this.c = -2147483648;
    if ((localfj.c.m()) || (localfj.c.s()))
      this.d -= this.f.a.c(localView);
    this.b = -2147483648;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fm
 * JD-Core Version:    0.6.2
 */