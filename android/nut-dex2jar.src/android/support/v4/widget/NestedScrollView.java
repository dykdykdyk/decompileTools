package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.at;
import android.support.v4.view.az;
import android.support.v4.view.ba;
import android.support.v4.view.bb;
import android.support.v4.view.bc;
import android.support.v4.view.bf;
import android.support.v4.view.bh;
import android.support.v4.view.bl;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public class NestedScrollView extends FrameLayout
  implements az, bb, bf
{
  private static final v v = new v();
  private static final int[] w = { 16843130 };
  private w A;
  private long a;
  private final Rect b = new Rect();
  private ai c = ai.a(getContext(), null);
  private o d;
  private o e;
  private int f;
  private boolean g = true;
  private boolean h = false;
  private View i = null;
  private boolean j = false;
  private VelocityTracker k;
  private boolean l;
  private boolean m = true;
  private int n;
  private int o;
  private int p;
  private int q = -1;
  private final int[] r = new int[2];
  private final int[] s = new int[2];
  private int t;
  private NestedScrollView.SavedState u;
  private final bc x;
  private final ba y;
  private float z;

  public NestedScrollView(Context paramContext)
  {
    this(paramContext, null);
  }

  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFocusable(true);
    setDescendantFocusability(262144);
    setWillNotDraw(false);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.n = localViewConfiguration.getScaledTouchSlop();
    this.o = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.p = localViewConfiguration.getScaledMaximumFlingVelocity();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, w, paramInt, 0);
    setFillViewport(paramContext.getBoolean(0, false));
    paramContext.recycle();
    this.x = new bc(this);
    this.y = new ba(this);
    setNestedScrollingEnabled(true);
    bl.a(this, v);
  }

  private int a(Rect paramRect)
  {
    if (getChildCount() == 0)
      return 0;
    int i4 = getHeight();
    int i1 = getScrollY();
    int i3 = i1 + i4;
    int i5 = getVerticalFadingEdgeLength();
    int i2 = i1;
    if (paramRect.top > 0)
      i2 = i1 + i5;
    i1 = i3;
    if (paramRect.bottom < getChildAt(0).getHeight())
      i1 = i3 - i5;
    if ((paramRect.bottom > i1) && (paramRect.top > i2))
      if (paramRect.height() > i4)
      {
        i2 = paramRect.top - i2 + 0;
        i1 = Math.min(i2, getChildAt(0).getBottom() - i1);
      }
    while (true)
    {
      return i1;
      i2 = paramRect.bottom - i1 + 0;
      break;
      if ((paramRect.top < i2) && (paramRect.bottom < i1))
      {
        if (paramRect.height() > i4);
        for (i1 = 0 - (i1 - paramRect.bottom); ; i1 = 0 - (i2 - paramRect.top))
        {
          i1 = Math.max(i1, -getScrollY());
          break;
        }
      }
      i1 = 0;
    }
  }

  private void a()
  {
    if (this.k == null)
      this.k = VelocityTracker.obtain();
  }

  private void a(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0)
      return;
    if (AnimationUtils.currentAnimationTimeMillis() - this.a > 250L)
    {
      paramInt1 = getHeight();
      int i1 = getPaddingBottom();
      int i2 = getPaddingTop();
      i1 = Math.max(0, getChildAt(0).getHeight() - (paramInt1 - i1 - i2));
      paramInt1 = getScrollY();
      paramInt2 = Math.max(0, Math.min(paramInt1 + paramInt2, i1));
      ai localai = this.c;
      i1 = getScrollX();
      localai.b.a(localai.a, i1, paramInt1, paramInt2 - paramInt1);
      bl.d(this);
    }
    while (true)
    {
      this.a = AnimationUtils.currentAnimationTimeMillis();
      return;
      if (!this.c.a())
        this.c.g();
      scrollBy(paramInt1, paramInt2);
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = (paramMotionEvent.getAction() & 0xFF00) >> 8;
    if (at.b(paramMotionEvent, i1) == this.q)
      if (i1 != 0)
        break label64;
    label64: for (i1 = 1; ; i1 = 0)
    {
      this.f = ((int)at.d(paramMotionEvent, i1));
      this.q = at.b(paramMotionEvent, i1);
      if (this.k != null)
        this.k.clear();
      return;
    }
  }

  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = getHeight();
    int i6 = getScrollY();
    int i7 = i6 + i1;
    int i3;
    Object localObject1;
    int i4;
    label53: Object localObject2;
    int i5;
    int i9;
    int i2;
    if (paramInt1 == 33)
    {
      i3 = 1;
      ArrayList localArrayList = getFocusables(2);
      localObject1 = null;
      i1 = 0;
      int i8 = localArrayList.size();
      i4 = 0;
      if (i4 >= i8)
        break label237;
      localObject2 = (View)localArrayList.get(i4);
      i5 = ((View)localObject2).getTop();
      i9 = ((View)localObject2).getBottom();
      if ((paramInt2 >= i9) || (i5 >= paramInt3))
        break label312;
      if ((paramInt2 >= i5) || (i9 >= paramInt3))
        break label143;
      i2 = 1;
      label115: if (localObject1 != null)
        break label149;
      localObject1 = localObject2;
      i1 = i2;
    }
    label143: label149: label312: 
    while (true)
    {
      i4 += 1;
      break label53;
      i3 = 0;
      break;
      i2 = 0;
      break label115;
      if (((i3 != 0) && (i5 < localObject1.getTop())) || ((i3 == 0) && (i9 > localObject1.getBottom())));
      for (i5 = 1; ; i5 = 0)
      {
        if (i1 == 0)
          break label210;
        if ((i2 == 0) || (i5 == 0))
          break label312;
        localObject1 = localObject2;
        break;
      }
      label210: if (i2 != 0)
      {
        localObject1 = localObject2;
        i1 = 1;
      }
      else if (i5 != 0)
      {
        localObject1 = localObject2;
        continue;
        label237: localObject2 = localObject1;
        if (localObject1 == null)
          localObject2 = this;
        boolean bool;
        if ((paramInt2 >= i6) && (paramInt3 <= i7))
        {
          bool = false;
          if (localObject2 != findFocus())
            ((View)localObject2).requestFocus(paramInt1);
          return bool;
        }
        if (i3 != 0)
          paramInt2 -= i6;
        while (true)
        {
          d(paramInt2);
          bool = true;
          break;
          paramInt2 = paramInt3 - i7;
        }
      }
    }
  }

  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    boolean bool3 = false;
    bl.a(this);
    computeHorizontalScrollRange();
    computeHorizontalScrollExtent();
    computeVerticalScrollRange();
    computeVerticalScrollExtent();
    paramInt1 = paramInt3 + paramInt1;
    paramInt2 = paramInt4 + paramInt2;
    paramInt3 = paramInt5 + 0;
    boolean bool1;
    if (paramInt1 > 0)
    {
      bool1 = true;
      paramInt1 = 0;
    }
    while (true)
    {
      boolean bool2;
      if (paramInt2 > paramInt3)
      {
        paramInt2 = paramInt3;
        bool2 = true;
      }
      while (true)
      {
        if (bool2)
          this.c.a(paramInt1, paramInt2, getScrollRange());
        onOverScrolled(paramInt1, paramInt2, bool1, bool2);
        if (!bool1)
        {
          bool1 = bool3;
          if (!bool2);
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        if (paramInt1 >= 0)
          break label140;
        bool1 = true;
        paramInt1 = 0;
        break;
        if (paramInt2 < 0)
        {
          bool2 = true;
          paramInt2 = 0;
        }
        else
        {
          bool2 = false;
        }
      }
      label140: bool1 = false;
    }
  }

  private boolean a(View paramView)
  {
    boolean bool = false;
    if (!a(paramView, 0, getHeight()))
      bool = true;
    return bool;
  }

  private boolean a(View paramView, int paramInt1, int paramInt2)
  {
    paramView.getDrawingRect(this.b);
    offsetDescendantRectToMyCoords(paramView, this.b);
    return (this.b.bottom + paramInt1 >= getScrollY()) && (this.b.top - paramInt1 <= getScrollY() + paramInt2);
  }

  private static boolean a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2)
      return true;
    paramView1 = paramView1.getParent();
    return ((paramView1 instanceof ViewGroup)) && (a((View)paramView1, paramView2));
  }

  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramInt2 >= paramInt3) || (paramInt1 < 0))
      i1 = 0;
    do
    {
      return i1;
      i1 = paramInt1;
    }
    while (paramInt2 + paramInt1 <= paramInt3);
    return paramInt3 - paramInt2;
  }

  private void b()
  {
    if (this.k != null)
    {
      this.k.recycle();
      this.k = null;
    }
  }

  private void b(View paramView)
  {
    paramView.getDrawingRect(this.b);
    offsetDescendantRectToMyCoords(paramView, this.b);
    int i1 = a(this.b);
    if (i1 != 0)
      scrollBy(0, i1);
  }

  private boolean b(int paramInt)
  {
    if (paramInt == 130);
    for (int i1 = 1; ; i1 = 0)
    {
      int i2 = getHeight();
      this.b.top = 0;
      this.b.bottom = i2;
      if (i1 != 0)
      {
        i1 = getChildCount();
        if (i1 > 0)
        {
          View localView = getChildAt(i1 - 1);
          this.b.bottom = (localView.getBottom() + getPaddingBottom());
          this.b.top = (this.b.bottom - i2);
        }
      }
      return a(paramInt, this.b.top, this.b.bottom);
    }
  }

  private void c()
  {
    this.j = false;
    b();
    stopNestedScroll();
    if (this.d != null)
    {
      this.d.c();
      this.e.c();
    }
  }

  private boolean c(int paramInt)
  {
    View localView2 = findFocus();
    View localView1 = localView2;
    if (localView2 == this)
      localView1 = null;
    localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    int i2 = getMaxScrollAmount();
    if ((localView2 != null) && (a(localView2, i2, getHeight())))
    {
      localView2.getDrawingRect(this.b);
      offsetDescendantRectToMyCoords(localView2, this.b);
      d(a(this.b));
      localView2.requestFocus(paramInt);
      if ((localView1 != null) && (localView1.isFocused()) && (a(localView1)))
      {
        paramInt = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(paramInt);
      }
      return true;
    }
    int i1;
    if ((paramInt == 33) && (getScrollY() < i2))
      i1 = getScrollY();
    while (i1 == 0)
    {
      return false;
      i1 = i2;
      if (paramInt == 130)
      {
        i1 = i2;
        if (getChildCount() > 0)
        {
          int i3 = getChildAt(0).getBottom();
          int i4 = getScrollY() + getHeight() - getPaddingBottom();
          i1 = i2;
          if (i3 - i4 < i2)
            i1 = i3 - i4;
        }
      }
    }
    if (paramInt == 130);
    while (true)
    {
      d(i1);
      break;
      i1 = -i1;
    }
  }

  private void d()
  {
    if (bl.a(this) != 2)
    {
      if (this.d == null)
      {
        Context localContext = getContext();
        this.d = new o(localContext);
        this.e = new o(localContext);
      }
      return;
    }
    this.d = null;
    this.e = null;
  }

  private void d(int paramInt)
  {
    if (paramInt != 0)
    {
      if (this.m)
        a(0, paramInt);
    }
    else
      return;
    scrollBy(0, paramInt);
  }

  private void e(int paramInt)
  {
    int i1 = getScrollY();
    if (((i1 > 0) || (paramInt > 0)) && ((i1 < getScrollRange()) || (paramInt < 0)));
    for (boolean bool = true; ; bool = false)
    {
      if (!dispatchNestedPreFling(0.0F, paramInt))
      {
        dispatchNestedFling(0.0F, paramInt, bool);
        if ((bool) && (getChildCount() > 0))
        {
          int i3 = getHeight() - getPaddingBottom() - getPaddingTop();
          int i4 = getChildAt(0).getHeight();
          ai localai = this.c;
          i1 = getScrollX();
          int i2 = getScrollY();
          i4 = Math.max(0, i4 - i3);
          i3 /= 2;
          localai.b.a(localai.a, i1, i2, paramInt, i4, i3);
          bl.d(this);
        }
      }
      return;
    }
  }

  private int getScrollRange()
  {
    int i1 = 0;
    if (getChildCount() > 0)
      i1 = Math.max(0, getChildAt(0).getHeight() - (getHeight() - getPaddingBottom() - getPaddingTop()));
    return i1;
  }

  private float getVerticalScrollFactorCompat()
  {
    if (this.z == 0.0F)
    {
      TypedValue localTypedValue = new TypedValue();
      Context localContext = getContext();
      if (!localContext.getTheme().resolveAttribute(16842829, localTypedValue, true))
        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
      this.z = localTypedValue.getDimension(localContext.getResources().getDisplayMetrics());
    }
    return this.z;
  }

  public final void a(int paramInt)
  {
    a(0 - getScrollX(), paramInt - getScrollY());
  }

  public final boolean a(KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    this.b.setEmpty();
    View localView = getChildAt(0);
    int i1;
    boolean bool1;
    if (localView != null)
    {
      i1 = localView.getHeight();
      if (getHeight() < i1 + getPaddingTop() + getPaddingBottom())
      {
        i1 = 1;
        if (i1 != 0)
          break label151;
        bool1 = bool2;
        if (isFocused())
        {
          bool1 = bool2;
          if (paramKeyEvent.getKeyCode() != 4)
          {
            localView = findFocus();
            paramKeyEvent = localView;
            if (localView == this)
              paramKeyEvent = null;
            paramKeyEvent = FocusFinder.getInstance().findNextFocus(this, paramKeyEvent, 130);
            bool1 = bool2;
            if (paramKeyEvent != null)
            {
              bool1 = bool2;
              if (paramKeyEvent != this)
              {
                bool1 = bool2;
                if (paramKeyEvent.requestFocus(130))
                  bool1 = true;
              }
            }
          }
        }
      }
    }
    label151: 
    do
    {
      return bool1;
      i1 = 0;
      break;
      i1 = 0;
      break;
      bool1 = bool2;
    }
    while (paramKeyEvent.getAction() != 0);
    switch (paramKeyEvent.getKeyCode())
    {
    default:
      return false;
    case 19:
      if (!paramKeyEvent.isAltPressed())
        return c(33);
      return b(33);
    case 20:
      if (!paramKeyEvent.isAltPressed())
        return c(130);
      return b(130);
    case 62:
    }
    int i2;
    label265: int i3;
    if (paramKeyEvent.isShiftPressed())
    {
      i1 = 33;
      if (i1 != 130)
        break label383;
      i2 = 1;
      i3 = getHeight();
      if (i2 == 0)
        break label388;
      this.b.top = (getScrollY() + i3);
      i2 = getChildCount();
      if (i2 > 0)
      {
        paramKeyEvent = getChildAt(i2 - 1);
        if (this.b.top + i3 > paramKeyEvent.getBottom())
          this.b.top = (paramKeyEvent.getBottom() - i3);
      }
    }
    while (true)
    {
      this.b.bottom = (i3 + this.b.top);
      a(i1, this.b.top, this.b.bottom);
      return false;
      i1 = 130;
      break;
      label383: i2 = 0;
      break label265;
      label388: this.b.top = (getScrollY() - i3);
      if (this.b.top < 0)
        this.b.top = 0;
    }
  }

  public void addView(View paramView)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("ScrollView can host only one direct child");
    super.addView(paramView);
  }

  public void addView(View paramView, int paramInt)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("ScrollView can host only one direct child");
    super.addView(paramView, paramInt);
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("ScrollView can host only one direct child");
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("ScrollView can host only one direct child");
    super.addView(paramView, paramLayoutParams);
  }

  public int computeHorizontalScrollExtent()
  {
    return super.computeHorizontalScrollExtent();
  }

  public int computeHorizontalScrollOffset()
  {
    return super.computeHorizontalScrollOffset();
  }

  public int computeHorizontalScrollRange()
  {
    return super.computeHorizontalScrollRange();
  }

  public void computeScroll()
  {
    int i3;
    int i5;
    int i6;
    int i1;
    if (this.c.f())
    {
      int i2 = getScrollX();
      i3 = getScrollY();
      int i4 = this.c.b();
      i5 = this.c.c();
      if ((i2 != i4) || (i3 != i5))
      {
        i6 = getScrollRange();
        i1 = bl.a(this);
        if ((i1 != 0) && ((i1 != 1) || (i6 <= 0)))
          break label128;
        i1 = 1;
        a(i4 - i2, i5 - i3, i2, i3, i6);
        if (i1 != 0)
        {
          d();
          if ((i5 > 0) || (i3 <= 0))
            break label133;
          this.d.a((int)this.c.e());
        }
      }
    }
    label128: label133: 
    while ((i5 < i6) || (i3 >= i6))
    {
      return;
      i1 = 0;
      break;
    }
    this.e.a((int)this.c.e());
  }

  public int computeVerticalScrollExtent()
  {
    return super.computeVerticalScrollExtent();
  }

  public int computeVerticalScrollOffset()
  {
    return Math.max(0, super.computeVerticalScrollOffset());
  }

  public int computeVerticalScrollRange()
  {
    int i2 = getChildCount();
    int i1 = getHeight() - getPaddingBottom() - getPaddingTop();
    if (i2 == 0);
    int i3;
    int i4;
    do
    {
      return i1;
      i2 = getChildAt(0).getBottom();
      i3 = getScrollY();
      i4 = Math.max(0, i2 - i1);
      if (i3 < 0)
        return i2 - i3;
      i1 = i2;
    }
    while (i3 <= i4);
    return i2 + (i3 - i4);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }

  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return this.y.a(paramFloat1, paramFloat2, paramBoolean);
  }

  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return this.y.a(paramFloat1, paramFloat2);
  }

  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return this.y.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }

  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return this.y.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (this.d != null)
    {
      int i1 = getScrollY();
      int i2;
      int i3;
      int i4;
      if (!this.d.a())
      {
        i2 = paramCanvas.save();
        i3 = getWidth();
        i4 = getPaddingLeft();
        int i5 = getPaddingRight();
        paramCanvas.translate(getPaddingLeft(), Math.min(0, i1));
        this.d.a(i3 - i4 - i5, getHeight());
        if (this.d.a(paramCanvas))
          bl.d(this);
        paramCanvas.restoreToCount(i2);
      }
      if (!this.e.a())
      {
        i2 = paramCanvas.save();
        i3 = getWidth() - getPaddingLeft() - getPaddingRight();
        i4 = getHeight();
        paramCanvas.translate(-i3 + getPaddingLeft(), Math.max(getScrollRange(), i1) + i4);
        paramCanvas.rotate(180.0F, i3, 0.0F);
        this.e.a(i3, i4);
        if (this.e.a(paramCanvas))
          bl.d(this);
        paramCanvas.restoreToCount(i2);
      }
    }
  }

  protected float getBottomFadingEdgeStrength()
  {
    if (getChildCount() == 0)
      return 0.0F;
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getHeight();
    int i3 = getPaddingBottom();
    i2 = getChildAt(0).getBottom() - getScrollY() - (i2 - i3);
    if (i2 < i1)
      return i2 / i1;
    return 1.0F;
  }

  public int getMaxScrollAmount()
  {
    return (int)(0.5F * getHeight());
  }

  public int getNestedScrollAxes()
  {
    return this.x.a;
  }

  protected float getTopFadingEdgeStrength()
  {
    if (getChildCount() == 0)
      return 0.0F;
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getScrollY();
    if (i2 < i1)
      return i2 / i1;
    return 1.0F;
  }

  public boolean hasNestedScrollingParent()
  {
    return this.y.a();
  }

  public boolean isNestedScrollingEnabled()
  {
    return this.y.a;
  }

  protected void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), localLayoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
  }

  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    paramInt1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width);
    paramInt2 = localMarginLayoutParams.topMargin;
    paramView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(localMarginLayoutParams.bottomMargin + paramInt2, 0));
  }

  public void onAttachedToWindow()
  {
    this.h = false;
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if ((at.c(paramMotionEvent) & 0x2) != 0)
      switch (paramMotionEvent.getAction())
      {
      default:
      case 8:
      }
    while (true)
    {
      return false;
      if (!this.j)
      {
        float f1 = at.e(paramMotionEvent, 9);
        if (f1 != 0.0F)
        {
          int i1 = (int)(f1 * getVerticalScrollFactorCompat());
          int i2 = getScrollRange();
          int i4 = getScrollY();
          int i3 = i4 - i1;
          if (i3 < 0)
            i1 = 0;
          while (i1 != i4)
          {
            super.scrollTo(getScrollX(), i1);
            return true;
            i1 = i2;
            if (i3 <= i2)
              i1 = i3;
          }
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 2) && (this.j))
      return true;
    switch (i1 & 0xFF)
    {
    case 4:
    case 5:
    default:
    case 2:
    case 0:
    case 1:
    case 3:
    case 6:
    }
    while (true)
    {
      return this.j;
      i1 = this.q;
      if (i1 != -1)
      {
        int i2 = at.a(paramMotionEvent, i1);
        if (i2 == -1)
        {
          Log.e("NestedScrollView", "Invalid pointerId=" + i1 + " in onInterceptTouchEvent");
        }
        else
        {
          i1 = (int)at.d(paramMotionEvent, i2);
          if ((Math.abs(i1 - this.f) > this.n) && ((getNestedScrollAxes() & 0x2) == 0))
          {
            this.j = true;
            this.f = i1;
            a();
            this.k.addMovement(paramMotionEvent);
            this.t = 0;
            paramMotionEvent = getParent();
            if (paramMotionEvent != null)
            {
              paramMotionEvent.requestDisallowInterceptTouchEvent(true);
              continue;
              i2 = (int)paramMotionEvent.getY();
              i1 = (int)paramMotionEvent.getX();
              if (getChildCount() > 0)
              {
                int i3 = getScrollY();
                View localView = getChildAt(0);
                if ((i2 >= localView.getTop() - i3) && (i2 < localView.getBottom() - i3) && (i1 >= localView.getLeft()) && (i1 < localView.getRight()))
                  i1 = 1;
              }
              while (true)
              {
                if (i1 != 0)
                  break label307;
                this.j = false;
                b();
                break;
                i1 = 0;
                continue;
                i1 = 0;
              }
              label307: this.f = i2;
              this.q = at.b(paramMotionEvent, 0);
              if (this.k == null)
              {
                this.k = VelocityTracker.obtain();
                label335: this.k.addMovement(paramMotionEvent);
                this.c.f();
                if (this.c.a())
                  break label386;
              }
              while (true)
              {
                this.j = bool;
                startNestedScroll(2);
                break;
                this.k.clear();
                break label335;
                label386: bool = false;
              }
              this.j = false;
              this.q = -1;
              b();
              if (this.c.a(getScrollX(), getScrollY(), getScrollRange()))
                bl.d(this);
              stopNestedScroll();
              continue;
              a(paramMotionEvent);
            }
          }
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.g = false;
    if ((this.i != null) && (a(this.i, this)))
      b(this.i);
    this.i = null;
    if (!this.h)
    {
      if (this.u != null)
      {
        scrollTo(getScrollX(), this.u.a);
        this.u = null;
      }
      if (getChildCount() <= 0)
        break label153;
      paramInt1 = getChildAt(0).getMeasuredHeight();
      paramInt1 = Math.max(0, paramInt1 - (paramInt4 - paramInt2 - getPaddingBottom() - getPaddingTop()));
      if (getScrollY() <= paramInt1)
        break label158;
      scrollTo(getScrollX(), paramInt1);
    }
    while (true)
    {
      scrollTo(getScrollX(), getScrollY());
      this.h = true;
      return;
      label153: paramInt1 = 0;
      break;
      label158: if (getScrollY() < 0)
        scrollTo(getScrollX(), 0);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!this.l);
    View localView;
    do
    {
      do
        return;
      while ((View.MeasureSpec.getMode(paramInt2) == 0) || (getChildCount() <= 0));
      localView = getChildAt(0);
      paramInt2 = getMeasuredHeight();
    }
    while (localView.getMeasuredHeight() >= paramInt2);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    localView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), localLayoutParams.width), View.MeasureSpec.makeMeasureSpec(paramInt2 - getPaddingTop() - getPaddingBottom(), 1073741824));
  }

  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      e((int)paramFloat2);
      return true;
    }
    return false;
  }

  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }

  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt, null);
  }

  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getScrollY();
    scrollBy(0, paramInt4);
    paramInt1 = getScrollY() - paramInt1;
    dispatchNestedScroll(0, paramInt1, 0, paramInt4 - paramInt1, null);
  }

  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.x.a = paramInt;
    startNestedScroll(2);
  }

  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.scrollTo(paramInt1, paramInt2);
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1;
    View localView;
    if (paramInt == 2)
    {
      i1 = 130;
      if (paramRect != null)
        break label44;
      localView = FocusFinder.getInstance().findNextFocus(this, null, i1);
      label24: if (localView != null)
        break label58;
    }
    label44: label58: 
    while (a(localView))
    {
      return false;
      i1 = paramInt;
      if (paramInt != 1)
        break;
      i1 = 33;
      break;
      localView = FocusFinder.getInstance().findNextFocusFromRect(this, paramRect, i1);
      break label24;
    }
    return localView.requestFocus(i1, paramRect);
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof NestedScrollView.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (NestedScrollView.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.u = paramParcelable;
    requestLayout();
  }

  protected Parcelable onSaveInstanceState()
  {
    NestedScrollView.SavedState localSavedState = new NestedScrollView.SavedState(super.onSaveInstanceState());
    localSavedState.a = getScrollY();
    return localSavedState;
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.A != null)
      this.A.a(this);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = findFocus();
    if ((localView == null) || (this == localView));
    while (!a(localView, 0, paramInt4))
      return;
    localView.getDrawingRect(this.b);
    offsetDescendantRectToMyCoords(localView, this.b);
    d(a(this.b));
  }

  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return (paramInt & 0x2) != 0;
  }

  public void onStopNestedScroll(View paramView)
  {
    this.x.a = 0;
    stopNestedScroll();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    a();
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int i1 = at.a(paramMotionEvent);
    if (i1 == 0)
      this.t = 0;
    localMotionEvent.offsetLocation(0.0F, this.t);
    int i3;
    int i4;
    int i2;
    switch (i1)
    {
    case 4:
    default:
    case 0:
    case 2:
      ViewParent localViewParent;
      while (true)
      {
        if (this.k != null)
          this.k.addMovement(localMotionEvent);
        localMotionEvent.recycle();
        return true;
        if (getChildCount() == 0)
          return false;
        if (!this.c.a());
        for (boolean bool = true; ; bool = false)
        {
          this.j = bool;
          if (bool)
          {
            localViewParent = getParent();
            if (localViewParent != null)
              localViewParent.requestDisallowInterceptTouchEvent(true);
          }
          if (!this.c.a())
            this.c.g();
          this.f = ((int)paramMotionEvent.getY());
          this.q = at.b(paramMotionEvent, 0);
          startNestedScroll(2);
          break;
        }
        i3 = at.a(paramMotionEvent, this.q);
        if (i3 != -1)
          break;
        Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
      }
      i4 = (int)at.d(paramMotionEvent, i3);
      i2 = this.f - i4;
      i1 = i2;
      if (dispatchNestedPreScroll(0, i2, this.s, this.r))
      {
        i1 = i2 - this.s[1];
        localMotionEvent.offsetLocation(0.0F, this.r[1]);
        this.t += this.r[1];
      }
      if ((!this.j) && (Math.abs(i1) > this.n))
      {
        localViewParent = getParent();
        if (localViewParent != null)
          localViewParent.requestDisallowInterceptTouchEvent(true);
        this.j = true;
        if (i1 > 0)
          i1 -= this.n;
      }
      break;
    case 1:
    case 3:
    case 5:
    case 6:
    }
    label383: 
    while (this.j)
    {
      this.f = (i4 - this.r[1]);
      int i5 = getScrollY();
      i4 = getScrollRange();
      i2 = bl.a(this);
      if ((i2 == 0) || ((i2 == 1) && (i4 > 0)));
      for (i2 = 1; ; i2 = 0)
      {
        if ((a(0, i1, 0, getScrollY(), i4)) && (!hasNestedScrollingParent()))
          this.k.clear();
        int i6 = getScrollY() - i5;
        if (!dispatchNestedScroll(0, i6, 0, i1 - i6, this.r))
          break label555;
        this.f -= this.r[1];
        localMotionEvent.offsetLocation(0.0F, this.r[1]);
        this.t += this.r[1];
        break;
        i1 += this.n;
        break label383;
      }
      if (i2 == 0)
        break;
      d();
      i2 = i5 + i1;
      if (i2 < 0)
      {
        this.d.a(i1 / getHeight(), at.c(paramMotionEvent, i3) / getWidth());
        if (!this.e.a())
          this.e.c();
      }
      while ((this.d != null) && ((!this.d.a()) || (!this.e.a())))
      {
        bl.d(this);
        break;
        if (i2 > i4)
        {
          this.e.a(i1 / getHeight(), 1.0F - at.c(paramMotionEvent, i3) / getWidth());
          if (!this.d.a())
            this.d.c();
        }
      }
      if (this.j)
      {
        paramMotionEvent = this.k;
        paramMotionEvent.computeCurrentVelocity(1000, this.p);
        i1 = (int)bh.b(paramMotionEvent, this.q);
        if (Math.abs(i1) <= this.o)
          break label772;
        e(-i1);
      }
      while (true)
      {
        this.q = -1;
        c();
        break;
        if (this.c.a(getScrollX(), getScrollY(), getScrollRange()))
          bl.d(this);
      }
      if ((this.j) && (getChildCount() > 0) && (this.c.a(getScrollX(), getScrollY(), getScrollRange())))
        bl.d(this);
      this.q = -1;
      c();
      break;
      i1 = at.b(paramMotionEvent);
      this.f = ((int)at.d(paramMotionEvent, i1));
      this.q = at.b(paramMotionEvent, i1);
      break;
      a(paramMotionEvent);
      this.f = ((int)at.d(paramMotionEvent, at.a(paramMotionEvent, this.q)));
      break;
    }
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    if (!this.g)
      b(paramView2);
    while (true)
    {
      super.requestChildFocus(paramView1, paramView2);
      return;
      this.i = paramView2;
    }
  }

  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    paramRect.offset(paramView.getLeft() - paramView.getScrollX(), paramView.getTop() - paramView.getScrollY());
    int i1 = a(paramRect);
    if (i1 != 0);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
      {
        if (!paramBoolean)
          break;
        scrollBy(0, i1);
      }
      return bool;
    }
    a(0, i1);
    return bool;
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (paramBoolean)
      b();
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }

  public void requestLayout()
  {
    this.g = true;
    super.requestLayout();
  }

  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      paramInt1 = b(paramInt1, getWidth() - getPaddingRight() - getPaddingLeft(), localView.getWidth());
      paramInt2 = b(paramInt2, getHeight() - getPaddingBottom() - getPaddingTop(), localView.getHeight());
      if ((paramInt1 != getScrollX()) || (paramInt2 != getScrollY()))
        super.scrollTo(paramInt1, paramInt2);
    }
  }

  public void setFillViewport(boolean paramBoolean)
  {
    if (paramBoolean != this.l)
    {
      this.l = paramBoolean;
      requestLayout();
    }
  }

  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    this.y.a(paramBoolean);
  }

  public void setOnScrollChangeListener(w paramw)
  {
    this.A = paramw;
  }

  public void setSmoothScrollingEnabled(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public boolean shouldDelayChildPressedState()
  {
    return true;
  }

  public boolean startNestedScroll(int paramInt)
  {
    return this.y.a(paramInt);
  }

  public void stopNestedScroll()
  {
    this.y.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.NestedScrollView
 * JD-Core Version:    0.6.2
 */