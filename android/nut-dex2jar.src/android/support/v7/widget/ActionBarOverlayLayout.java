package android.support.v7.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bb;
import android.support.v4.view.bc;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v4.view.dt;
import android.support.v4.widget.ai;
import android.support.v7.b.b;
import android.support.v7.view.menu.y;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public class ActionBarOverlayLayout extends ViewGroup
  implements bb, bt
{
  static final int[] b = { b.actionBarSize, 16842841 };
  private final Runnable A = new h(this);
  private final bc B;
  public boolean a;
  private int c;
  private int d = 0;
  private ContentFrameLayout e;
  private ActionBarContainer f;
  private bu g;
  private Drawable h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private int m;
  private int n;
  private final Rect o = new Rect();
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private i u;
  private final int v = 600;
  private ai w;
  private dd x;
  private final dt y = new f(this);
  private final Runnable z = new g(this);

  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    this.B = new bc(this);
  }

  private void a(Context paramContext)
  {
    boolean bool2 = true;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(b);
    this.c = localTypedArray.getDimensionPixelSize(0, 0);
    this.h = localTypedArray.getDrawable(1);
    if (this.h == null)
    {
      bool1 = true;
      setWillNotDraw(bool1);
      localTypedArray.recycle();
      if (paramContext.getApplicationInfo().targetSdkVersion >= 19)
        break label91;
    }
    label91: for (boolean bool1 = bool2; ; bool1 = false)
    {
      this.i = bool1;
      this.w = ai.a(paramContext, null);
      return;
      bool1 = false;
      break;
    }
  }

  private static boolean a(View paramView, Rect paramRect, boolean paramBoolean)
  {
    boolean bool = false;
    paramView = (j)paramView.getLayoutParams();
    if (paramView.leftMargin != paramRect.left)
    {
      paramView.leftMargin = paramRect.left;
      bool = true;
    }
    if (paramView.topMargin != paramRect.top)
    {
      paramView.topMargin = paramRect.top;
      bool = true;
    }
    if (paramView.rightMargin != paramRect.right)
    {
      paramView.rightMargin = paramRect.right;
      bool = true;
    }
    if ((paramBoolean) && (paramView.bottomMargin != paramRect.bottom))
    {
      paramView.bottomMargin = paramRect.bottom;
      return true;
    }
    return bool;
  }

  private void h()
  {
    if (this.e == null)
    {
      this.e = ((ContentFrameLayout)findViewById(android.support.v7.b.g.action_bar_activity_content));
      this.f = ((ActionBarContainer)findViewById(android.support.v7.b.g.action_bar_container));
      localObject = findViewById(android.support.v7.b.g.action_bar);
      if (!(localObject instanceof bu))
        break label61;
    }
    for (Object localObject = (bu)localObject; ; localObject = ((Toolbar)localObject).getWrapper())
    {
      this.g = ((bu)localObject);
      return;
      label61: if (!(localObject instanceof Toolbar))
        break;
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + localObject.getClass().getSimpleName());
  }

  private void i()
  {
    removeCallbacks(this.z);
    removeCallbacks(this.A);
    if (this.x != null)
      this.x.a();
  }

  public final void a(int paramInt)
  {
    h();
    switch (paramInt)
    {
    default:
      return;
    case 2:
      this.g.f();
      return;
    case 5:
      this.g.g();
      return;
    case 109:
    }
    setOverlayMode(true);
  }

  public final void a(Menu paramMenu, y paramy)
  {
    h();
    this.g.a(paramMenu, paramy);
  }

  public final boolean a()
  {
    h();
    return this.g.h();
  }

  public final boolean b()
  {
    h();
    return this.g.i();
  }

  public final boolean c()
  {
    h();
    return this.g.j();
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof j;
  }

  public final boolean d()
  {
    h();
    return this.g.k();
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.h != null) && (!this.i))
      if (this.f.getVisibility() != 0)
        break label82;
    label82: for (int i1 = (int)(this.f.getBottom() + bl.l(this.f) + 0.5F); ; i1 = 0)
    {
      this.h.setBounds(0, i1, getWidth(), this.h.getIntrinsicHeight() + i1);
      this.h.draw(paramCanvas);
      return;
    }
  }

  public final boolean e()
  {
    h();
    return this.g.l();
  }

  public final void f()
  {
    h();
    this.g.m();
  }

  protected boolean fitSystemWindows(Rect paramRect)
  {
    h();
    bl.p(this);
    boolean bool = a(this.f, paramRect, false);
    this.r.set(paramRect);
    gj.a(this, this.r, this.o);
    if (!this.p.equals(this.o))
    {
      this.p.set(this.o);
      bool = true;
    }
    if (bool)
      requestLayout();
    return true;
  }

  public final void g()
  {
    h();
    this.g.n();
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new j(paramLayoutParams);
  }

  public int getActionBarHideOffset()
  {
    if (this.f != null)
      return -(int)bl.l(this.f);
    return 0;
  }

  public int getNestedScrollAxes()
  {
    return this.B.a;
  }

  public CharSequence getTitle()
  {
    h();
    return this.g.e();
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    a(getContext());
    bl.q(this);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        j localj = (j)localView.getLayoutParams();
        int i1 = localView.getMeasuredWidth();
        int i2 = localView.getMeasuredHeight();
        int i3 = localj.leftMargin + paramInt3;
        int i4 = localj.topMargin + paramInt4;
        localView.layout(i3, i4, i1 + i3, i2 + i4);
      }
      paramInt1 += 1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    h();
    measureChildWithMargins(this.f, paramInt1, 0, paramInt2, 0);
    Object localObject = (j)this.f.getLayoutParams();
    int i6 = Math.max(0, this.f.getMeasuredWidth() + ((j)localObject).leftMargin + ((j)localObject).rightMargin);
    int i1 = this.f.getMeasuredHeight();
    int i2 = ((j)localObject).topMargin;
    int i5 = Math.max(0, ((j)localObject).bottomMargin + (i1 + i2));
    int i4 = gj.a(0, bl.j(this.f));
    int i3;
    if ((bl.p(this) & 0x100) != 0)
    {
      i2 = 1;
      if (i2 == 0)
        break label444;
      i3 = this.c;
      i1 = i3;
      if (this.j)
      {
        i1 = i3;
        if (this.f.getTabContainer() != null)
          i1 = i3 + this.c;
      }
    }
    while (true)
    {
      label153: this.q.set(this.o);
      this.s.set(this.r);
      if ((!this.a) && (i2 == 0))
      {
        localObject = this.q;
        ((Rect)localObject).top = (i1 + ((Rect)localObject).top);
        localObject = this.q;
      }
      for (((Rect)localObject).bottom += 0; ; ((Rect)localObject).bottom += 0)
      {
        a(this.e, this.q, true);
        if (!this.t.equals(this.s))
        {
          this.t.set(this.s);
          this.e.a(this.s);
        }
        measureChildWithMargins(this.e, paramInt1, 0, paramInt2, 0);
        localObject = (j)this.e.getLayoutParams();
        i1 = Math.max(i6, this.e.getMeasuredWidth() + ((j)localObject).leftMargin + ((j)localObject).rightMargin);
        i2 = this.e.getMeasuredHeight();
        i3 = ((j)localObject).topMargin;
        i2 = Math.max(i5, ((j)localObject).bottomMargin + (i2 + i3));
        i3 = gj.a(i4, bl.j(this.e));
        i4 = getPaddingLeft();
        i5 = getPaddingRight();
        i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(bl.a(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), bl.a(i2, paramInt2, i3 << 16));
        return;
        i2 = 0;
        break;
        label444: if (this.f.getVisibility() == 8)
          break label506;
        i1 = this.f.getMeasuredHeight();
        break label153;
        localObject = this.s;
        ((Rect)localObject).top = (i1 + ((Rect)localObject).top);
        localObject = this.s;
      }
      label506: i1 = 0;
    }
  }

  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i1 = 0;
    if ((!this.k) || (!paramBoolean))
      return false;
    this.w.a(0, (int)paramFloat2, 0, 0);
    if (this.w.d() > this.f.getHeight())
      i1 = 1;
    if (i1 != 0)
    {
      i();
      this.A.run();
    }
    while (true)
    {
      this.l = true;
      return true;
      i();
      this.z.run();
    }
  }

  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
  }

  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.m += paramInt2;
    setActionBarHideOffset(this.m);
  }

  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.B.a = paramInt;
    this.m = getActionBarHideOffset();
    i();
    if (this.u != null)
      this.u.m();
  }

  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (this.f.getVisibility() != 0))
      return false;
    return this.k;
  }

  public void onStopNestedScroll(View paramView)
  {
    if ((this.k) && (!this.l))
    {
      if (this.m <= this.f.getHeight())
      {
        i();
        postDelayed(this.z, 600L);
      }
    }
    else
      return;
    i();
    postDelayed(this.A, 600L);
  }

  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 16)
      super.onWindowSystemUiVisibilityChanged(paramInt);
    h();
    int i3 = this.n;
    this.n = paramInt;
    int i1;
    int i2;
    if ((paramInt & 0x4) == 0)
    {
      i1 = 1;
      if ((paramInt & 0x100) == 0)
        break label120;
      i2 = 1;
      label49: if (this.u != null)
      {
        i locali = this.u;
        if (i2 != 0)
          break label125;
        label66: locali.d(bool);
        if ((i1 == 0) && (i2 != 0))
          break label131;
        this.u.k();
      }
    }
    while (true)
    {
      if ((((i3 ^ paramInt) & 0x100) != 0) && (this.u != null))
        bl.q(this);
      return;
      i1 = 0;
      break;
      label120: i2 = 0;
      break label49;
      label125: bool = false;
      break label66;
      label131: this.u.l();
    }
  }

  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    this.d = paramInt;
    if (this.u != null)
      this.u.a(paramInt);
  }

  public void setActionBarHideOffset(int paramInt)
  {
    i();
    paramInt = Math.max(0, Math.min(paramInt, this.f.getHeight()));
    bl.b(this.f, -paramInt);
  }

  public void setActionBarVisibilityCallback(i parami)
  {
    this.u = parami;
    if (getWindowToken() != null)
    {
      this.u.a(this.d);
      if (this.n != 0)
      {
        onWindowSystemUiVisibilityChanged(this.n);
        bl.q(this);
      }
    }
  }

  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.k)
    {
      this.k = paramBoolean;
      if (!paramBoolean)
      {
        i();
        setActionBarHideOffset(0);
      }
    }
  }

  public void setIcon(int paramInt)
  {
    h();
    this.g.a(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    h();
    this.g.a(paramDrawable);
  }

  public void setLogo(int paramInt)
  {
    h();
    this.g.b(paramInt);
  }

  public void setOverlayMode(boolean paramBoolean)
  {
    this.a = paramBoolean;
    if ((paramBoolean) && (getContext().getApplicationInfo().targetSdkVersion < 19));
    for (paramBoolean = true; ; paramBoolean = false)
    {
      this.i = paramBoolean;
      return;
    }
  }

  public void setShowingForActionMode(boolean paramBoolean)
  {
  }

  public void setUiOptions(int paramInt)
  {
  }

  public void setWindowCallback(Window.Callback paramCallback)
  {
    h();
    this.g.a(paramCallback);
  }

  public void setWindowTitle(CharSequence paramCharSequence)
  {
    h();
    this.g.a(paramCharSequence);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActionBarOverlayLayout
 * JD-Core Version:    0.6.2
 */