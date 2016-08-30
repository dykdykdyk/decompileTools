package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

final class dr
  implements br
{
  dr(RecyclerView paramRecyclerView)
  {
  }

  public final int a()
  {
    return this.a.getChildCount();
  }

  public final int a(View paramView)
  {
    return this.a.indexOfChild(paramView);
  }

  public final void a(int paramInt)
  {
    View localView = this.a.getChildAt(paramInt);
    if (localView != null)
      RecyclerView.b(this.a, localView);
    this.a.removeViewAt(paramInt);
  }

  public final void a(View paramView, int paramInt)
  {
    this.a.addView(paramView, paramInt);
    RecyclerView.a(this.a, paramView);
  }

  public final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    er localer = RecyclerView.b(paramView);
    if (localer != null)
    {
      if ((!localer.n()) && (!localer.b()))
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localer);
      localer.i();
    }
    RecyclerView.a(this.a, paramView, paramInt, paramLayoutParams);
  }

  public final er b(View paramView)
  {
    return RecyclerView.b(paramView);
  }

  public final View b(int paramInt)
  {
    return this.a.getChildAt(paramInt);
  }

  public final void b()
  {
    int j = this.a.getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.b(this.a, b(i));
      i += 1;
    }
    this.a.removeAllViews();
  }

  public final void c(int paramInt)
  {
    Object localObject = b(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.b((View)localObject);
      if (localObject != null)
      {
        if ((((er)localObject).n()) && (!((er)localObject).b()))
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        ((er)localObject).b(256);
      }
    }
    RecyclerView.a(this.a, paramInt);
  }

  public final void c(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if (paramView != null)
      er.a(paramView);
  }

  public final void d(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if (paramView != null)
      er.b(paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dr
 * JD-Core Version:    0.6.2
 */