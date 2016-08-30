package android.support.v7.widget;

import android.content.Context;
import android.support.v7.view.d;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.x;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import java.util.ArrayList;

final class fx
  implements x
{
  i a;
  m b;

  private fx(Toolbar paramToolbar)
  {
  }

  public final void a(Context paramContext, i parami)
  {
    if ((this.a != null) && (this.b != null))
      this.a.b(this.b);
    this.a = parami;
  }

  public final void a(i parami, boolean paramBoolean)
  {
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(ad paramad)
  {
    return false;
  }

  public final void b(boolean paramBoolean)
  {
    int k = 0;
    int j;
    int m;
    int i;
    if (this.b != null)
    {
      j = k;
      if (this.a != null)
      {
        m = this.a.size();
        i = 0;
      }
    }
    while (true)
    {
      j = k;
      if (i < m)
      {
        if (this.a.getItem(i) == this.b)
          j = 1;
      }
      else
      {
        if (j == 0)
          c(this.b);
        return;
      }
      i += 1;
    }
  }

  public final boolean b(m paramm)
  {
    Toolbar.b(this.c);
    if (Toolbar.c(this.c).getParent() != this.c)
      this.c.addView(Toolbar.c(this.c));
    this.c.d = paramm.getActionView();
    this.b = paramm;
    if (this.c.d.getParent() != this.c)
    {
      localObject = Toolbar.e();
      ((fy)localObject).a = (0x800003 | Toolbar.d(this.c) & 0x70);
      ((fy)localObject).b = 2;
      this.c.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.c.addView(this.c.d);
    }
    Object localObject = this.c;
    int i = ((Toolbar)localObject).getChildCount() - 1;
    while (i >= 0)
    {
      View localView = ((Toolbar)localObject).getChildAt(i);
      if ((((fy)localView.getLayoutParams()).b != 2) && (localView != ((Toolbar)localObject).a))
      {
        ((Toolbar)localObject).removeViewAt(i);
        ((Toolbar)localObject).j.add(localView);
      }
      i -= 1;
    }
    this.c.requestLayout();
    paramm.d(true);
    if ((this.c.d instanceof d))
      ((d)this.c.d).a();
    return true;
  }

  public final boolean c(m paramm)
  {
    if ((this.c.d instanceof d))
      ((d)this.c.d).b();
    this.c.removeView(this.c.d);
    this.c.removeView(Toolbar.c(this.c));
    this.c.d = null;
    Toolbar localToolbar = this.c;
    int i = localToolbar.j.size() - 1;
    while (i >= 0)
    {
      localToolbar.addView((View)localToolbar.j.get(i));
      i -= 1;
    }
    localToolbar.j.clear();
    this.b = null;
    this.c.requestLayout();
    paramm.d(false);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fx
 * JD-Core Version:    0.6.2
 */