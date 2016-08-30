package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.b.g;
import android.support.v7.b.l;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ActionBarContextView extends a
{
  public View g;
  public boolean h;
  private CharSequence i;
  private CharSequence j;
  private View k;
  private LinearLayout l;
  private TextView m;
  private TextView n;
  private int o;
  private int p;
  private int q;

  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, android.support.v7.b.b.actionModeStyle);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ft.a(paramContext, paramAttributeSet, l.ActionMode, paramInt);
    setBackgroundDrawable(paramContext.a(l.ActionMode_background));
    this.o = paramContext.e(l.ActionMode_titleTextStyle, 0);
    this.p = paramContext.e(l.ActionMode_subtitleTextStyle, 0);
    this.e = paramContext.d(l.ActionMode_height, 0);
    this.q = paramContext.e(l.ActionMode_closeItemLayout, android.support.v7.b.i.abc_action_mode_close_item_material);
    paramContext.a.recycle();
  }

  private void c()
  {
    int i4 = 8;
    int i2 = 1;
    if (this.l == null)
    {
      LayoutInflater.from(getContext()).inflate(android.support.v7.b.i.abc_action_bar_title_item, this);
      this.l = ((LinearLayout)getChildAt(getChildCount() - 1));
      this.m = ((TextView)this.l.findViewById(g.action_bar_title));
      this.n = ((TextView)this.l.findViewById(g.action_bar_subtitle));
      if (this.o != 0)
        this.m.setTextAppearance(getContext(), this.o);
      if (this.p != 0)
        this.n.setTextAppearance(getContext(), this.p);
    }
    this.m.setText(this.i);
    this.n.setText(this.j);
    int i1;
    label167: Object localObject;
    if (!TextUtils.isEmpty(this.i))
    {
      i1 = 1;
      if (TextUtils.isEmpty(this.j))
        break label234;
      localObject = this.n;
      if (i2 == 0)
        break label239;
    }
    label234: label239: for (int i3 = 0; ; i3 = 8)
    {
      ((TextView)localObject).setVisibility(i3);
      localObject = this.l;
      if (i1 == 0)
      {
        i1 = i4;
        if (i2 == 0);
      }
      else
      {
        i1 = 0;
      }
      ((LinearLayout)localObject).setVisibility(i1);
      if (this.l.getParent() == null)
        addView(this.l);
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label167;
    }
  }

  public final void a(android.support.v7.view.b paramb)
  {
    if (this.g == null)
    {
      this.g = LayoutInflater.from(getContext()).inflate(this.q, this, false);
      addView(this.g);
    }
    while (true)
    {
      this.g.findViewById(g.action_mode_close_button).setOnClickListener(new e(this, paramb));
      paramb = (android.support.v7.view.menu.i)paramb.b();
      if (this.d != null)
        this.d.e();
      this.d = new k(getContext());
      this.d.b();
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      paramb.a(this.d, this.b);
      this.c = ((ActionMenuView)this.d.a(this));
      this.c.setBackgroundDrawable(null);
      addView(this.c, localLayoutParams);
      return;
      if (this.g.getParent() == null)
        addView(this.g);
    }
  }

  public final boolean a()
  {
    if (this.d != null)
      return this.d.c();
    return false;
  }

  public final void b()
  {
    removeAllViews();
    this.k = null;
    this.c = null;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }

  public CharSequence getSubtitle()
  {
    return this.j;
  }

  public CharSequence getTitle()
  {
    return this.i;
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.d != null)
    {
      this.d.d();
      this.d.f();
    }
  }

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent.setSource(this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(this.i);
      }
    }
    else
      return;
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = gj.a(this);
    int i1;
    int i2;
    int i3;
    Object localObject;
    if (paramBoolean)
    {
      i1 = paramInt3 - paramInt1 - getPaddingRight();
      i2 = getPaddingTop();
      i3 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
      paramInt2 = i1;
      if (this.g != null)
      {
        paramInt2 = i1;
        if (this.g.getVisibility() != 8)
        {
          localObject = (ViewGroup.MarginLayoutParams)this.g.getLayoutParams();
          if (!paramBoolean)
            break label254;
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
          label89: if (!paramBoolean)
            break label263;
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
          label100: paramInt2 = a(i1, paramInt2, paramBoolean);
          paramInt2 = a(paramInt2 + a(this.g, paramInt2, i2, i3, paramBoolean), paramInt4, paramBoolean);
        }
      }
      paramInt4 = paramInt2;
      if (this.l != null)
      {
        paramInt4 = paramInt2;
        if (this.k == null)
        {
          paramInt4 = paramInt2;
          if (this.l.getVisibility() != 8)
            paramInt4 = paramInt2 + a(this.l, paramInt2, i2, i3, paramBoolean);
        }
      }
      if (this.k != null)
        a(this.k, paramInt4, i2, i3, paramBoolean);
      if (!paramBoolean)
        break label273;
      paramInt1 = getPaddingLeft();
      label213: if (this.c != null)
      {
        localObject = this.c;
        if (paramBoolean)
          break label286;
      }
    }
    label263: label273: label286: for (paramBoolean = true; ; paramBoolean = false)
    {
      a((View)localObject, paramInt1, i2, i3, paramBoolean);
      return;
      i1 = getPaddingLeft();
      break;
      label254: paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
      break label89;
      paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
      break label100;
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
      break label213;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = 1073741824;
    int i4 = 0;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    if (View.MeasureSpec.getMode(paramInt2) == 0)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    int i6 = View.MeasureSpec.getSize(paramInt1);
    int i1;
    int i5;
    int i2;
    if (this.e > 0)
    {
      i1 = this.e;
      int i7 = getPaddingTop() + getPaddingBottom();
      paramInt1 = i6 - getPaddingLeft() - getPaddingRight();
      i5 = i1 - i7;
      i2 = View.MeasureSpec.makeMeasureSpec(i5, -2147483648);
      paramInt2 = paramInt1;
      Object localObject;
      if (this.g != null)
      {
        paramInt1 = a(this.g, paramInt1, i2);
        localObject = (ViewGroup.MarginLayoutParams)this.g.getLayoutParams();
        paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        paramInt2 = paramInt1 - (((ViewGroup.MarginLayoutParams)localObject).rightMargin + paramInt2);
      }
      paramInt1 = paramInt2;
      if (this.c != null)
      {
        paramInt1 = paramInt2;
        if (this.c.getParent() == this)
          paramInt1 = a(this.c, paramInt2, i2);
      }
      paramInt2 = paramInt1;
      if (this.l != null)
      {
        paramInt2 = paramInt1;
        if (this.k == null)
        {
          if (!this.h)
            break label496;
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          this.l.measure(paramInt2, i2);
          int i8 = this.l.getMeasuredWidth();
          if (i8 > paramInt1)
            break label484;
          i2 = 1;
          label291: paramInt2 = paramInt1;
          if (i2 != 0)
            paramInt2 = paramInt1 - i8;
          localObject = this.l;
          if (i2 == 0)
            break label490;
          paramInt1 = 0;
          label316: ((LinearLayout)localObject).setVisibility(paramInt1);
        }
      }
      label322: if (this.k != null)
      {
        localObject = this.k.getLayoutParams();
        if (((ViewGroup.LayoutParams)localObject).width == -2)
          break label510;
        paramInt1 = 1073741824;
        label352: i2 = paramInt2;
        if (((ViewGroup.LayoutParams)localObject).width >= 0)
          i2 = Math.min(((ViewGroup.LayoutParams)localObject).width, paramInt2);
        if (((ViewGroup.LayoutParams)localObject).height == -2)
          break label517;
        paramInt2 = i3;
        if (((ViewGroup.LayoutParams)localObject).height < 0)
          break label524;
        i3 = Math.min(((ViewGroup.LayoutParams)localObject).height, i5);
        this.k.measure(View.MeasureSpec.makeMeasureSpec(i2, paramInt1), View.MeasureSpec.makeMeasureSpec(i3, paramInt2));
      }
      label387: label407: if (this.e > 0)
        break label539;
      i2 = getChildCount();
      paramInt1 = 0;
      paramInt2 = i4;
      label444: if (paramInt2 >= i2)
        break label531;
      i1 = getChildAt(paramInt2).getMeasuredHeight() + i7;
      if (i1 <= paramInt1)
        break label547;
      paramInt1 = i1;
    }
    label517: label524: label531: label539: label547: 
    while (true)
    {
      paramInt2 += 1;
      break label444;
      i1 = View.MeasureSpec.getSize(paramInt2);
      break;
      label484: i2 = 0;
      break label291;
      label490: paramInt1 = 8;
      break label316;
      label496: paramInt2 = a(this.l, paramInt1, i2);
      break label322;
      label510: paramInt1 = -2147483648;
      break label352;
      paramInt2 = -2147483648;
      break label387;
      i3 = i5;
      break label407;
      setMeasuredDimension(i6, paramInt1);
      return;
      setMeasuredDimension(i6, i1);
      return;
    }
  }

  public void setContentHeight(int paramInt)
  {
    this.e = paramInt;
  }

  public void setCustomView(View paramView)
  {
    if (this.k != null)
      removeView(this.k);
    this.k = paramView;
    if ((paramView != null) && (this.l != null))
    {
      removeView(this.l);
      this.l = null;
    }
    if (paramView != null)
      addView(paramView);
    requestLayout();
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.j = paramCharSequence;
    c();
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.i = paramCharSequence;
    c();
  }

  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != this.h)
      requestLayout();
    this.h = paramBoolean;
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActionBarContextView
 * JD-Core Version:    0.6.2
 */