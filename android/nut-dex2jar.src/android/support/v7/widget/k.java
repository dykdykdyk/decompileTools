package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.cc;
import android.support.v7.b.h;
import android.support.v7.view.a;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.aa;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.d;
import android.support.v7.view.menu.v;
import android.support.v7.view.menu.z;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.util.ArrayList;

final class k extends d
  implements android.support.v4.view.o
{
  private final SparseBooleanArray A = new SparseBooleanArray();
  private View B;
  private m C;
  o i;
  Drawable j;
  boolean k;
  int l;
  boolean m;
  boolean n;
  q o;
  l p;
  n q;
  final r r = new r(this, (byte)0);
  int s;
  private boolean t;
  private boolean u;
  private int v;
  private int w;
  private boolean x;
  private boolean y;
  private int z;

  public k(Context paramContext)
  {
    super(paramContext, android.support.v7.b.i.abc_action_menu_layout, android.support.v7.b.i.abc_action_menu_item_layout);
  }

  public final z a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((ActionMenuView)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }

  public final View a(android.support.v7.view.menu.m paramm, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramm.getActionView();
    if ((localView == null) || (paramm.i()))
      localView = super.a(paramm, paramView, paramViewGroup);
    if (paramm.isActionViewExpanded());
    for (int i1 = 8; ; i1 = 0)
    {
      localView.setVisibility(i1);
      paramm = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramm.checkLayoutParams(paramView))
        localView.setLayoutParams(ActionMenuView.a(paramView));
      return localView;
    }
  }

  public final void a(Context paramContext, android.support.v7.view.menu.i parami)
  {
    boolean bool = true;
    super.a(paramContext, parami);
    parami = paramContext.getResources();
    paramContext = a.a(paramContext);
    int i1;
    if (!this.u)
    {
      if (Build.VERSION.SDK_INT >= 19)
        this.t = bool;
    }
    else
    {
      if (!this.y)
        this.v = (paramContext.a.getResources().getDisplayMetrics().widthPixels / 2);
      if (!this.m)
        this.l = paramContext.a.getResources().getInteger(h.abc_max_action_buttons);
      i1 = this.v;
      if (!this.t)
        break label226;
      if (this.i == null)
      {
        this.i = new o(this, this.a);
        if (this.k)
        {
          this.i.setImageDrawable(this.j);
          this.j = null;
          this.k = false;
        }
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.i.measure(i2, i2);
      }
      i1 -= this.i.getMeasuredWidth();
    }
    while (true)
    {
      this.w = i1;
      this.z = ((int)(56.0F * parami.getDisplayMetrics().density));
      this.B = null;
      return;
      if (!cc.b(ViewConfiguration.get(paramContext.a)))
        break;
      bool = false;
      break;
      label226: this.i = null;
    }
  }

  public final void a(android.support.v7.view.menu.i parami, boolean paramBoolean)
  {
    e();
    super.a(parami, paramBoolean);
  }

  public final void a(android.support.v7.view.menu.m paramm, aa paramaa)
  {
    paramaa.a(paramm);
    paramm = (ActionMenuView)this.g;
    paramaa = (ActionMenuItemView)paramaa;
    paramaa.setItemInvoker(paramm);
    if (this.C == null)
      this.C = new m(this, (byte)0);
    paramaa.setPopupCallback(this.C);
  }

  public final void a(ActionMenuView paramActionMenuView)
  {
    this.g = paramActionMenuView;
    paramActionMenuView.a = this.c;
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    this.c.a(false);
  }

  public final boolean a()
  {
    ArrayList localArrayList = this.c.h();
    int i9 = localArrayList.size();
    int i1 = this.l;
    int i8 = this.w;
    int i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)this.g;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i2 = 0;
    Object localObject1;
    if (i2 < i9)
    {
      localObject1 = (android.support.v7.view.menu.m)localArrayList.get(i2);
      if (((android.support.v7.view.menu.m)localObject1).h())
      {
        i3 += 1;
        label82: if ((!this.n) || (!((android.support.v7.view.menu.m)localObject1).isActionViewExpanded()))
          break label810;
        i1 = 0;
      }
    }
    label519: label648: label788: label799: label810: 
    while (true)
    {
      i2 += 1;
      break;
      if (((android.support.v7.view.menu.m)localObject1).g())
      {
        i4 += 1;
        break label82;
      }
      i5 = 1;
      break label82;
      i2 = i1;
      if (this.t)
        if (i5 == 0)
        {
          i2 = i1;
          if (i3 + i4 <= i1);
        }
        else
        {
          i2 = i1 - 1;
        }
      i2 -= i3;
      localObject1 = this.A;
      ((SparseBooleanArray)localObject1).clear();
      int i6;
      if (this.x)
      {
        i1 = i8 / this.z;
        i3 = this.z;
        i4 = this.z;
        i6 = i8 % i3 / i1 + i4;
      }
      while (true)
      {
        i5 = 0;
        int i7 = 0;
        i3 = i1;
        i1 = i2;
        i4 = i8;
        i2 = i5;
        android.support.v7.view.menu.m localm;
        Object localObject2;
        if (i7 < i9)
        {
          localm = (android.support.v7.view.menu.m)localArrayList.get(i7);
          if (localm.h())
          {
            localObject2 = a(localm, this.B, localViewGroup);
            if (this.B == null)
              this.B = ((View)localObject2);
            if (this.x)
            {
              i5 = i3 - ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              label302: i3 = ((View)localObject2).getMeasuredWidth();
              if (i2 != 0)
                break label799;
              i2 = i3;
            }
          }
        }
        while (true)
        {
          i8 = localm.getGroupId();
          if (i8 != 0)
            ((SparseBooleanArray)localObject1).put(i8, true);
          localm.c(true);
          i3 = i4 - i3;
          i4 = i1;
          i1 = i5;
          i8 = i7 + 1;
          i5 = i3;
          i7 = i4;
          i3 = i1;
          i4 = i5;
          i1 = i7;
          i7 = i8;
          break;
          ((View)localObject2).measure(i10, i10);
          i5 = i3;
          break label302;
          int i11;
          boolean bool;
          int i12;
          if (localm.g())
          {
            i11 = localm.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i11);
            if (((i1 > 0) || (bool)) && (i4 > 0) && ((!this.x) || (i3 > 0)))
            {
              i12 = 1;
              label447: if (i12 == 0)
                break label788;
              localObject2 = a(localm, this.B, localViewGroup);
              if (this.B == null)
                this.B = ((View)localObject2);
              if (!this.x)
                break label631;
              i8 = ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              i5 = i3 - i8;
              i3 = i5;
              if (i8 == 0)
              {
                i12 = 0;
                i3 = i5;
              }
              i8 = ((View)localObject2).getMeasuredWidth();
              i4 -= i8;
              i5 = i2;
              if (i2 == 0)
                i5 = i8;
              if (!this.x)
                break label648;
              if (i4 < 0)
                break label643;
              i2 = 1;
              label558: i12 &= i2;
              i2 = i3;
              i3 = i5;
            }
          }
          while (true)
          {
            if ((i12 != 0) && (i11 != 0))
              ((SparseBooleanArray)localObject1).put(i11, true);
            while (true)
            {
              i5 = i1;
              if (i12 != 0)
                i5 = i1 - 1;
              localm.c(i12);
              i8 = i3;
              i3 = i4;
              i4 = i5;
              i1 = i2;
              i2 = i8;
              break;
              int i13 = 0;
              break label447;
              label631: ((View)localObject2).measure(i10, i10);
              break label519;
              i2 = 0;
              break label558;
              if (i4 + i5 > 0);
              for (i2 = 1; ; i2 = 0)
              {
                i13 &= i2;
                i2 = i3;
                i3 = i5;
                break;
              }
              if (bool)
              {
                ((SparseBooleanArray)localObject1).put(i11, false);
                i8 = 0;
                while (true)
                  if (i8 < i7)
                  {
                    localObject2 = (android.support.v7.view.menu.m)localArrayList.get(i8);
                    i5 = i1;
                    if (((android.support.v7.view.menu.m)localObject2).getGroupId() == i11)
                    {
                      i5 = i1;
                      if (((android.support.v7.view.menu.m)localObject2).f())
                        i5 = i1 + 1;
                      ((android.support.v7.view.menu.m)localObject2).c(false);
                    }
                    i8 += 1;
                    i1 = i5;
                    continue;
                    localm.c(false);
                    i5 = i1;
                    i1 = i3;
                    i3 = i4;
                    i4 = i5;
                    break;
                    return true;
                  }
              }
            }
            i5 = i3;
            i3 = i2;
            i2 = i5;
          }
        }
        i6 = 0;
        i1 = 0;
      }
    }
  }

  public final boolean a(ad paramad)
  {
    if (!paramad.hasVisibleItems())
      return false;
    for (Object localObject1 = paramad; ((ad)localObject1).l != this.c; localObject1 = (ad)((ad)localObject1).l);
    Object localObject2 = ((ad)localObject1).getItem();
    ViewGroup localViewGroup = (ViewGroup)this.g;
    int i1;
    if (localViewGroup != null)
    {
      int i2 = localViewGroup.getChildCount();
      i1 = 0;
      if (i1 < i2)
      {
        localObject1 = localViewGroup.getChildAt(i1);
        if ((!(localObject1 instanceof aa)) || (((aa)localObject1).getItemData() != localObject2));
      }
    }
    while (true)
    {
      localObject2 = localObject1;
      if (localObject1 != null)
        break label139;
      if (this.i != null)
        break label133;
      return false;
      i1 += 1;
      break;
      localObject1 = null;
    }
    label133: localObject2 = this.i;
    label139: this.s = paramad.getItem().getItemId();
    this.p = new l(this, this.b, paramad);
    this.p.b = ((View)localObject2);
    if (!this.p.b())
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    super.a(paramad);
    return true;
  }

  public final boolean a(android.support.v7.view.menu.m paramm)
  {
    return paramm.f();
  }

  public final boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.i)
      return false;
    return super.a(paramViewGroup, paramInt);
  }

  public final void b()
  {
    this.t = true;
    this.u = true;
  }

  public final void b(boolean paramBoolean)
  {
    int i2 = 1;
    int i3 = 0;
    ((View)this.g).getParent();
    super.b(paramBoolean);
    ((View)this.g).requestLayout();
    Object localObject;
    int i1;
    if (this.c != null)
    {
      localObject = this.c;
      ((android.support.v7.view.menu.i)localObject).i();
      localObject = ((android.support.v7.view.menu.i)localObject).d;
      int i4 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i4)
      {
        android.support.v4.view.n localn = ((android.support.v7.view.menu.m)((ArrayList)localObject).get(i1)).d;
        if (localn != null)
          localn.a = this;
        i1 += 1;
      }
    }
    if (this.c != null)
    {
      localObject = this.c.j();
      i1 = i3;
      if (this.t)
      {
        i1 = i3;
        if (localObject != null)
        {
          i1 = ((ArrayList)localObject).size();
          if (i1 != 1)
            break label270;
          if (((android.support.v7.view.menu.m)((ArrayList)localObject).get(0)).isActionViewExpanded())
            break label265;
          i1 = 1;
        }
      }
      label165: if (i1 == 0)
        break label284;
      if (this.i == null)
        this.i = new o(this, this.a);
      localObject = (ViewGroup)this.i.getParent();
      if (localObject != this.g)
      {
        if (localObject != null)
          ((ViewGroup)localObject).removeView(this.i);
        ((ActionMenuView)this.g).addView(this.i, ActionMenuView.a());
      }
    }
    while (true)
    {
      ((ActionMenuView)this.g).setOverflowReserved(this.t);
      return;
      localObject = null;
      break;
      label265: i1 = 0;
      break label165;
      label270: if (i1 > 0);
      for (i1 = i2; ; i1 = 0)
        break;
      label284: if ((this.i != null) && (this.i.getParent() == this.g))
        ((ViewGroup)this.g).removeView(this.i);
    }
  }

  public final boolean c()
  {
    if ((this.t) && (!g()) && (this.c != null) && (this.g != null) && (this.q == null) && (!this.c.j().isEmpty()))
    {
      this.q = new n(this, new q(this, this.b, this.c, this.i));
      ((View)this.g).post(this.q);
      super.a(null);
      return true;
    }
    return false;
  }

  public final boolean d()
  {
    if ((this.q != null) && (this.g != null))
    {
      ((View)this.g).removeCallbacks(this.q);
      this.q = null;
      return true;
    }
    q localq = this.o;
    if (localq != null)
    {
      localq.c();
      return true;
    }
    return false;
  }

  public final boolean e()
  {
    return d() | f();
  }

  public final boolean f()
  {
    if (this.p != null)
    {
      this.p.c();
      return true;
    }
    return false;
  }

  public final boolean g()
  {
    return (this.o != null) && (this.o.d());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.k
 * JD-Core Version:    0.6.2
 */