package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.b.b;
import android.support.v7.b.e;
import android.support.v7.b.l;
import android.support.v7.view.a;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.HorizontalScrollView;
import android.widget.Spinner;

public final class ex extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator i = new DecelerateInterpolator();
  Runnable a;
  int b;
  int c;
  private co d;
  private Spinner e;
  private boolean f;
  private int g;
  private int h;

  private boolean a()
  {
    return (this.e != null) && (this.e.getParent() == this);
  }

  private boolean b()
  {
    if (!a())
      return false;
    removeView(this.e);
    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.e.getSelectedItemPosition());
    return false;
  }

  public final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a != null)
      post(this.a);
  }

  protected final void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = a.a(getContext());
    TypedArray localTypedArray = paramConfiguration.a.obtainStyledAttributes(null, l.ActionBar, b.actionBarStyle, 0);
    int k = localTypedArray.getLayoutDimension(l.ActionBar_height, 0);
    Resources localResources = paramConfiguration.a.getResources();
    int j = k;
    if (!paramConfiguration.a())
      j = Math.min(k, localResources.getDimensionPixelSize(e.abc_action_bar_stacked_max_height));
    localTypedArray.recycle();
    setContentHeight(j);
    this.c = paramConfiguration.a.getResources().getDimensionPixelSize(e.abc_action_bar_stacked_tab_max_width);
  }

  public final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null)
      removeCallbacks(this.a);
  }

  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int j = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (j == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int k = this.d.getChildCount();
      if ((k <= 1) || ((j != 1073741824) && (j != -2147483648)))
        break label328;
      if (k <= 2)
        break label315;
      this.b = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label68: this.b = Math.min(this.b, this.c);
      label83: j = View.MeasureSpec.makeMeasureSpec(this.g, 1073741824);
      if ((bool) || (!this.f))
        break label336;
      label105: if (paramInt2 == 0)
        break label349;
      this.d.measure(0, j);
      if (this.d.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1))
        break label341;
      if (!a())
      {
        if (this.e == null)
        {
          bf localbf = new bf(getContext(), null, b.actionDropDownStyle);
          localbf.setLayoutParams(new cp(-2, -1));
          localbf.setOnItemSelectedListener(this);
          this.e = localbf;
        }
        removeView(this.d);
        addView(this.e, new ViewGroup.LayoutParams(-2, -1));
        if (this.e.getAdapter() == null)
          this.e.setAdapter(new ez(this, (byte)0));
        if (this.a != null)
        {
          removeCallbacks(this.a);
          this.a = null;
        }
        this.e.setSelection(this.h);
      }
    }
    while (true)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, j);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1))
        setTabSelected(this.h);
      return;
      bool = false;
      break;
      label315: this.b = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label68;
      label328: this.b = -1;
      break label83;
      label336: paramInt2 = 0;
      break label105;
      label341: b();
      continue;
      label349: b();
    }
  }

  public final void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }

  public final void setAllowCollapse(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final void setContentHeight(int paramInt)
  {
    this.g = paramInt;
    requestLayout();
  }

  public final void setTabSelected(int paramInt)
  {
    this.h = paramInt;
    int k = this.d.getChildCount();
    int j = 0;
    if (j < k)
    {
      View localView = this.d.getChildAt(j);
      if (j == paramInt);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
        {
          localView = this.d.getChildAt(paramInt);
          if (this.a != null)
            removeCallbacks(this.a);
          this.a = new ey(this, localView);
          post(this.a);
        }
        j += 1;
        break;
      }
    }
    if ((this.e != null) && (paramInt >= 0))
      this.e.setSelection(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ex
 * JD-Core Version:    0.6.2
 */