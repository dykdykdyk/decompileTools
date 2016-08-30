package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.at;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v7.b.h;
import android.support.v7.b.l;
import android.support.v7.view.menu.i;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

abstract class a extends ViewGroup
{
  protected final b a = new b(this);
  protected final Context b;
  protected ActionMenuView c;
  protected k d;
  protected int e;
  protected dd f;
  private boolean g;
  private boolean h;

  a(Context paramContext)
  {
    this(paramContext, null);
  }

  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(android.support.v7.b.b.actionBarPopupTheme, paramAttributeSet, true)) && (paramAttributeSet.resourceId != 0))
    {
      this.b = new ContextThemeWrapper(paramContext, paramAttributeSet.resourceId);
      return;
    }
    this.b = paramContext;
  }

  protected static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean)
      return paramInt1 - paramInt2;
    return paramInt1 + paramInt2;
  }

  protected static int a(View paramView, int paramInt1, int paramInt2)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, -2147483648), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() + 0);
  }

  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    if (paramBoolean)
      paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    while (true)
    {
      paramInt1 = i;
      if (paramBoolean)
        paramInt1 = -i;
      return paramInt1;
      paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    }
  }

  public dd a(int paramInt, long paramLong)
  {
    if (this.f != null)
      this.f.a();
    if (paramInt == 0)
    {
      if (getVisibility() != 0)
        bl.c(this, 0.0F);
      localdd = bl.o(this).a(1.0F);
      localdd.a(paramLong);
      localdd.a(this.a.a(localdd, paramInt));
      return localdd;
    }
    dd localdd = bl.o(this).a(0.0F);
    localdd.a(paramLong);
    localdd.a(this.a.a(localdd, paramInt));
    return localdd;
  }

  public boolean a()
  {
    if (this.d != null)
      return this.d.c();
    return false;
  }

  public int getAnimatedVisibility()
  {
    if (this.f != null)
      return this.a.a;
    return getVisibility();
  }

  public int getContentHeight()
  {
    return this.e;
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = getContext().obtainStyledAttributes(null, l.ActionBar, android.support.v7.b.b.actionBarStyle, 0);
    setContentHeight(paramConfiguration.getLayoutDimension(l.ActionBar_height, 0));
    paramConfiguration.recycle();
    if (this.d != null)
    {
      paramConfiguration = this.d;
      if (!paramConfiguration.m)
        paramConfiguration.l = paramConfiguration.b.getResources().getInteger(h.abc_max_action_buttons);
      if (paramConfiguration.c != null)
        paramConfiguration.c.b(true);
    }
  }

  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = at.a(paramMotionEvent);
    if (i == 9)
      this.h = false;
    if (!this.h)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool))
        this.h = true;
    }
    if ((i == 10) || (i == 3))
      this.h = false;
    return true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = at.a(paramMotionEvent);
    if (i == 0)
      this.g = false;
    if (!this.g)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool))
        this.g = true;
    }
    if ((i == 1) || (i == 3))
      this.g = false;
    return true;
  }

  public void setContentHeight(int paramInt)
  {
    this.e = paramInt;
    requestLayout();
  }

  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility())
    {
      if (this.f != null)
        this.f.a();
      super.setVisibility(paramInt);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.a
 * JD-Core Version:    0.6.2
 */