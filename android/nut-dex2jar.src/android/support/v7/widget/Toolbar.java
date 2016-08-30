package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.aj;
import android.support.v4.view.an;
import android.support.v4.view.at;
import android.support.v4.view.bl;
import android.support.v4.view.q;
import android.support.v7.b.l;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.y;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup
{
  private CharSequence A;
  private CharSequence B;
  private int C;
  private int D;
  private boolean E;
  private boolean F;
  private final ArrayList<View> G = new ArrayList();
  private final int[] H = new int[2];
  private fz I;
  private final w J = new fu(this);
  private gb K;
  private boolean L;
  private final Runnable M = new fv(this);
  private final ao N;
  ActionMenuView a;
  TextView b;
  TextView c;
  View d;
  Context e;
  int f;
  int g;
  int h;
  final ev i = new ev();
  final ArrayList<View> j = new ArrayList();
  k k;
  fx l;
  y m;
  j n;
  private ImageButton o;
  private ImageView p;
  private Drawable q;
  private CharSequence r;
  private ImageButton s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private int y;
  private int z = 8388627;

  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }

  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, android.support.v7.b.b.toolbarStyle);
  }

  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ft.a(getContext(), paramAttributeSet, l.Toolbar, paramInt);
    this.g = paramContext.e(l.Toolbar_titleTextAppearance, 0);
    this.h = paramContext.e(l.Toolbar_subtitleTextAppearance, 0);
    paramInt = l.Toolbar_android_gravity;
    int i1 = this.z;
    this.z = paramContext.a.getInteger(paramInt, i1);
    this.t = 48;
    paramInt = paramContext.b(l.Toolbar_titleMargins, 0);
    this.y = paramInt;
    this.x = paramInt;
    this.w = paramInt;
    this.v = paramInt;
    paramInt = paramContext.b(l.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0)
      this.v = paramInt;
    paramInt = paramContext.b(l.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0)
      this.w = paramInt;
    paramInt = paramContext.b(l.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0)
      this.x = paramInt;
    paramInt = paramContext.b(l.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0)
      this.y = paramInt;
    this.u = paramContext.c(l.Toolbar_maxButtonHeight, -1);
    paramInt = paramContext.b(l.Toolbar_contentInsetStart, -2147483648);
    i1 = paramContext.b(l.Toolbar_contentInsetEnd, -2147483648);
    int i2 = paramContext.c(l.Toolbar_contentInsetLeft, 0);
    int i3 = paramContext.c(l.Toolbar_contentInsetRight, 0);
    paramAttributeSet = this.i;
    paramAttributeSet.h = false;
    if (i2 != -2147483648)
    {
      paramAttributeSet.e = i2;
      paramAttributeSet.a = i2;
    }
    if (i3 != -2147483648)
    {
      paramAttributeSet.f = i3;
      paramAttributeSet.b = i3;
    }
    if ((paramInt != -2147483648) || (i1 != -2147483648))
      this.i.a(paramInt, i1);
    this.q = paramContext.a(l.Toolbar_collapseIcon);
    this.r = paramContext.c(l.Toolbar_collapseContentDescription);
    paramAttributeSet = paramContext.c(l.Toolbar_title);
    if (!TextUtils.isEmpty(paramAttributeSet))
      setTitle(paramAttributeSet);
    paramAttributeSet = paramContext.c(l.Toolbar_subtitle);
    if (!TextUtils.isEmpty(paramAttributeSet))
      setSubtitle(paramAttributeSet);
    this.e = getContext();
    setPopupTheme(paramContext.e(l.Toolbar_popupTheme, 0));
    paramAttributeSet = paramContext.a(l.Toolbar_navigationIcon);
    if (paramAttributeSet != null)
      setNavigationIcon(paramAttributeSet);
    paramAttributeSet = paramContext.c(l.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(paramAttributeSet))
      setNavigationContentDescription(paramAttributeSet);
    paramAttributeSet = paramContext.a(l.Toolbar_logo);
    if (paramAttributeSet != null)
      setLogo(paramAttributeSet);
    paramAttributeSet = paramContext.c(l.Toolbar_logoDescription);
    if (!TextUtils.isEmpty(paramAttributeSet))
      setLogoDescription(paramAttributeSet);
    if (paramContext.e(l.Toolbar_titleTextColor))
      setTitleTextColor(paramContext.d(l.Toolbar_titleTextColor));
    if (paramContext.e(l.Toolbar_subtitleTextColor))
      setSubtitleTextColor(paramContext.d(l.Toolbar_subtitleTextColor));
    paramContext.a.recycle();
    this.N = ao.a();
  }

  private int a(int paramInt)
  {
    int i2 = bl.h(this);
    int i1 = q.a(paramInt, i2) & 0x7;
    paramInt = i1;
    switch (i1)
    {
    case 2:
    case 4:
    default:
      if (i2 == 1)
        paramInt = 5;
      break;
    case 1:
    case 3:
    case 5:
      return paramInt;
    }
    return 3;
  }

  private int a(View paramView, int paramInt)
  {
    fy localfy = (fy)paramView.getLayoutParams();
    int i3 = paramView.getMeasuredHeight();
    int i2;
    int i1;
    int i4;
    if (paramInt > 0)
    {
      paramInt = (i3 - paramInt) / 2;
      i2 = localfy.a & 0x70;
      i1 = i2;
      switch (i2)
      {
      default:
        i1 = this.z & 0x70;
      case 16:
      case 48:
      case 80:
      }
      switch (i1)
      {
      default:
        i1 = getPaddingTop();
        i2 = getPaddingBottom();
        i4 = getHeight();
        paramInt = (i4 - i1 - i2 - i3) / 2;
        if (paramInt < localfy.topMargin)
          paramInt = localfy.topMargin;
        break;
      case 48:
      case 80:
      }
    }
    while (true)
    {
      return paramInt + i1;
      paramInt = 0;
      break;
      return getPaddingTop() - paramInt;
      return getHeight() - getPaddingBottom() - i3 - localfy.bottomMargin - paramInt;
      i2 = i4 - i2 - i3 - paramInt - i1;
      if (i2 < localfy.bottomMargin)
        paramInt = Math.max(0, paramInt - (localfy.bottomMargin - i2));
    }
  }

  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = localMarginLayoutParams.leftMargin - paramArrayOfInt[0];
    int i2 = localMarginLayoutParams.rightMargin - paramArrayOfInt[1];
    int i3 = Math.max(0, i1) + Math.max(0, i2);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramArrayOfInt[1] = Math.max(0, -i2);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + i3 + paramInt2, localMarginLayoutParams.width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height));
    return paramView.getMeasuredWidth() + i3;
  }

  private int a(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    fy localfy = (fy)paramView.getLayoutParams();
    int i1 = localfy.leftMargin - paramArrayOfInt[0];
    paramInt1 = Math.max(0, i1) + paramInt1;
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i1, paramView.getMeasuredHeight() + paramInt2);
    return localfy.rightMargin + i1 + paramInt1;
  }

  private static fy a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof fy))
      return new fy((fy)paramLayoutParams);
    if ((paramLayoutParams instanceof android.support.v7.a.b))
      return new fy((android.support.v7.a.b)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new fy((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new fy(paramLayoutParams);
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + 0, localMarginLayoutParams.height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt4 >= 0)
      {
        paramInt1 = paramInt4;
        if (paramInt3 != 0)
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt4);
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i1, paramInt1);
  }

  private void a(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null)
      localObject = new fy();
    while (true)
    {
      ((fy)localObject).b = 1;
      if ((!paramBoolean) || (this.d == null))
        break;
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.j.add(paramView);
      return;
      if (!checkLayoutParams((ViewGroup.LayoutParams)localObject))
        localObject = a((ViewGroup.LayoutParams)localObject);
      else
        localObject = (fy)localObject;
    }
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }

  private void a(List<View> paramList, int paramInt)
  {
    int i1 = 1;
    int i2 = 0;
    if (bl.h(this) == 1);
    int i4;
    int i3;
    View localView;
    fy localfy;
    while (true)
    {
      i4 = getChildCount();
      i3 = q.a(paramInt, bl.h(this));
      paramList.clear();
      paramInt = i2;
      if (i1 == 0)
        break;
      paramInt = i4 - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localfy = (fy)localView.getLayoutParams();
        if ((localfy.b == 0) && (a(localView)) && (a(localfy.a) == i3))
          paramList.add(localView);
        paramInt -= 1;
      }
      i1 = 0;
    }
    while (paramInt < i4)
    {
      localView = getChildAt(paramInt);
      localfy = (fy)localView.getLayoutParams();
      if ((localfy.b == 0) && (a(localView)) && (a(localfy.a) == i3))
        paramList.add(localView);
      paramInt += 1;
    }
  }

  private boolean a(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }

  private static int b(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = aj.a(paramView);
    return aj.b(paramView) + i1;
  }

  private int b(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    fy localfy = (fy)paramView.getLayoutParams();
    int i1 = localfy.rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i1);
    paramArrayOfInt[1] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i1, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (localfy.leftMargin + i1);
  }

  private static int c(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = paramView.topMargin;
    return paramView.bottomMargin + i1;
  }

  private boolean d(View paramView)
  {
    return (paramView.getParent() == this) || (this.j.contains(paramView));
  }

  protected static fy e()
  {
    return new fy();
  }

  private void f()
  {
    if (this.p == null)
      this.p = new ImageView(getContext());
  }

  private void g()
  {
    d();
    if (this.a.a == null)
    {
      android.support.v7.view.menu.i locali = (android.support.v7.view.menu.i)this.a.getMenu();
      if (this.l == null)
        this.l = new fx(this, (byte)0);
      this.a.setExpandedActionViewsExclusive(true);
      locali.a(this.l, this.e);
    }
  }

  private MenuInflater getMenuInflater()
  {
    return new android.support.v7.view.i(getContext());
  }

  private void h()
  {
    if (this.o == null)
    {
      this.o = new ImageButton(getContext(), null, android.support.v7.b.b.toolbarNavigationButtonStyle);
      fy localfy = new fy();
      localfy.a = (0x800003 | this.t & 0x70);
      this.o.setLayoutParams(localfy);
    }
  }

  public final boolean a()
  {
    if (this.a != null)
    {
      ActionMenuView localActionMenuView = this.a;
      if ((localActionMenuView.c != null) && (localActionMenuView.c.g()));
      for (int i1 = 1; i1 != 0; i1 = 0)
        return true;
    }
    return false;
  }

  public final boolean b()
  {
    if (this.a != null)
    {
      ActionMenuView localActionMenuView = this.a;
      if ((localActionMenuView.c != null) && (localActionMenuView.c.c()));
      for (int i1 = 1; i1 != 0; i1 = 0)
        return true;
    }
    return false;
  }

  public final void c()
  {
    if (this.l == null);
    for (m localm = null; ; localm = this.l.b)
    {
      if (localm != null)
        localm.collapseActionView();
      return;
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof fy));
  }

  final void d()
  {
    if (this.a == null)
    {
      this.a = new ActionMenuView(getContext());
      this.a.setPopupTheme(this.f);
      this.a.setOnMenuItemClickListener(this.J);
      this.a.a(this.m, this.n);
      fy localfy = new fy();
      localfy.a = (0x800005 | this.t & 0x70);
      this.a.setLayoutParams(localfy);
      a(this.a, false);
    }
  }

  public int getContentInsetEnd()
  {
    ev localev = this.i;
    if (localev.g)
      return localev.a;
    return localev.b;
  }

  public int getContentInsetLeft()
  {
    return this.i.a;
  }

  public int getContentInsetRight()
  {
    return this.i.b;
  }

  public int getContentInsetStart()
  {
    ev localev = this.i;
    if (localev.g)
      return localev.b;
    return localev.a;
  }

  public Drawable getLogo()
  {
    if (this.p != null)
      return this.p.getDrawable();
    return null;
  }

  public CharSequence getLogoDescription()
  {
    if (this.p != null)
      return this.p.getContentDescription();
    return null;
  }

  public Menu getMenu()
  {
    g();
    return this.a.getMenu();
  }

  public CharSequence getNavigationContentDescription()
  {
    if (this.o != null)
      return this.o.getContentDescription();
    return null;
  }

  public Drawable getNavigationIcon()
  {
    if (this.o != null)
      return this.o.getDrawable();
    return null;
  }

  public Drawable getOverflowIcon()
  {
    g();
    return this.a.getOverflowIcon();
  }

  public int getPopupTheme()
  {
    return this.f;
  }

  public CharSequence getSubtitle()
  {
    return this.B;
  }

  public CharSequence getTitle()
  {
    return this.A;
  }

  public bu getWrapper()
  {
    if (this.K == null)
      this.K = new gb(this, true);
    return this.K;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.M);
  }

  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = at.a(paramMotionEvent);
    if (i1 == 9)
      this.F = false;
    if (!this.F)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i1 == 9) && (!bool))
        this.F = true;
    }
    if ((i1 == 10) || (i1 == 3))
      this.F = false;
    return true;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i3;
    int i6;
    int i9;
    int i1;
    int i7;
    int i8;
    int i10;
    int[] arrayOfInt;
    int i5;
    if (bl.h(this) == 1)
    {
      i3 = 1;
      i6 = getWidth();
      i9 = getHeight();
      i1 = getPaddingLeft();
      i7 = getPaddingRight();
      i8 = getPaddingTop();
      i10 = getPaddingBottom();
      paramInt4 = i6 - i7;
      arrayOfInt = this.H;
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
      i5 = bl.n(this);
      if (!a(this.o))
        break label1709;
      if (i3 == 0)
        break label876;
      paramInt4 = b(this.o, paramInt4, arrayOfInt, i5);
      paramInt1 = i1;
    }
    while (true)
    {
      label111: paramInt2 = paramInt4;
      paramInt3 = paramInt1;
      if (a(this.s))
      {
        if (i3 != 0)
        {
          paramInt2 = b(this.s, paramInt4, arrayOfInt, i5);
          paramInt3 = paramInt1;
        }
      }
      else
      {
        label151: paramInt1 = paramInt2;
        paramInt4 = paramInt3;
        if (a(this.a))
        {
          if (i3 == 0)
            break label915;
          paramInt4 = a(this.a, paramInt3, arrayOfInt, i5);
          paramInt1 = paramInt2;
        }
        label191: arrayOfInt[0] = Math.max(0, getContentInsetLeft() - paramInt4);
        arrayOfInt[1] = Math.max(0, getContentInsetRight() - (i6 - i7 - paramInt1));
        paramInt3 = Math.max(paramInt4, getContentInsetLeft());
        paramInt4 = Math.min(paramInt1, i6 - i7 - getContentInsetRight());
        paramInt2 = paramInt4;
        paramInt1 = paramInt3;
        if (a(this.d))
        {
          if (i3 == 0)
            break label936;
          paramInt2 = b(this.d, paramInt4, arrayOfInt, i5);
          paramInt1 = paramInt3;
        }
        label293: if (!a(this.p))
          break label1703;
        if (i3 == 0)
          break label957;
        paramInt2 = b(this.p, paramInt2, arrayOfInt, i5);
        paramInt3 = paramInt1;
      }
      while (true)
      {
        label326: paramBoolean = a(this.b);
        boolean bool = a(this.c);
        paramInt1 = 0;
        Object localObject1;
        if (paramBoolean)
        {
          localObject1 = (fy)this.b.getLayoutParams();
          paramInt1 = ((fy)localObject1).topMargin;
          paramInt4 = this.b.getMeasuredHeight();
          paramInt1 = ((fy)localObject1).bottomMargin + (paramInt1 + paramInt4) + 0;
        }
        int i2;
        if (bool)
        {
          localObject1 = (fy)this.c.getLayoutParams();
          paramInt4 = ((fy)localObject1).topMargin;
          i2 = this.c.getMeasuredHeight();
        }
        label1671: for (int i4 = ((fy)localObject1).bottomMargin + (paramInt4 + i2) + paramInt1; ; i4 = paramInt1)
        {
          label464: Object localObject2;
          if (!paramBoolean)
          {
            paramInt4 = paramInt2;
            paramInt1 = paramInt3;
            if (!bool);
          }
          else
          {
            if (!paramBoolean)
              break label975;
            localObject1 = this.b;
            if (!bool)
              break label984;
            localObject2 = this.c;
            label475: localObject1 = (fy)((View)localObject1).getLayoutParams();
            localObject2 = (fy)((View)localObject2).getLayoutParams();
            if (((!paramBoolean) || (this.b.getMeasuredWidth() <= 0)) && ((!bool) || (this.c.getMeasuredWidth() <= 0)))
              break label993;
            i2 = 1;
            label527: switch (this.z & 0x70)
            {
            default:
              paramInt1 = (i9 - i8 - i10 - i4) / 2;
              if (paramInt1 < ((fy)localObject1).topMargin + this.x)
                paramInt1 = ((fy)localObject1).topMargin + this.x;
              break;
            case 48:
            case 80:
            }
          }
          label915: label1688: label1694: 
          while (true)
          {
            label599: paramInt1 = i8 + paramInt1;
            label604: if (i3 != 0)
              if (i2 != 0)
              {
                paramInt4 = this.v;
                label620: paramInt4 -= arrayOfInt[1];
                paramInt2 -= Math.max(0, paramInt4);
                arrayOfInt[1] = Math.max(0, -paramInt4);
                if (!paramBoolean)
                  break label1688;
                localObject1 = (fy)this.b.getLayoutParams();
                paramInt4 = paramInt2 - this.b.getMeasuredWidth();
                i3 = this.b.getMeasuredHeight() + paramInt1;
                this.b.layout(paramInt4, paramInt1, paramInt2, i3);
                i4 = this.w;
                paramInt1 = i3 + ((fy)localObject1).bottomMargin;
                paramInt4 -= i4;
              }
            while (true)
            {
              if (bool)
              {
                localObject1 = (fy)this.c.getLayoutParams();
                paramInt1 = ((fy)localObject1).topMargin + paramInt1;
                i3 = this.c.getMeasuredWidth();
                i4 = this.c.getMeasuredHeight();
                this.c.layout(paramInt2 - i3, paramInt1, paramInt2, i4 + paramInt1);
                paramInt1 = this.w;
                i3 = ((fy)localObject1).bottomMargin;
              }
              for (paramInt1 = paramInt2 - paramInt1; ; paramInt1 = paramInt2)
              {
                if (i2 != 0);
                for (paramInt1 = Math.min(paramInt4, paramInt1); ; paramInt1 = paramInt2)
                {
                  paramInt4 = paramInt1;
                  paramInt1 = paramInt3;
                  a(this.G, 3);
                  paramInt3 = this.G.size();
                  paramInt2 = 0;
                  while (true)
                    if (paramInt2 < paramInt3)
                    {
                      paramInt1 = a((View)this.G.get(paramInt2), paramInt1, arrayOfInt, i5);
                      paramInt2 += 1;
                      continue;
                      i3 = 0;
                      break;
                      label876: paramInt1 = a(this.o, i1, arrayOfInt, i5);
                      break label111;
                      paramInt3 = a(this.s, paramInt1, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label151;
                      paramInt1 = b(this.a, paramInt2, arrayOfInt, i5);
                      paramInt4 = paramInt3;
                      break label191;
                      label936: paramInt1 = a(this.d, paramInt3, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label293;
                      label957: paramInt3 = a(this.p, paramInt1, arrayOfInt, i5);
                      break label326;
                      label975: localObject1 = this.c;
                      break label464;
                      label984: localObject2 = this.b;
                      break label475;
                      label993: i2 = 0;
                      break label527;
                      paramInt1 = getPaddingTop();
                      paramInt1 = ((fy)localObject1).topMargin + paramInt1 + this.x;
                      break label604;
                      paramInt4 = i9 - i10 - i4 - paramInt1 - i8;
                      if (paramInt4 >= ((fy)localObject1).bottomMargin + this.y)
                        break label1694;
                      paramInt1 = Math.max(0, paramInt1 - (((fy)localObject2).bottomMargin + this.y - paramInt4));
                      break label599;
                      paramInt1 = i9 - i10 - ((fy)localObject2).bottomMargin - this.y - i4;
                      break label604;
                      paramInt4 = 0;
                      break label620;
                      if (i2 != 0)
                      {
                        paramInt4 = this.v;
                        label1113: paramInt4 -= arrayOfInt[0];
                        paramInt3 += Math.max(0, paramInt4);
                        arrayOfInt[0] = Math.max(0, -paramInt4);
                        if (!paramBoolean)
                          break label1671;
                        localObject1 = (fy)this.b.getLayoutParams();
                        i3 = this.b.getMeasuredWidth() + paramInt3;
                        paramInt4 = this.b.getMeasuredHeight() + paramInt1;
                        this.b.layout(paramInt3, paramInt1, i3, paramInt4);
                        i4 = this.w;
                        paramInt1 = ((fy)localObject1).bottomMargin;
                        i3 += i4;
                        paramInt1 += paramInt4;
                      }
                    }
                  while (true)
                  {
                    if (bool)
                    {
                      localObject1 = (fy)this.c.getLayoutParams();
                      paramInt4 = paramInt1 + ((fy)localObject1).topMargin;
                      paramInt1 = this.c.getMeasuredWidth() + paramInt3;
                      i4 = this.c.getMeasuredHeight();
                      this.c.layout(paramInt3, paramInt4, paramInt1, i4 + paramInt4);
                      paramInt4 = this.w;
                      i4 = ((fy)localObject1).bottomMargin;
                    }
                    for (i4 = paramInt4 + paramInt1; ; i4 = paramInt3)
                    {
                      paramInt4 = paramInt2;
                      paramInt1 = paramInt3;
                      if (i2 == 0)
                        break;
                      paramInt1 = Math.max(i3, i4);
                      paramInt4 = paramInt2;
                      break;
                      paramInt4 = 0;
                      break label1113;
                      a(this.G, 5);
                      i2 = this.G.size();
                      paramInt3 = 0;
                      paramInt2 = paramInt4;
                      while (paramInt3 < i2)
                      {
                        paramInt2 = b((View)this.G.get(paramInt3), paramInt2, arrayOfInt, i5);
                        paramInt3 += 1;
                      }
                      a(this.G, 1);
                      localObject1 = this.G;
                      i3 = arrayOfInt[0];
                      i2 = arrayOfInt[1];
                      i4 = ((List)localObject1).size();
                      paramInt4 = 0;
                      paramInt3 = 0;
                      while (paramInt4 < i4)
                      {
                        localObject2 = (View)((List)localObject1).get(paramInt4);
                        fy localfy = (fy)((View)localObject2).getLayoutParams();
                        i3 = localfy.leftMargin - i3;
                        i2 = localfy.rightMargin - i2;
                        i8 = Math.max(0, i3);
                        i9 = Math.max(0, i2);
                        i3 = Math.max(0, -i3);
                        i2 = Math.max(0, -i2);
                        i10 = ((View)localObject2).getMeasuredWidth();
                        paramInt4 += 1;
                        paramInt3 += i10 + i8 + i9;
                      }
                      paramInt4 = (i6 - i1 - i7) / 2 + i1 - paramInt3 / 2;
                      paramInt3 = paramInt4 + paramInt3;
                      if (paramInt4 < paramInt1);
                      while (true)
                      {
                        paramInt4 = this.G.size();
                        paramInt3 = 0;
                        paramInt2 = paramInt1;
                        paramInt1 = paramInt3;
                        while (paramInt1 < paramInt4)
                        {
                          paramInt2 = a((View)this.G.get(paramInt1), paramInt2, arrayOfInt, i5);
                          paramInt1 += 1;
                        }
                        paramInt1 = paramInt4;
                        if (paramInt3 > paramInt2)
                          paramInt1 = paramInt4 - (paramInt3 - paramInt2);
                      }
                      this.G.clear();
                      return;
                    }
                    i3 = paramInt3;
                  }
                }
              }
              paramInt4 = paramInt2;
            }
          }
        }
        label1703: paramInt3 = paramInt1;
      }
      label1709: paramInt1 = i1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject = this.H;
    int i5;
    int i6;
    int i1;
    int i4;
    int i3;
    if (gj.a(this))
    {
      i5 = 0;
      i6 = 1;
      i1 = 0;
      if (!a(this.o))
        break label1008;
      a(this.o, paramInt1, 0, paramInt2, this.u);
      i1 = this.o.getMeasuredWidth() + b(this.o);
      i4 = Math.max(0, this.o.getMeasuredHeight() + c(this.o));
      i3 = gj.a(0, bl.j(this.o));
    }
    while (true)
    {
      int i7 = i1;
      i1 = i3;
      int i2 = i4;
      if (a(this.s))
      {
        a(this.s, paramInt1, 0, paramInt2, this.u);
        i7 = this.s.getMeasuredWidth() + b(this.s);
        i2 = Math.max(i4, this.s.getMeasuredHeight() + c(this.s));
        i1 = gj.a(i3, bl.j(this.s));
      }
      i3 = getContentInsetStart();
      int i8 = Math.max(i3, i7) + 0;
      localObject[i6] = Math.max(0, i3 - i7);
      i6 = 0;
      i3 = i1;
      i4 = i2;
      if (a(this.a))
      {
        a(this.a, paramInt1, i8, paramInt2, this.u);
        i6 = this.a.getMeasuredWidth() + b(this.a);
        i4 = Math.max(i2, this.a.getMeasuredHeight() + c(this.a));
        i3 = gj.a(i1, bl.j(this.a));
      }
      i1 = getContentInsetEnd();
      i7 = i8 + Math.max(i1, i6);
      localObject[i5] = Math.max(0, i1 - i6);
      i5 = i7;
      i1 = i3;
      i2 = i4;
      if (a(this.d))
      {
        i5 = i7 + a(this.d, paramInt1, i7, paramInt2, 0, (int[])localObject);
        i2 = Math.max(i4, this.d.getMeasuredHeight() + c(this.d));
        i1 = gj.a(i3, bl.j(this.d));
      }
      i3 = i5;
      i6 = i1;
      i4 = i2;
      if (a(this.p))
      {
        i3 = i5 + a(this.p, paramInt1, i5, paramInt2, 0, (int[])localObject);
        i4 = Math.max(i2, this.p.getMeasuredHeight() + c(this.p));
        i6 = gj.a(i1, bl.j(this.p));
      }
      i7 = getChildCount();
      i5 = 0;
      i1 = i6;
      i2 = i4;
      i4 = i5;
      i6 = i3;
      label512: if (i4 < i7)
      {
        View localView = getChildAt(i4);
        if ((((fy)localView.getLayoutParams()).b != 0) || (!a(localView)))
          break label995;
        i6 += a(localView, paramInt1, i6, paramInt2, 0, (int[])localObject);
        i3 = Math.max(i2, localView.getMeasuredHeight() + c(localView));
        i2 = gj.a(i1, bl.j(localView));
      }
      for (i1 = i3; ; i1 = i3)
      {
        i4 += 1;
        i3 = i1;
        i1 = i2;
        i2 = i3;
        break label512;
        i5 = 1;
        i6 = 0;
        break;
        i5 = 0;
        i4 = 0;
        int i9 = this.x + this.y;
        int i10 = this.v + this.w;
        i3 = i1;
        if (a(this.b))
        {
          a(this.b, paramInt1, i6 + i10, paramInt2, i9, (int[])localObject);
          i3 = this.b.getMeasuredWidth();
          i5 = b(this.b) + i3;
          i4 = this.b.getMeasuredHeight() + c(this.b);
          i3 = gj.a(i1, bl.j(this.b));
        }
        i8 = i4;
        i7 = i5;
        i1 = i3;
        if (a(this.c))
        {
          i7 = Math.max(i5, a(this.c, paramInt1, i6 + i10, paramInt2, i9 + i4, (int[])localObject));
          i8 = i4 + (this.c.getMeasuredHeight() + c(this.c));
          i1 = gj.a(i3, bl.j(this.c));
        }
        i3 = Math.max(i2, i8);
        i2 = getPaddingLeft();
        i8 = getPaddingRight();
        i4 = getPaddingTop();
        i5 = getPaddingBottom();
        i2 = bl.a(Math.max(i7 + i6 + (i2 + i8), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i1);
        paramInt2 = bl.a(Math.max(i3 + (i4 + i5), getSuggestedMinimumHeight()), paramInt2, i1 << 16);
        if (!this.L)
          paramInt1 = 0;
        while (true)
        {
          if (paramInt1 != 0)
            paramInt2 = 0;
          setMeasuredDimension(i2, paramInt2);
          return;
          i1 = getChildCount();
          paramInt1 = 0;
          while (true)
          {
            if (paramInt1 >= i1)
              break label990;
            localObject = getChildAt(paramInt1);
            if ((a((View)localObject)) && (((View)localObject).getMeasuredWidth() > 0) && (((View)localObject).getMeasuredHeight() > 0))
            {
              paramInt1 = 0;
              break;
            }
            paramInt1 += 1;
          }
          label990: paramInt1 = 1;
        }
        label995: i3 = i2;
        i2 = i1;
      }
      label1008: i3 = 0;
      i4 = 0;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof Toolbar.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    Toolbar.SavedState localSavedState = (Toolbar.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.a != null);
    for (paramParcelable = this.a.a; ; paramParcelable = null)
    {
      if ((localSavedState.a != 0) && (this.l != null) && (paramParcelable != null))
      {
        paramParcelable = paramParcelable.findItem(localSavedState.a);
        if (paramParcelable != null)
          an.b(paramParcelable);
      }
      if (!localSavedState.b)
        break;
      removeCallbacks(this.M);
      post(this.M);
      return;
    }
  }

  public void onRtlPropertiesChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 17)
      super.onRtlPropertiesChanged(paramInt);
    ev localev = this.i;
    if (paramInt == 1)
      if (bool != localev.g)
      {
        localev.g = bool;
        if (!localev.h)
          break label164;
        if (!bool)
          break label109;
        if (localev.d == -2147483648)
          break label93;
        paramInt = localev.d;
        label63: localev.a = paramInt;
        if (localev.c == -2147483648)
          break label101;
      }
    label93: label101: for (paramInt = localev.c; ; paramInt = localev.f)
    {
      localev.b = paramInt;
      return;
      bool = false;
      break;
      paramInt = localev.e;
      break label63;
    }
    label109: if (localev.c != -2147483648)
    {
      paramInt = localev.c;
      localev.a = paramInt;
      if (localev.d == -2147483648)
        break label156;
    }
    label156: for (paramInt = localev.d; ; paramInt = localev.f)
    {
      localev.b = paramInt;
      return;
      paramInt = localev.e;
      break;
    }
    label164: localev.a = localev.e;
    localev.b = localev.f;
  }

  protected Parcelable onSaveInstanceState()
  {
    Toolbar.SavedState localSavedState = new Toolbar.SavedState(super.onSaveInstanceState());
    if ((this.l != null) && (this.l.b != null))
      localSavedState.a = this.l.b.getItemId();
    localSavedState.b = a();
    return localSavedState;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = at.a(paramMotionEvent);
    if (i1 == 0)
      this.E = false;
    if (!this.E)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i1 == 0) && (!bool))
        this.E = true;
    }
    if ((i1 == 1) || (i1 == 3))
      this.E = false;
    return true;
  }

  public void setCollapsible(boolean paramBoolean)
  {
    this.L = paramBoolean;
    requestLayout();
  }

  public void setLogo(int paramInt)
  {
    setLogo(this.N.a(getContext(), paramInt, false));
  }

  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      f();
      if (!d(this.p))
        a(this.p, true);
    }
    while (true)
    {
      if (this.p != null)
        this.p.setImageDrawable(paramDrawable);
      return;
      if ((this.p != null) && (d(this.p)))
      {
        removeView(this.p);
        this.j.remove(this.p);
      }
    }
  }

  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }

  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
      f();
    if (this.p != null)
      this.p.setContentDescription(paramCharSequence);
  }

  public void setNavigationContentDescription(int paramInt)
  {
    if (paramInt != 0);
    for (CharSequence localCharSequence = getContext().getText(paramInt); ; localCharSequence = null)
    {
      setNavigationContentDescription(localCharSequence);
      return;
    }
  }

  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
      h();
    if (this.o != null)
      this.o.setContentDescription(paramCharSequence);
  }

  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(this.N.a(getContext(), paramInt, false));
  }

  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      h();
      if (!d(this.o))
        a(this.o, true);
    }
    while (true)
    {
      if (this.o != null)
        this.o.setImageDrawable(paramDrawable);
      return;
      if ((this.o != null) && (d(this.o)))
      {
        removeView(this.o);
        this.j.remove(this.o);
      }
    }
  }

  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    h();
    this.o.setOnClickListener(paramOnClickListener);
  }

  public void setOnMenuItemClickListener(fz paramfz)
  {
    this.I = paramfz;
  }

  public void setOverflowIcon(Drawable paramDrawable)
  {
    g();
    this.a.setOverflowIcon(paramDrawable);
  }

  public void setPopupTheme(int paramInt)
  {
    if (this.f != paramInt)
    {
      this.f = paramInt;
      if (paramInt == 0)
        this.e = getContext();
    }
    else
    {
      return;
    }
    this.e = new ContextThemeWrapper(getContext(), paramInt);
  }

  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.c == null)
      {
        Context localContext = getContext();
        this.c = new TextView(localContext);
        this.c.setSingleLine();
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        if (this.h != 0)
          this.c.setTextAppearance(localContext, this.h);
        if (this.D != 0)
          this.c.setTextColor(this.D);
      }
      if (!d(this.c))
        a(this.c, true);
    }
    while (true)
    {
      if (this.c != null)
        this.c.setText(paramCharSequence);
      this.B = paramCharSequence;
      return;
      if ((this.c != null) && (d(this.c)))
      {
        removeView(this.c);
        this.j.remove(this.c);
      }
    }
  }

  public void setSubtitleTextColor(int paramInt)
  {
    this.D = paramInt;
    if (this.c != null)
      this.c.setTextColor(paramInt);
  }

  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.b == null)
      {
        Context localContext = getContext();
        this.b = new TextView(localContext);
        this.b.setSingleLine();
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        if (this.g != 0)
          this.b.setTextAppearance(localContext, this.g);
        if (this.C != 0)
          this.b.setTextColor(this.C);
      }
      if (!d(this.b))
        a(this.b, true);
    }
    while (true)
    {
      if (this.b != null)
        this.b.setText(paramCharSequence);
      this.A = paramCharSequence;
      return;
      if ((this.b != null) && (d(this.b)))
      {
        removeView(this.b);
        this.j.remove(this.b);
      }
    }
  }

  public void setTitleTextColor(int paramInt)
  {
    this.C = paramInt;
    if (this.b != null)
      this.b.setTextColor(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.Toolbar
 * JD-Core Version:    0.6.2
 */