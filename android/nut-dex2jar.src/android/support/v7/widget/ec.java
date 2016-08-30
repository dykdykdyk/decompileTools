package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.a.a;
import android.support.v4.view.a.ae;
import android.support.v4.view.a.f;
import android.support.v4.view.a.q;
import android.support.v4.view.bl;
import android.support.v7.d.b;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

public abstract class ec
{
  int A;
  bp q;
  RecyclerView r;
  em s;
  boolean t = false;
  boolean u = false;
  boolean v = false;
  boolean w = true;
  int x;
  int y;
  int z;

  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = i;
    switch (j)
    {
    default:
      paramInt1 = Math.max(paramInt2, paramInt3);
    case 1073741824:
      return paramInt1;
    case -2147483648:
    }
    return Math.min(i, Math.max(paramInt2, paramInt3));
  }

  public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int i = 0;
    int j = Math.max(0, paramInt1 - paramInt3);
    if (paramBoolean)
      if (paramInt4 >= 0)
      {
        paramInt3 = 1073741824;
        paramInt1 = paramInt4;
      }
    while (true)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt3);
      if (paramInt4 == -1)
      {
        switch (paramInt2)
        {
        case 0:
        default:
          paramInt1 = 0;
          paramInt3 = i;
          break;
        case 1073741824:
        case -2147483648:
          paramInt1 = j;
          paramInt3 = paramInt2;
          break;
        }
      }
      else if (paramInt4 == -2)
      {
        paramInt1 = 0;
        paramInt3 = i;
        continue;
        if (paramInt4 >= 0)
        {
          paramInt3 = 1073741824;
          paramInt1 = paramInt4;
        }
        else if (paramInt4 == -1)
        {
          paramInt1 = j;
          paramInt3 = paramInt2;
        }
        else if (paramInt4 == -2)
        {
          if (paramInt2 != -2147483648)
          {
            paramInt1 = j;
            paramInt3 = i;
            if (paramInt2 != 1073741824)
              continue;
          }
          paramInt3 = -2147483648;
          paramInt1 = j;
        }
      }
      else
      {
        paramInt1 = 0;
        paramInt3 = i;
      }
    }
  }

  public static int a(View paramView)
  {
    return ((ee)paramView.getLayoutParams()).c.c();
  }

  public static ed a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    ed localed = new ed();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.RecyclerView, paramInt1, paramInt2);
    localed.a = paramContext.getInt(b.RecyclerView_android_orientation, 1);
    localed.b = paramContext.getInt(b.RecyclerView_spanCount, 1);
    localed.c = paramContext.getBoolean(b.RecyclerView_reverseLayout, false);
    localed.d = paramContext.getBoolean(b.RecyclerView_stackFromEnd, false);
    paramContext.recycle();
    return localed;
  }

  private void a(int paramInt)
  {
    if (e(paramInt) != null)
    {
      bp localbp = this.q;
      paramInt = localbp.a(paramInt);
      View localView = localbp.a.b(paramInt);
      if (localView != null)
      {
        if (localbp.b.d(paramInt))
          localbp.b(localView);
        localbp.a.a(paramInt);
      }
    }
  }

  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = ((ee)paramView.getLayoutParams()).d;
    paramView.layout(localRect.left + paramInt1, localRect.top + paramInt2, paramInt3 - localRect.right, paramInt4 - localRect.bottom);
  }

  static boolean b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if ((paramInt3 > 0) && (paramInt1 != paramInt3));
    do
    {
      do
      {
        return false;
        switch (i)
        {
        default:
          return false;
        case -2147483648:
        case 0:
        case 1073741824:
        }
      }
      while (paramInt2 < paramInt1);
      return true;
      return true;
    }
    while (paramInt2 != paramInt1);
    return true;
  }

  public static int c(View paramView)
  {
    Rect localRect = ((ee)paramView.getLayoutParams()).d;
    int i = paramView.getMeasuredWidth();
    int j = localRect.left;
    return localRect.right + (i + j);
  }

  public static int d(View paramView)
  {
    Rect localRect = ((ee)paramView.getLayoutParams()).d;
    int i = paramView.getMeasuredHeight();
    int j = localRect.top;
    return localRect.bottom + (i + j);
  }

  private void d(int paramInt)
  {
    e(paramInt);
    this.q.d(paramInt);
  }

  public static int e(View paramView)
  {
    return paramView.getLeft() - ((ee)paramView.getLayoutParams()).d.left;
  }

  public static int f(View paramView)
  {
    return paramView.getTop() - ((ee)paramView.getLayoutParams()).d.top;
  }

  public static int g(View paramView)
  {
    int i = paramView.getRight();
    return ((ee)paramView.getLayoutParams()).d.right + i;
  }

  public static int h(View paramView)
  {
    int i = paramView.getBottom();
    return ((ee)paramView.getLayoutParams()).d.bottom + i;
  }

  public int a(int paramInt, ei paramei, eo parameo)
  {
    return 0;
  }

  public int a(ei paramei, eo parameo)
  {
    if ((this.r == null) || (RecyclerView.h(this.r) == null));
    while (!f())
      return 1;
    return RecyclerView.h(this.r).b();
  }

  public int a(eo parameo)
  {
    return 0;
  }

  public ee a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new ee(paramContext, paramAttributeSet);
  }

  public ee a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ee))
      return new ee((ee)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new ee((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new ee(paramLayoutParams);
  }

  public View a(View paramView, int paramInt, ei paramei, eo parameo)
  {
    return null;
  }

  public void a()
  {
  }

  public void a(int paramInt1, int paramInt2)
  {
  }

  public final void a(int paramInt, ei paramei)
  {
    View localView = e(paramInt);
    a(paramInt);
    paramei.a(localView);
  }

  public void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i = paramRect.width();
    int j = m();
    int k = o();
    int m = paramRect.height();
    int n = n();
    int i1 = p();
    h(a(paramInt1, i + j + k, bl.m(this.r)), a(paramInt2, m + n + i1, bl.n(this.r)));
  }

  public void a(Parcelable paramParcelable)
  {
  }

  final void a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      this.r = null;
      this.q = null;
      this.z = 0;
    }
    for (this.A = 0; ; this.A = paramRecyclerView.getHeight())
    {
      this.x = 1073741824;
      this.y = 1073741824;
      return;
      this.r = paramRecyclerView;
      this.q = paramRecyclerView.d;
      this.z = paramRecyclerView.getWidth();
    }
  }

  public void a(RecyclerView paramRecyclerView, ei paramei)
  {
  }

  public final void a(ei paramei)
  {
    int i = l() - 1;
    if (i >= 0)
    {
      View localView = e(i);
      er localer = RecyclerView.b(localView);
      if (!localer.b())
      {
        if ((!localer.j()) || (localer.m()) || (RecyclerView.h(this.r).b))
          break label78;
        a(i);
        paramei.a(localer);
      }
      while (true)
      {
        i -= 1;
        break;
        label78: d(i);
        paramei.c(localView);
        this.r.e.c(localer);
      }
    }
  }

  public void a(ei paramei, eo parameo, View paramView, f paramf)
  {
    int i;
    if (f())
    {
      i = a(paramView);
      if (!e())
        break label48;
    }
    label48: for (int j = a(paramView); ; j = 0)
    {
      paramf.a(q.a(i, 1, j, 1, false));
      return;
      i = 0;
      break;
    }
  }

  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    er localer1 = RecyclerView.b(paramView);
    ee localee1;
    if ((paramBoolean) || (localer1.m()))
    {
      this.r.e.b(localer1);
      localee1 = (ee)paramView.getLayoutParams();
      if ((!localer1.g()) && (!localer1.e()))
        break label128;
      if (!localer1.e())
        break label120;
      localer1.f();
      label68: this.q.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    while (true)
    {
      if (localee1.f)
      {
        localer1.a.invalidate();
        localee1.f = false;
      }
      return;
      this.r.e.c(localer1);
      break;
      label120: localer1.h();
      break label68;
      label128: Object localObject;
      if (paramView.getParent() == this.r)
      {
        int j = this.q.c(paramView);
        int i = paramInt;
        if (paramInt == -1)
          i = this.q.a();
        if (j == -1)
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.r.indexOfChild(paramView));
        if (j != i)
        {
          paramView = this.r.f;
          localObject = paramView.e(j);
          if (localObject == null)
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + j);
          paramView.d(j);
          ee localee2 = (ee)((View)localObject).getLayoutParams();
          er localer2 = RecyclerView.b((View)localObject);
          if (localer2.m())
            paramView.r.e.b(localer2);
          while (true)
          {
            paramView.q.a((View)localObject, i, localee2, localer2.m());
            break;
            paramView.r.e.c(localer2);
          }
        }
      }
      else
      {
        this.q.a(paramView, paramInt, false);
        localee1.e = true;
        if ((this.s != null) && (this.s.c))
        {
          localObject = this.s;
          if (RecyclerView.d(paramView) == ((em)localObject).a)
            ((em)localObject).d = paramView;
        }
      }
    }
  }

  public final void a(View paramView, Rect paramRect)
  {
    if (this.r == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    paramRect.set(this.r.e(paramView));
  }

  final void a(View paramView, f paramf)
  {
    er localer = RecyclerView.b(paramView);
    if ((localer != null) && (!localer.m()) && (!this.q.d(localer.a)))
      a(this.r.b, this.r.p, paramView, paramf);
  }

  public final void a(View paramView, ei paramei)
  {
    bp localbp = this.q;
    int i = localbp.a.a(paramView);
    if (i >= 0)
    {
      if (localbp.b.d(i))
        localbp.b(paramView);
      localbp.a.a(i);
    }
    paramei.a(paramView);
  }

  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    Object localObject = this.r.b;
    localObject = this.r.p;
    paramAccessibilityEvent = a.a(paramAccessibilityEvent);
    if (this.r == null)
      return;
    boolean bool1 = bool2;
    if (!bl.b(this.r, 1))
    {
      bool1 = bool2;
      if (!bl.b(this.r, -1))
      {
        bool1 = bool2;
        if (!bl.a(this.r, -1))
          if (!bl.a(this.r, 1))
            break label115;
      }
    }
    label115: for (bool1 = bool2; ; bool1 = false)
    {
      paramAccessibilityEvent.a(bool1);
      if (RecyclerView.h(this.r) == null)
        break;
      paramAccessibilityEvent.a(RecyclerView.h(this.r).b());
      return;
    }
  }

  public void a(String paramString)
  {
    if (this.r != null)
      this.r.a(paramString);
  }

  public boolean a(ee paramee)
  {
    return paramee != null;
  }

  final boolean a(View paramView, int paramInt1, int paramInt2, ee paramee)
  {
    return (paramView.isLayoutRequested()) || (!this.w) || (!b(paramView.getWidth(), paramInt1, paramee.width)) || (!b(paramView.getHeight(), paramInt2, paramee.height));
  }

  public final boolean a(Runnable paramRunnable)
  {
    if (this.r != null)
      return this.r.removeCallbacks(paramRunnable);
    return false;
  }

  public int b(int paramInt, ei paramei, eo parameo)
  {
    return 0;
  }

  public int b(ei paramei, eo parameo)
  {
    if ((this.r == null) || (RecyclerView.h(this.r) == null));
    while (!e())
      return 1;
    return RecyclerView.h(this.r).b();
  }

  public int b(eo parameo)
  {
    return 0;
  }

  public abstract ee b();

  public View b(int paramInt)
  {
    int j = l();
    int i = 0;
    while (i < j)
    {
      View localView = e(i);
      er localer = RecyclerView.b(localView);
      if ((localer != null) && (localer.c() == paramInt) && (!localer.b()) && ((this.r.p.g) || (!localer.m())))
        return localView;
      i += 1;
    }
    return null;
  }

  public final View b(View paramView)
  {
    Object localObject;
    if (this.r == null)
      localObject = null;
    do
    {
      return localObject;
      RecyclerView localRecyclerView = this.r;
      for (localObject = paramView.getParent(); (localObject != null) && (localObject != localRecyclerView) && ((localObject instanceof View)); localObject = paramView.getParent())
        paramView = (View)localObject;
      if (localObject == localRecyclerView);
      while (paramView == null)
      {
        return null;
        paramView = null;
      }
      localObject = paramView;
    }
    while (!this.q.d(paramView));
    return null;
  }

  public void b(int paramInt1, int paramInt2)
  {
  }

  final void b(RecyclerView paramRecyclerView)
  {
    e(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
  }

  final void b(RecyclerView paramRecyclerView, ei paramei)
  {
    this.u = false;
    a(paramRecyclerView, paramei);
  }

  final void b(ei paramei)
  {
    int j = paramei.a.size();
    int i = j - 1;
    while (i >= 0)
    {
      View localView = ((er)paramei.a.get(i)).a;
      er localer = RecyclerView.b(localView);
      if (!localer.b())
      {
        localer.a(false);
        if (localer.n())
          this.r.removeDetachedView(localView, false);
        if (this.r.n != null)
          this.r.n.c(localer);
        localer.a(true);
        paramei.b(localView);
      }
      i -= 1;
    }
    paramei.a.clear();
    if (paramei.b != null)
      paramei.b.clear();
    if (j > 0)
      this.r.invalidate();
  }

  public int c(eo parameo)
  {
    return 0;
  }

  public void c(int paramInt)
  {
  }

  public void c(int paramInt1, int paramInt2)
  {
  }

  public final void c(ei paramei)
  {
    int i = l() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.b(e(i)).b())
        a(i, paramei);
      i -= 1;
    }
  }

  public void c(ei paramei, eo parameo)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }

  public boolean c()
  {
    return false;
  }

  public int d(eo parameo)
  {
    return 0;
  }

  public Parcelable d()
  {
    return null;
  }

  public void d(int paramInt1, int paramInt2)
  {
  }

  public int e(eo parameo)
  {
    return 0;
  }

  public final View e(int paramInt)
  {
    if (this.q != null)
      return this.q.b(paramInt);
    return null;
  }

  final void e(int paramInt1, int paramInt2)
  {
    this.z = View.MeasureSpec.getSize(paramInt1);
    this.x = View.MeasureSpec.getMode(paramInt1);
    if ((this.x == 0) && (!RecyclerView.a))
      this.z = 0;
    this.A = View.MeasureSpec.getSize(paramInt2);
    this.y = View.MeasureSpec.getMode(paramInt2);
    if ((this.y == 0) && (!RecyclerView.a))
      this.A = 0;
  }

  public boolean e()
  {
    return false;
  }

  public int f(eo parameo)
  {
    return 0;
  }

  public void f(int paramInt)
  {
    if (this.r != null)
    {
      RecyclerView localRecyclerView = this.r;
      int j = localRecyclerView.d.a();
      int i = 0;
      while (i < j)
      {
        localRecyclerView.d.b(i).offsetLeftAndRight(paramInt);
        i += 1;
      }
    }
  }

  final void f(int paramInt1, int paramInt2)
  {
    int j = 2147483647;
    int i = -2147483648;
    int i5 = l();
    if (i5 == 0)
    {
      this.r.a(paramInt1, paramInt2);
      return;
    }
    int n = 0;
    int k = -2147483648;
    int m = 2147483647;
    int i1;
    int i3;
    int i2;
    if (n < i5)
    {
      View localView = e(n);
      ee localee = (ee)localView.getLayoutParams();
      int i4 = e(localView) - localee.leftMargin;
      i1 = g(localView);
      i3 = localee.rightMargin + i1;
      i2 = f(localView) - localee.topMargin;
      i1 = h(localView);
      i1 = localee.bottomMargin + i1;
      if (i4 >= m)
        break label217;
      m = i4;
    }
    label217: 
    while (true)
    {
      if (i3 > k)
        k = i3;
      while (true)
      {
        if (i2 < j)
          j = i2;
        while (true)
        {
          if (i1 > i)
            i = i1;
          while (true)
          {
            n += 1;
            break;
            RecyclerView.v(this.r).set(m, j, k, i);
            a(RecyclerView.v(this.r), paramInt1, paramInt2);
            return;
          }
        }
      }
    }
  }

  public boolean f()
  {
    return false;
  }

  public void g(int paramInt)
  {
    if (this.r != null)
    {
      RecyclerView localRecyclerView = this.r;
      int j = localRecyclerView.d.a();
      int i = 0;
      while (i < j)
      {
        localRecyclerView.d.b(i).offsetTopAndBottom(paramInt);
        i += 1;
      }
    }
  }

  public final void g(int paramInt1, int paramInt2)
  {
    this.r.a(paramInt1, paramInt2);
  }

  public void h(int paramInt)
  {
  }

  public final void h(int paramInt1, int paramInt2)
  {
    RecyclerView.b(this.r, paramInt1, paramInt2);
  }

  boolean i()
  {
    return false;
  }

  public final void j()
  {
    if (this.r != null)
      this.r.requestLayout();
  }

  public final boolean k()
  {
    return (this.s != null) && (this.s.c);
  }

  public final int l()
  {
    if (this.q != null)
      return this.q.a();
    return 0;
  }

  public final int m()
  {
    if (this.r != null)
      return this.r.getPaddingLeft();
    return 0;
  }

  public final int n()
  {
    if (this.r != null)
      return this.r.getPaddingTop();
    return 0;
  }

  public final int o()
  {
    if (this.r != null)
      return this.r.getPaddingRight();
    return 0;
  }

  public final int p()
  {
    if (this.r != null)
      return this.r.getPaddingBottom();
    return 0;
  }

  final void q()
  {
    if (this.s != null)
      this.s.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ec
 * JD-Core Version:    0.6.2
 */