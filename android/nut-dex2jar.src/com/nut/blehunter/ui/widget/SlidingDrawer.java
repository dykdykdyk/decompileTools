package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.nut.blehunter.t;

public class SlidingDrawer extends ViewGroup
{
  private boolean A;
  private boolean B;
  private final int C;
  private final int D;
  private final int E;
  private final int F;
  private final int G;
  private final int H;
  View a;
  boolean b;
  boolean c;
  private final int d;
  private final int e;
  private View f;
  private final Rect g = new Rect();
  private final Rect h = new Rect();
  private boolean i;
  private boolean j;
  private VelocityTracker k;
  private int l;
  private int m;
  private int n;
  private int o;
  private j p;
  private i q;
  private k r;
  private final Handler s = new l(this, (byte)0);
  private float t;
  private float u;
  private float v;
  private long w;
  private long x;
  private int y;
  private boolean z;

  public SlidingDrawer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SlidingDrawer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, t.SlidingDrawer, paramInt, 0);
    if (paramContext.getInt(2, 1) == 1);
    for (boolean bool = true; ; bool = false)
    {
      this.b = bool;
      this.l = ((int)paramContext.getDimension(4, 0.0F));
      this.m = ((int)paramContext.getDimension(3, 0.0F));
      this.A = paramContext.getBoolean(5, true);
      this.B = paramContext.getBoolean(6, true);
      paramInt = paramContext.getResourceId(0, 0);
      if (paramInt != 0)
        break;
      throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
    }
    int i1 = paramContext.getResourceId(1, 0);
    if (i1 == 0)
      throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
    if (paramInt == i1)
      throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
    this.d = paramInt;
    this.e = i1;
    float f1 = getResources().getDisplayMetrics().density;
    this.C = ((int)(6.0F * f1 + 0.5F));
    this.D = ((int)(100.0F * f1 + 0.5F));
    this.E = ((int)(150.0F * f1 + 0.5F));
    this.F = ((int)(200.0F * f1 + 0.5F));
    this.G = ((int)(2000.0F * f1 + 0.5F));
    this.H = ((int)(f1 * 1000.0F + 0.5F));
    paramContext.recycle();
    setAlwaysDrawnWithCacheEnabled(false);
  }

  private void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    this.v = paramInt;
    this.u = paramFloat;
    int i1;
    if (this.c)
      if ((!paramBoolean) && (paramFloat <= this.F))
      {
        int i2 = this.m;
        if (this.b)
        {
          i1 = this.n;
          if ((paramInt <= i1 + i2) || (paramFloat <= -this.F))
            break label191;
        }
      }
      else
      {
        this.t = this.G;
        if (paramFloat < 0.0F)
          this.u = 0.0F;
      }
    while (true)
    {
      long l1 = SystemClock.uptimeMillis();
      this.w = l1;
      this.x = (l1 + 16L);
      this.z = true;
      this.s.removeMessages(1000);
      this.s.sendMessageAtTime(this.s.obtainMessage(1000), this.x);
      this.a.setPressed(false);
      this.i = false;
      if (this.k != null)
      {
        this.k.recycle();
        this.k = null;
      }
      return;
      i1 = this.o;
      break;
      label191: this.t = (-this.G);
      if (paramFloat > 0.0F)
      {
        this.u = 0.0F;
        continue;
        if (!paramBoolean)
        {
          if (paramFloat <= this.F)
            if (!this.b)
              break label284;
          label284: for (i1 = getHeight(); ; i1 = getWidth())
          {
            if ((paramInt <= i1 / 2) || (paramFloat <= -this.F))
              break label293;
            this.t = this.G;
            if (paramFloat >= 0.0F)
              break;
            this.u = 0.0F;
            break;
          }
        }
        label293: this.t = (-this.G);
        if (paramFloat > 0.0F)
          this.u = 0.0F;
      }
    }
  }

  private void c(int paramInt)
  {
    this.i = true;
    this.k = VelocityTracker.obtain();
    int i1;
    if (!this.c)
    {
      i1 = 1;
      if (i1 == 0)
        break label139;
      this.t = this.G;
      this.u = this.F;
      i1 = this.l;
      if (!this.b)
        break label126;
    }
    label126: for (paramInt = getHeight() - this.n; ; paramInt = getWidth() - this.o)
    {
      this.v = (paramInt + i1);
      d((int)this.v);
      this.z = true;
      this.s.removeMessages(1000);
      long l1 = SystemClock.uptimeMillis();
      this.w = l1;
      this.x = (l1 + 16L);
      this.z = true;
      return;
      i1 = 0;
      break;
    }
    label139: if (this.z)
    {
      this.z = false;
      this.s.removeMessages(1000);
    }
    d(paramInt);
  }

  private void d(int paramInt)
  {
    View localView = this.a;
    Rect localRect1;
    Rect localRect2;
    if (this.b)
    {
      if (paramInt == -10001)
      {
        localView.offsetTopAndBottom(this.m - localView.getTop());
        invalidate();
        return;
      }
      if (paramInt == -10002)
      {
        localView.offsetTopAndBottom(this.l + getBottom() - getTop() - this.n - localView.getTop());
        invalidate();
        return;
      }
      i2 = localView.getTop();
      i1 = paramInt - i2;
      if (paramInt < this.m)
        paramInt = this.m - i2;
      while (true)
      {
        localView.offsetTopAndBottom(paramInt);
        localRect1 = this.g;
        localRect2 = this.h;
        localView.getHitRect(localRect1);
        localRect2.set(localRect1);
        localRect2.union(localRect1.left, localRect1.top - paramInt, localRect1.right, localRect1.bottom - paramInt);
        localRect2.union(0, localRect1.bottom - paramInt, getWidth(), localRect1.bottom - paramInt + this.f.getHeight());
        invalidate(localRect2);
        return;
        paramInt = i1;
        if (i1 > this.l + getBottom() - getTop() - this.n - i2)
          paramInt = this.l + getBottom() - getTop() - this.n - i2;
      }
    }
    if (paramInt == -10001)
    {
      localView.offsetLeftAndRight(this.m - localView.getLeft());
      invalidate();
      return;
    }
    if (paramInt == -10002)
    {
      localView.offsetLeftAndRight(this.l + getRight() - getLeft() - this.o - localView.getLeft());
      invalidate();
      return;
    }
    int i2 = localView.getLeft();
    int i1 = paramInt - i2;
    if (paramInt < this.m)
      paramInt = this.m - i2;
    while (true)
    {
      localView.offsetLeftAndRight(paramInt);
      localRect1 = this.g;
      localRect2 = this.h;
      localView.getHitRect(localRect1);
      localRect2.set(localRect1);
      localRect2.union(localRect1.left - paramInt, localRect1.top, localRect1.right - paramInt, localRect1.bottom);
      localRect2.union(localRect1.right - paramInt, 0, localRect1.right - paramInt + this.f.getWidth(), getHeight());
      invalidate(localRect2);
      return;
      paramInt = i1;
      if (i1 > this.l + getRight() - getLeft() - this.o - i2)
        paramInt = this.l + getRight() - getLeft() - this.o - i2;
    }
  }

  final void a()
  {
    if (this.z)
      return;
    View localView = this.f;
    int i1;
    if (localView.isLayoutRequested())
    {
      if (!this.b)
        break label143;
      i1 = this.n;
      int i2 = getBottom();
      int i3 = getTop();
      int i4 = this.m;
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft(), 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - i3 - i1 - i4, 1073741824));
      localView.layout(0, this.m + i1, localView.getMeasuredWidth(), i1 + this.m + localView.getMeasuredHeight());
    }
    while (true)
    {
      localView.getViewTreeObserver().dispatchOnPreDraw();
      if (!localView.isHardwareAccelerated())
        localView.buildDrawingCache();
      localView.setVisibility(8);
      return;
      label143: i1 = this.a.getWidth();
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft() - i1 - this.m, 1073741824), View.MeasureSpec.makeMeasureSpec(getBottom() - getTop(), 1073741824));
      localView.layout(this.m + i1, 0, i1 + this.m + localView.getMeasuredWidth(), localView.getMeasuredHeight());
    }
  }

  final void a(int paramInt)
  {
    c(paramInt);
    a(paramInt, this.G, true);
  }

  final void b()
  {
    d(-10002);
    this.f.setVisibility(8);
    this.f.destroyDrawingCache();
    if (!this.c);
    do
    {
      return;
      this.c = false;
    }
    while (this.q == null);
    this.q.a();
  }

  final void b(int paramInt)
  {
    c(paramInt);
    a(paramInt, -this.G, true);
  }

  final void c()
  {
    d(-10001);
    this.f.setVisibility(0);
    if (this.c);
    do
    {
      return;
      this.c = true;
    }
    while (this.p == null);
    this.p.a();
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    float f2 = 0.0F;
    long l1 = getDrawingTime();
    View localView = this.a;
    boolean bool = this.b;
    drawChild(paramCanvas, localView, l1);
    if ((this.i) || (this.z))
    {
      localBitmap = this.f.getDrawingCache();
      if (localBitmap != null)
        if (bool)
          paramCanvas.drawBitmap(localBitmap, 0.0F, localView.getBottom(), null);
    }
    while (!this.c)
    {
      Bitmap localBitmap;
      return;
      paramCanvas.drawBitmap(localBitmap, localView.getRight(), 0.0F, null);
      return;
      paramCanvas.save();
      if (bool);
      for (float f1 = 0.0F; ; f1 = localView.getLeft() - this.m)
      {
        if (bool)
          f2 = localView.getTop() - this.m;
        paramCanvas.translate(f1, f2);
        drawChild(paramCanvas, this.f, l1);
        paramCanvas.restore();
        return;
      }
    }
    drawChild(paramCanvas, this.f, l1);
  }

  public View getContent()
  {
    return this.f;
  }

  public View getHandle()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    this.a = findViewById(this.d);
    if (this.a == null)
      throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
    this.a.setOnClickListener(new h(this, (byte)0));
    this.f = findViewById(this.e);
    if (this.f == null)
      throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
    this.f.setVisibility(8);
  }

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingDrawer.class.getName());
  }

  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(SlidingDrawer.class.getName());
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.j);
    int i1;
    float f1;
    float f2;
    Rect localRect;
    View localView;
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      localRect = this.g;
      localView = this.a;
      localView.getHitRect(localRect);
    }
    while ((!this.i) && (!localRect.contains((int)f1, (int)f2)));
    if (i1 == 0)
    {
      this.i = true;
      localView.setPressed(true);
      a();
      if (!this.b)
        break label124;
      i1 = this.a.getTop();
      this.y = ((int)f2 - i1);
      c(i1);
    }
    while (true)
    {
      this.k.addMovement(paramMotionEvent);
      return true;
      label124: i1 = this.a.getLeft();
      this.y = ((int)f1 - i1);
      c(i1);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.i)
      return;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    View localView1 = this.a;
    paramInt4 = localView1.getMeasuredWidth();
    int i1 = localView1.getMeasuredHeight();
    View localView2 = this.f;
    if (this.b)
    {
      paramInt3 = (paramInt1 - paramInt4) / 2;
      if (this.c);
      for (paramInt1 = this.m; ; paramInt1 = paramInt2 - i1 + this.l)
      {
        localView2.layout(0, this.m + i1, localView2.getMeasuredWidth(), this.m + i1 + localView2.getMeasuredHeight());
        paramInt2 = paramInt1;
        localView1.layout(paramInt3, paramInt2, paramInt3 + paramInt4, paramInt2 + i1);
        this.n = localView1.getHeight();
        this.o = localView1.getWidth();
        return;
      }
    }
    if (this.c);
    for (paramInt1 = this.m; ; paramInt1 = paramInt1 - paramInt4 + this.l)
    {
      paramInt2 = (paramInt2 - i1) / 2;
      localView2.layout(this.m + paramInt4, 0, this.m + paramInt4 + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
      paramInt3 = paramInt1;
      break;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt2);
    if ((i3 == 0) || (i4 == 0))
      throw new RuntimeException("SlidingDrawer cannot have UNSPECIFIED dimensions");
    View localView = this.a;
    measureChild(localView, paramInt1, paramInt2);
    if (this.b)
    {
      paramInt1 = localView.getMeasuredHeight();
      paramInt2 = this.m;
      this.f.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - paramInt1 - paramInt2, 1073741824));
    }
    while (true)
    {
      setMeasuredDimension(i1, i2);
      return;
      paramInt1 = localView.getMeasuredWidth();
      paramInt2 = this.m;
      this.f.measure(View.MeasureSpec.makeMeasureSpec(i1 - paramInt1 - paramInt2, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.j)
      return true;
    if (this.i)
      this.k.addMovement(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    int i1;
    label161: float f5;
    float f4;
    float f3;
    int i2;
    switch (paramMotionEvent.getAction())
    {
    default:
      if ((this.i) || (this.z) || (super.onTouchEvent(paramMotionEvent)))
        return true;
      break;
    case 2:
      if (this.b);
      for (f1 = paramMotionEvent.getY(); ; f1 = paramMotionEvent.getX())
      {
        d((int)f1 - this.y);
        break;
      }
    case 1:
    case 3:
      VelocityTracker localVelocityTracker = this.k;
      localVelocityTracker.computeCurrentVelocity(this.H);
      f1 = localVelocityTracker.getYVelocity();
      f2 = localVelocityTracker.getXVelocity();
      bool = this.b;
      if (bool)
        if (f1 < 0.0F)
        {
          i1 = 1;
          f5 = f2;
          if (f2 < 0.0F)
            f5 = -f2;
          f4 = f5;
          f3 = f1;
          i2 = i1;
          if (f5 <= this.E)
            break label569;
          f2 = this.E;
        }
      break;
    }
    while (true)
    {
      f1 = (float)Math.hypot(f2, f1);
      if (i1 != 0)
        f1 = -f1;
      while (true)
      {
        i1 = this.a.getTop();
        i2 = this.a.getLeft();
        if (Math.abs(f1) < this.D)
        {
          if (bool)
            if (((!this.c) || (i1 >= this.C + this.m)) && ((this.c) || (i1 <= this.l + getBottom() - getTop() - this.n - this.C)))
              break label467;
          while (true)
            if (this.A)
            {
              playSoundEffect(0);
              if (this.c)
                if (bool)
                {
                  label336: a(i1);
                  break;
                  i1 = 0;
                  break label161;
                  if (f2 < 0.0F);
                  for (i1 = 1; ; i1 = 0)
                  {
                    f5 = f1;
                    if (f1 < 0.0F)
                      f5 = -f1;
                    f4 = f2;
                    f3 = f5;
                    i2 = i1;
                    if (f5 <= this.E)
                      break label569;
                    f1 = this.E;
                    break;
                  }
                  if (((this.c) && (i2 < this.C + this.m)) || ((!this.c) && (i2 > this.l + getRight() - getLeft() - this.o - this.C)))
                    continue;
                  label467: if (!bool)
                    break label534;
                }
            }
          while (true)
          {
            a(i1, f1, false);
            break;
            i1 = i2;
            break label336;
            if (bool);
            while (true)
            {
              b(i1);
              break;
              i1 = i2;
            }
            if (bool);
            while (true)
            {
              a(i1, f1, false);
              break;
              i1 = i2;
            }
            label534: i1 = i2;
          }
        }
        if (bool);
        while (true)
        {
          a(i1, f1, false);
          break;
          i1 = i2;
        }
        return false;
      }
      label569: f2 = f4;
      i1 = i2;
      f1 = f3;
    }
  }

  public void setOnDrawerCloseListener(i parami)
  {
    this.q = parami;
  }

  public void setOnDrawerOpenListener(j paramj)
  {
    this.p = paramj;
  }

  public void setOnDrawerScrollListener(k paramk)
  {
    this.r = paramk;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.SlidingDrawer
 * JD-Core Version:    0.6.2
 */