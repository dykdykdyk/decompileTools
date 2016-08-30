package com.astuetz;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObservable;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.f.n;
import android.support.v4.view.ViewPager;
import android.support.v4.view.be;
import android.support.v4.view.cr;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class PagerSlidingTabStrip extends HorizontalScrollView
{
  private static final int[] b = { 16842806, 16842965, 16842966, 16842968 };
  private boolean A;
  private boolean B = false;
  private boolean C = true;
  private Typeface D = null;
  private int E = 1;
  private int F;
  private int G = 0;
  private int H = com.astuetz.a.b.psts_background_tab;
  private ViewTreeObserver.OnGlobalLayoutListener I = new b(this);
  public cr a;
  private LinearLayout c;
  private LinearLayout.LayoutParams d;
  private final f e = new f(this, (byte)0);
  private final e f = new e(this, (byte)0);
  private d g = null;
  private ViewPager h;
  private int i;
  private int j = 0;
  private float k = 0.0F;
  private Paint l;
  private Paint m;
  private int n;
  private int o = 2;
  private int p = 0;
  private int q;
  private int r = 0;
  private int s = 0;
  private int t;
  private int u = 12;
  private int v = 14;
  private ColorStateList w = null;
  private int x = 0;
  private int y = 0;
  private boolean z = false;

  public PagerSlidingTabStrip(Context paramContext)
  {
    this(paramContext, null);
  }

  public PagerSlidingTabStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PagerSlidingTabStrip(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFillViewport(true);
    setWillNotDraw(false);
    this.c = new LinearLayout(paramContext);
    this.c.setOrientation(0);
    addView(this.c);
    this.l = new Paint();
    this.l.setAntiAlias(true);
    this.l.setStyle(Paint.Style.FILL);
    Object localObject = getResources().getDisplayMetrics();
    this.F = ((int)TypedValue.applyDimension(1, this.F, (DisplayMetrics)localObject));
    this.o = ((int)TypedValue.applyDimension(1, this.o, (DisplayMetrics)localObject));
    this.p = ((int)TypedValue.applyDimension(1, this.p, (DisplayMetrics)localObject));
    this.s = ((int)TypedValue.applyDimension(1, this.s, (DisplayMetrics)localObject));
    this.u = ((int)TypedValue.applyDimension(1, this.u, (DisplayMetrics)localObject));
    this.r = ((int)TypedValue.applyDimension(1, this.r, (DisplayMetrics)localObject));
    this.v = ((int)TypedValue.applyDimension(2, this.v, (DisplayMetrics)localObject));
    this.m = new Paint();
    this.m.setAntiAlias(true);
    this.m.setStrokeWidth(this.r);
    localObject = paramContext.obtainStyledAttributes(paramAttributeSet, b);
    int i2 = ((TypedArray)localObject).getColor(0, getResources().getColor(17170444));
    this.q = i2;
    this.t = i2;
    this.n = i2;
    paramInt = ((TypedArray)localObject).getDimensionPixelSize(1, 0);
    int i1;
    if (paramInt > 0)
    {
      i1 = paramInt;
      this.x = i1;
      if (paramInt <= 0)
        break label922;
      label433: this.y = paramInt;
      ((TypedArray)localObject).recycle();
      localObject = "sans-serif";
      if (Build.VERSION.SDK_INT >= 21)
      {
        localObject = "sans-serif-medium";
        this.E = 0;
      }
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, com.astuetz.a.e.PagerSlidingTabStrip);
      this.n = paramAttributeSet.getColor(com.astuetz.a.e.PagerSlidingTabStrip_pstsIndicatorColor, this.n);
      this.o = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsIndicatorHeight, this.o);
      this.q = paramAttributeSet.getColor(com.astuetz.a.e.PagerSlidingTabStrip_pstsUnderlineColor, this.q);
      this.p = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsUnderlineHeight, this.p);
      this.t = paramAttributeSet.getColor(com.astuetz.a.e.PagerSlidingTabStrip_pstsDividerColor, this.t);
      this.r = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsDividerWidth, this.r);
      this.s = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsDividerPadding, this.s);
      this.z = paramAttributeSet.getBoolean(com.astuetz.a.e.PagerSlidingTabStrip_pstsShouldExpand, this.z);
      this.F = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsScrollOffset, this.F);
      this.B = paramAttributeSet.getBoolean(com.astuetz.a.e.PagerSlidingTabStrip_pstsPaddingMiddle, this.B);
      this.u = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabPaddingLeftRight, this.u);
      this.H = paramAttributeSet.getResourceId(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabBackground, this.H);
      this.v = paramAttributeSet.getDimensionPixelSize(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextSize, this.v);
      if (!paramAttributeSet.hasValue(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextColor))
        break label933;
      paramContext = paramAttributeSet.getColorStateList(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextColor);
      label686: this.w = paramContext;
      this.E = paramAttributeSet.getInt(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextStyle, this.E);
      this.C = paramAttributeSet.getBoolean(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextAllCaps, this.C);
      paramInt = paramAttributeSet.getInt(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextAlpha, 150);
      paramContext = paramAttributeSet.getString(com.astuetz.a.e.PagerSlidingTabStrip_pstsTabTextFontFamily);
      paramAttributeSet.recycle();
      if (this.w == null)
      {
        paramInt = Color.argb(paramInt, Color.red(i2), Color.green(i2), Color.blue(i2));
        this.w = new ColorStateList(new int[][] { { 16842919 }, { 16842913 }, new int[0] }, new int[] { i2, i2, paramInt });
      }
      if (paramContext != null)
        localObject = paramContext;
      this.D = Typeface.create((String)localObject, this.E);
      if (this.o < this.p)
        break label938;
      paramInt = this.o;
      label869: setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), paramInt);
      if (!this.z)
        break label946;
    }
    label922: label933: label938: label946: for (paramContext = new LinearLayout.LayoutParams(0, -1, 1.0F); ; paramContext = new LinearLayout.LayoutParams(-2, -1))
    {
      this.d = paramContext;
      return;
      i1 = ((TypedArray)localObject).getDimensionPixelSize(2, 0);
      break;
      paramInt = ((TypedArray)localObject).getDimensionPixelSize(3, 0);
      break label433;
      paramContext = null;
      break label686;
      paramInt = this.p;
      break label869;
    }
  }

  private void a(View paramView)
  {
    if (paramView != null)
    {
      paramView = (TextView)paramView.findViewById(com.astuetz.a.c.psts_tab_title);
      if (paramView != null)
        paramView.setSelected(false);
      if (this.A)
        this.h.getAdapter();
    }
  }

  private void b()
  {
    int i1 = 0;
    if (i1 < this.i)
    {
      Object localObject = this.c.getChildAt(i1);
      ((View)localObject).setBackgroundResource(this.H);
      ((View)localObject).setPadding(this.u, ((View)localObject).getPaddingTop(), this.u, ((View)localObject).getPaddingBottom());
      localObject = (TextView)((View)localObject).findViewById(com.astuetz.a.c.psts_tab_title);
      if (localObject != null)
      {
        ((TextView)localObject).setTextColor(this.w);
        ((TextView)localObject).setTypeface(this.D, this.E);
        ((TextView)localObject).setTextSize(0, this.v);
        if (this.C)
        {
          if (Build.VERSION.SDK_INT < 14)
            break label119;
          ((TextView)localObject).setAllCaps(true);
        }
      }
      while (true)
      {
        i1 += 1;
        break;
        label119: ((TextView)localObject).setText(((TextView)localObject).getText().toString().toUpperCase(getResources().getConfiguration().locale));
      }
    }
  }

  private void b(View paramView)
  {
    if (paramView != null)
    {
      paramView = (TextView)paramView.findViewById(com.astuetz.a.c.psts_tab_title);
      if (paramView != null)
        paramView.setSelected(true);
      if (this.A)
        this.h.getAdapter();
    }
  }

  private n<Float, Float> getIndicatorCoordinates()
  {
    View localView = this.c.getChildAt(this.j);
    float f4 = localView.getLeft();
    float f3 = localView.getRight();
    float f2 = f4;
    float f1 = f3;
    if (this.k > 0.0F)
    {
      f2 = f4;
      f1 = f3;
      if (this.j < this.i - 1)
      {
        localView = this.c.getChildAt(this.j + 1);
        f2 = localView.getLeft();
        f1 = localView.getRight();
        float f5 = this.k;
        f2 = f4 * (1.0F - this.k) + f2 * f5;
        f4 = this.k;
        f1 = f3 * (1.0F - this.k) + f1 * f4;
      }
    }
    return new n(Float.valueOf(f2), Float.valueOf(f1));
  }

  public final void a()
  {
    this.c.removeAllViews();
    this.i = this.h.getAdapter().a();
    int i1 = 0;
    if (i1 < this.i)
    {
      if (this.A);
      for (View localView = ((c)this.h.getAdapter()).a(); ; localView = LayoutInflater.from(getContext()).inflate(com.astuetz.a.d.psts_tab, this, false))
      {
        CharSequence localCharSequence = this.h.getAdapter().a(i1);
        TextView localTextView = (TextView)localView.findViewById(com.astuetz.a.c.psts_tab_title);
        if ((localTextView != null) && (localCharSequence != null))
          localTextView.setText(localCharSequence);
        localView.setFocusable(true);
        localView.setOnClickListener(new a(this, i1));
        this.c.addView(localView, i1, this.d);
        i1 += 1;
        break;
      }
    }
    b();
  }

  public int getDividerColor()
  {
    return this.t;
  }

  public int getDividerPadding()
  {
    return this.s;
  }

  public int getDividerWidth()
  {
    return this.r;
  }

  public int getIndicatorColor()
  {
    return this.n;
  }

  public int getIndicatorHeight()
  {
    return this.o;
  }

  public int getScrollOffset()
  {
    return this.F;
  }

  public boolean getShouldExpand()
  {
    return this.z;
  }

  public int getTabBackground()
  {
    return this.H;
  }

  public int getTabPaddingLeftRight()
  {
    return this.u;
  }

  public ColorStateList getTextColor()
  {
    return this.w;
  }

  public int getTextSize()
  {
    return this.v;
  }

  public int getUnderlineColor()
  {
    return this.q;
  }

  public int getUnderlineHeight()
  {
    return this.p;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.h != null) && (!this.e.a))
    {
      this.h.getAdapter().a(this.e);
      this.e.a = true;
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.h != null) && (this.e.a))
    {
      be localbe = this.h.getAdapter();
      f localf = this.e;
      localbe.a.unregisterObserver(localf);
      this.e.a = false;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((isInEditMode()) || (this.i == 0));
    int i2;
    do
    {
      return;
      i2 = getHeight();
      if (this.r > 0)
      {
        this.m.setStrokeWidth(this.r);
        this.m.setColor(this.t);
        int i1 = 0;
        while (i1 < this.i - 1)
        {
          localObject = this.c.getChildAt(i1);
          paramCanvas.drawLine(((View)localObject).getRight(), this.s, ((View)localObject).getRight(), i2 - this.s, this.m);
          i1 += 1;
        }
      }
      if (this.p > 0)
      {
        this.l.setColor(this.q);
        paramCanvas.drawRect(this.x, i2 - this.p, this.c.getWidth() + this.y, i2, this.l);
      }
    }
    while (this.o <= 0);
    this.l.setColor(this.n);
    Object localObject = getIndicatorCoordinates();
    float f1 = ((Float)((n)localObject).a).floatValue();
    float f2 = this.x;
    float f3 = i2 - this.o;
    float f4 = ((Float)((n)localObject).b).floatValue();
    paramCanvas.drawRect(f2 + f1, f3, this.x + f4, i2, this.l);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.B) || (this.x > 0) || (this.y > 0))
      if (!this.B)
        break label88;
    label88: for (int i1 = getWidth(); ; i1 = getWidth() - this.x - this.y)
    {
      this.c.setMinimumWidth(i1);
      setClipToPadding(false);
      if (this.c.getChildCount() > 0)
        this.c.getChildAt(0).getViewTreeObserver().addOnGlobalLayoutListener(this.I);
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (PagerSlidingTabStrip.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.j = paramParcelable.a;
    if ((this.j != 0) && (this.c.getChildCount() > 0))
    {
      a(this.c.getChildAt(0));
      b(this.c.getChildAt(this.j));
    }
    requestLayout();
  }

  public Parcelable onSaveInstanceState()
  {
    PagerSlidingTabStrip.SavedState localSavedState = new PagerSlidingTabStrip.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.j;
    return localSavedState;
  }

  public void setAllCaps(boolean paramBoolean)
  {
    this.C = paramBoolean;
  }

  public void setDividerColor(int paramInt)
  {
    this.t = paramInt;
    invalidate();
  }

  public void setDividerColorResource(int paramInt)
  {
    this.t = getResources().getColor(paramInt);
    invalidate();
  }

  public void setDividerPadding(int paramInt)
  {
    this.s = paramInt;
    invalidate();
  }

  public void setDividerWidth(int paramInt)
  {
    this.r = paramInt;
    invalidate();
  }

  public void setIndicatorColor(int paramInt)
  {
    this.n = paramInt;
    invalidate();
  }

  public void setIndicatorColorResource(int paramInt)
  {
    this.n = getResources().getColor(paramInt);
    invalidate();
  }

  public void setIndicatorHeight(int paramInt)
  {
    this.o = paramInt;
    invalidate();
  }

  public void setOnPageChangeListener(cr paramcr)
  {
    this.a = paramcr;
  }

  public void setOnTabReselectedListener(d paramd)
  {
    this.g = paramd;
  }

  public void setScrollOffset(int paramInt)
  {
    this.F = paramInt;
    invalidate();
  }

  public void setShouldExpand(boolean paramBoolean)
  {
    this.z = paramBoolean;
    if (this.h != null)
      requestLayout();
  }

  public void setTabBackground(int paramInt)
  {
    this.H = paramInt;
  }

  public void setTabPaddingLeftRight(int paramInt)
  {
    this.u = paramInt;
    b();
  }

  public void setTextColor(int paramInt)
  {
    setTextColor(new ColorStateList(new int[][] { new int[0] }, new int[] { paramInt }));
  }

  public void setTextColor(ColorStateList paramColorStateList)
  {
    this.w = paramColorStateList;
    b();
  }

  public void setTextColorResource(int paramInt)
  {
    setTextColor(getResources().getColor(paramInt));
  }

  public void setTextColorStateListResource(int paramInt)
  {
    setTextColor(getResources().getColorStateList(paramInt));
  }

  public void setTextSize(int paramInt)
  {
    this.v = paramInt;
    b();
  }

  public void setUnderlineColor(int paramInt)
  {
    this.q = paramInt;
    invalidate();
  }

  public void setUnderlineColorResource(int paramInt)
  {
    this.q = getResources().getColor(paramInt);
    invalidate();
  }

  public void setUnderlineHeight(int paramInt)
  {
    this.p = paramInt;
    invalidate();
  }

  public void setViewPager(ViewPager paramViewPager)
  {
    this.h = paramViewPager;
    if (paramViewPager.getAdapter() == null)
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    this.A = (paramViewPager.getAdapter() instanceof c);
    paramViewPager.setOnPageChangeListener(this.f);
    paramViewPager.getAdapter().a(this.e);
    this.e.a = true;
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.astuetz.PagerSlidingTabStrip
 * JD-Core Version:    0.6.2
 */