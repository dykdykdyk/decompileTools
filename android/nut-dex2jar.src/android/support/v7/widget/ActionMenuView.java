package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.y;
import android.support.v7.view.menu.z;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends co
  implements android.support.v7.view.menu.k, z
{
  i a;
  boolean b;
  k c;
  private Context d;
  private int e;
  private y f;
  private j g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  private w l;

  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.j = ((int)(56.0F * f1));
    this.k = ((int)(f1 * 4.0F));
    this.d = paramContext;
    this.e = 0;
  }

  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    u localu = (u)paramView.getLayoutParams();
    int m = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.b()))
        break label184;
      paramInt4 = 1;
      label57: if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2)))
        break label190;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), m);
      int n = paramView.getMeasuredWidth();
      paramInt3 = n / paramInt1;
      paramInt2 = paramInt3;
      if (n % paramInt1 != 0)
        paramInt2 = paramInt3 + 1;
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2);
      }
    }
    label184: label190: for (paramInt3 = 2; ; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!localu.a)
      {
        bool1 = bool2;
        if (paramInt4 != 0)
          bool1 = true;
      }
      localu.d = bool1;
      localu.b = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), m);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }

  public static u a()
  {
    u localu = d();
    localu.a = true;
    return localu;
  }

  protected static u a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof u));
      for (paramLayoutParams = new u((u)paramLayoutParams); ; paramLayoutParams = new u(paramLayoutParams))
      {
        if (paramLayoutParams.h <= 0)
          paramLayoutParams.h = 16;
        return paramLayoutParams;
      }
    }
    return d();
  }

  private boolean a(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0)
      return false;
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof s))
        bool1 = ((s)localView1).d() | false;
    }
    if ((paramInt > 0) && ((localView2 instanceof s)))
      return ((s)localView2).c() | bool1;
    return bool1;
  }

  private u b(AttributeSet paramAttributeSet)
  {
    return new u(getContext(), paramAttributeSet);
  }

  private static u d()
  {
    u localu = new u();
    localu.h = 16;
    return localu;
  }

  public final void a(i parami)
  {
    this.a = parami;
  }

  public final void a(y paramy, j paramj)
  {
    this.f = paramy;
    this.g = paramj;
  }

  public final boolean a(m paramm)
  {
    return this.a.a(paramm, null, 0);
  }

  public final void b()
  {
    if (this.c != null)
      this.c.e();
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof u));
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }

  public Menu getMenu()
  {
    k localk;
    if (this.a == null)
    {
      localObject = getContext();
      this.a = new i((Context)localObject);
      this.a.a(new v(this, (byte)0));
      this.c = new k((Context)localObject);
      this.c.b();
      localk = this.c;
      if (this.f == null)
        break label109;
    }
    label109: for (Object localObject = this.f; ; localObject = new t(this, (byte)0))
    {
      localk.f = ((y)localObject);
      this.a.a(this.c, this.d);
      this.c.a(this);
      return this.a;
    }
  }

  public Drawable getOverflowIcon()
  {
    getMenu();
    k localk = this.c;
    if (localk.i != null)
      return localk.i.getDrawable();
    if (localk.k)
      return localk.j;
    return null;
  }

  public int getPopupTheme()
  {
    return this.e;
  }

  public int getWindowAnimations()
  {
    return 0;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    if (this.c != null)
    {
      this.c.b(false);
      if (this.c.g())
      {
        this.c.d();
        this.c.c();
      }
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.h)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i4 = getChildCount();
    int i3 = (paramInt4 - paramInt2) / 2;
    int i5 = getDividerWidth();
    paramInt2 = 0;
    paramInt4 = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int n = 0;
    paramBoolean = gj.a(this);
    int m = 0;
    label68: View localView;
    u localu;
    int i1;
    int i2;
    if (m < i4)
    {
      localView = getChildAt(m);
      if (localView.getVisibility() == 8)
        break label669;
      localu = (u)localView.getLayoutParams();
      if (localu.a)
      {
        i1 = localView.getMeasuredWidth();
        n = i1;
        if (a(m))
          n = i1 + i5;
        int i6 = localView.getMeasuredHeight();
        if (paramBoolean)
        {
          i1 = getPaddingLeft();
          i1 = localu.leftMargin + i1;
          i2 = i1 + n;
          label172: int i7 = i3 - i6 / 2;
          localView.layout(i1, i7, i2, i6 + i7);
          i1 = paramInt4 - n;
          n = 1;
          paramInt4 = paramInt2;
          paramInt2 = i1;
        }
      }
    }
    while (true)
    {
      i1 = m + 1;
      m = paramInt4;
      paramInt4 = paramInt2;
      paramInt2 = m;
      m = i1;
      break label68;
      i2 = getWidth() - getPaddingRight() - localu.rightMargin;
      i1 = i2 - n;
      break label172;
      i1 = localView.getMeasuredWidth();
      i2 = localu.leftMargin;
      paramInt4 -= localu.rightMargin + (i1 + i2);
      a(m);
      i1 = paramInt2 + 1;
      paramInt2 = paramInt4;
      paramInt4 = i1;
      continue;
      if ((i4 == 1) && (n == 0))
      {
        localView = getChildAt(0);
        paramInt2 = localView.getMeasuredWidth();
        paramInt4 = localView.getMeasuredHeight();
        paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
        paramInt3 = i3 - paramInt4 / 2;
        localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
        return;
      }
      if (n != 0)
      {
        paramInt1 = 0;
        label390: paramInt1 = paramInt2 - paramInt1;
        if (paramInt1 <= 0)
          break label541;
        paramInt1 = paramInt4 / paramInt1;
        label403: paramInt3 = Math.max(0, paramInt1);
        if (!paramBoolean)
          break label546;
        paramInt1 = getWidth() - getPaddingRight();
        paramInt2 = 0;
        label426: if (paramInt2 < i4)
        {
          localView = getChildAt(paramInt2);
          localu = (u)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (localu.a))
            break label666;
          paramInt1 -= localu.rightMargin;
          paramInt4 = localView.getMeasuredWidth();
          m = localView.getMeasuredHeight();
          n = i3 - m / 2;
          localView.layout(paramInt1 - paramInt4, n, paramInt1, m + n);
          paramInt1 -= localu.leftMargin + paramInt4 + paramInt3;
        }
      }
      label663: label666: 
      while (true)
      {
        paramInt2 += 1;
        break label426;
        break;
        paramInt1 = 1;
        break label390;
        label541: paramInt1 = 0;
        break label403;
        label546: paramInt1 = getPaddingLeft();
        paramInt2 = 0;
        label553: if (paramInt2 < i4)
        {
          localView = getChildAt(paramInt2);
          localu = (u)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (localu.a))
            break label663;
          paramInt1 += localu.leftMargin;
          paramInt4 = localView.getMeasuredWidth();
          m = localView.getMeasuredHeight();
          n = i3 - m / 2;
          localView.layout(paramInt1, n, paramInt1 + paramInt4, m + n);
          paramInt1 = localu.rightMargin + paramInt4 + paramInt3 + paramInt1;
        }
        while (true)
        {
          paramInt2 += 1;
          break label553;
          break;
        }
      }
      label669: i1 = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = i1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = this.h;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824);
    int m;
    int n;
    int i10;
    int i9;
    int i7;
    int i11;
    int i12;
    for (boolean bool1 = true; ; bool1 = false)
    {
      this.h = bool1;
      if (bool2 != this.h)
        this.i = 0;
      m = View.MeasureSpec.getSize(paramInt1);
      if ((this.h) && (this.a != null) && (m != this.i))
      {
        this.i = m;
        this.a.b(true);
      }
      n = getChildCount();
      if ((!this.h) || (n <= 0))
        break label1304;
      i10 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      i9 = View.MeasureSpec.getSize(paramInt2);
      m = getPaddingLeft();
      n = getPaddingRight();
      i7 = getPaddingTop() + getPaddingBottom();
      i11 = getChildMeasureSpec(paramInt2, i7, -2);
      i12 = paramInt1 - (m + n);
      paramInt1 = i12 / this.j;
      paramInt2 = this.j;
      if (paramInt1 != 0)
        break;
      setMeasuredDimension(i12, 0);
      return;
    }
    int i13 = this.j + i12 % paramInt2 / paramInt1;
    paramInt2 = 0;
    int i3 = 0;
    int i2 = 0;
    int i4 = 0;
    int i1 = 0;
    long l1 = 0L;
    int i14 = getChildCount();
    int i5 = 0;
    Object localObject;
    u localu;
    label351: label369: int i6;
    label407: label418: long l2;
    if (i5 < i14)
    {
      localObject = getChildAt(i5);
      if (((View)localObject).getVisibility() == 8)
        break label1438;
      bool1 = localObject instanceof ActionMenuItemView;
      i4 += 1;
      if (bool1)
        ((View)localObject).setPadding(this.k, 0, this.k, 0);
      localu = (u)((View)localObject).getLayoutParams();
      localu.f = false;
      localu.c = 0;
      localu.b = 0;
      localu.d = false;
      localu.leftMargin = 0;
      localu.rightMargin = 0;
      if ((bool1) && (((ActionMenuItemView)localObject).b()))
      {
        bool1 = true;
        localu.e = bool1;
        if (!localu.a)
          break label512;
        m = 1;
        i6 = a((View)localObject, i13, m, i11, i7);
        i3 = Math.max(i3, i6);
        if (!localu.d)
          break label1431;
        m = i2 + 1;
        if (!localu.a)
          break label1424;
        n = 1;
        paramInt1 -= i6;
        i2 = Math.max(paramInt2, ((View)localObject).getMeasuredHeight());
        if (i6 != 1)
          break label1386;
        l2 = 1 << i5;
        paramInt2 = i2;
        i1 = paramInt1;
        i2 = m;
        i6 = n;
        l1 = l2 | l1;
        paramInt1 = i4;
        n = i1;
        m = paramInt2;
        i1 = i6;
        paramInt2 = i3;
      }
    }
    while (true)
    {
      i5 += 1;
      i4 = paramInt1;
      paramInt1 = n;
      i3 = paramInt2;
      paramInt2 = m;
      break;
      bool1 = false;
      break label351;
      label512: m = paramInt1;
      break label369;
      long l3;
      if ((i1 != 0) && (i4 == 2))
      {
        i6 = 1;
        m = 0;
        i5 = paramInt1;
        paramInt1 = m;
        l3 = l1;
        if (i2 <= 0)
          break label863;
        l3 = l1;
        if (i5 <= 0)
          break label863;
        m = 2147483647;
        l2 = 0L;
        n = 0;
        i7 = 0;
        label573: if (i7 >= i14)
          break label697;
        localObject = (u)getChildAt(i7).getLayoutParams();
        if (!((u)localObject).d)
          break label1371;
        if (((u)localObject).b >= m)
          break label660;
        n = ((u)localObject).b;
        l2 = 1 << i7;
        m = 1;
      }
      label1029: label1032: 
      while (true)
      {
        int i8 = i7 + 1;
        i7 = n;
        n = m;
        m = i7;
        i7 = i8;
        break label573;
        i6 = 0;
        break;
        label660: if (((u)localObject).b == m)
        {
          l2 |= 1 << i7;
          i8 = n + 1;
          n = m;
          m = i8;
          continue;
          label697: l1 |= l2;
          l3 = l1;
          if (n <= i5)
          {
            n = 0;
            paramInt1 = i5;
            label721: if (n < i14)
            {
              localObject = getChildAt(n);
              localu = (u)((View)localObject).getLayoutParams();
              if ((1 << n & l2) == 0L)
              {
                if (localu.b != m + 1)
                  break label1368;
                l1 |= 1 << n;
              }
            }
          }
          label1208: label1211: label1214: label1362: label1368: 
          while (true)
          {
            n += 1;
            break label721;
            if ((i6 != 0) && (localu.e) && (paramInt1 == 1))
              ((View)localObject).setPadding(this.k + i13, 0, this.k, 0);
            localu.b += 1;
            localu.f = true;
            paramInt1 -= 1;
            continue;
            m = 1;
            i5 = paramInt1;
            paramInt1 = m;
            break;
            label863: float f2;
            float f1;
            if ((i1 == 0) && (i4 == 1))
            {
              m = 1;
              if ((i5 <= 0) || (l3 == 0L) || ((i5 >= i4 - 1) && (m == 0) && (i3 <= 1)))
                break label1211;
              float f3 = Long.bitCount(l3);
              f2 = f3;
              if (m != 0)
                break label1362;
              f1 = f3;
              if ((1L & l3) != 0L)
              {
                f1 = f3;
                if (!((u)getChildAt(0).getLayoutParams()).e)
                  f1 = f3 - 0.5F;
              }
              f2 = f1;
              if ((1 << i14 - 1 & l3) == 0L)
                break label1362;
              f2 = f1;
              if (((u)getChildAt(i14 - 1).getLayoutParams()).e)
                break label1362;
            }
            for (f1 -= 0.5F; ; f1 = f2)
            {
              if (f1 > 0.0F)
              {
                m = (int)(i5 * i13 / f1);
                n = 0;
                i1 = paramInt1;
                if (n >= i14)
                  break label1214;
                if ((1 << n & l3) == 0L)
                  break label1208;
                localObject = getChildAt(n);
                localu = (u)((View)localObject).getLayoutParams();
                if (!(localObject instanceof ActionMenuItemView))
                  break label1140;
                localu.c = m;
                localu.f = true;
                if ((n == 0) && (!localu.e))
                  localu.leftMargin = (-m / 2);
                paramInt1 = 1;
              }
              while (true)
              {
                n += 1;
                break label1032;
                m = 0;
                break;
                m = 0;
                break label1029;
                label1140: if (localu.a)
                {
                  localu.c = m;
                  localu.f = true;
                  localu.rightMargin = (-m / 2);
                  paramInt1 = 1;
                }
                else
                {
                  if (n != 0)
                    localu.leftMargin = (m / 2);
                  if (n != i14 - 1)
                    localu.rightMargin = (m / 2);
                }
              }
              i1 = paramInt1;
              if (i1 != 0)
              {
                paramInt1 = 0;
                while (paramInt1 < i14)
                {
                  localObject = getChildAt(paramInt1);
                  localu = (u)((View)localObject).getLayoutParams();
                  if (localu.f)
                  {
                    m = localu.b;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(localu.c + m * i13, 1073741824), i11);
                  }
                  paramInt1 += 1;
                }
              }
              if (i10 != 1073741824);
              while (true)
              {
                setMeasuredDimension(i12, paramInt2);
                return;
                m = 0;
                while (m < n)
                {
                  localObject = (u)getChildAt(m).getLayoutParams();
                  ((u)localObject).rightMargin = 0;
                  ((u)localObject).leftMargin = 0;
                  m += 1;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                paramInt2 = i9;
              }
            }
          }
        }
        else
        {
          label1304: label1371: i8 = m;
          m = n;
          n = i8;
        }
      }
      label1386: paramInt2 = i4;
      i1 = i3;
      i3 = i2;
      i4 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i1;
      i2 = m;
      i1 = n;
      m = i3;
      n = i4;
      continue;
      label1424: n = i1;
      break label418;
      label1431: m = i2;
      break label407;
      label1438: m = paramInt2;
      n = paramInt1;
      paramInt2 = i3;
      paramInt1 = i4;
    }
  }

  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.c.n = paramBoolean;
  }

  public void setOnMenuItemClickListener(w paramw)
  {
    this.l = paramw;
  }

  public void setOverflowIcon(Drawable paramDrawable)
  {
    getMenu();
    k localk = this.c;
    if (localk.i != null)
    {
      localk.i.setImageDrawable(paramDrawable);
      return;
    }
    localk.k = true;
    localk.j = paramDrawable;
  }

  public void setOverflowReserved(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public void setPopupTheme(int paramInt)
  {
    if (this.e != paramInt)
    {
      this.e = paramInt;
      if (paramInt == 0)
        this.d = getContext();
    }
    else
    {
      return;
    }
    this.d = new ContextThemeWrapper(getContext(), paramInt);
  }

  public void setPresenter(k paramk)
  {
    this.c = paramk;
    this.c.a(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * JD-Core Version:    0.6.2
 */