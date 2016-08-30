package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bl;
import android.support.v7.b.l;
import android.support.v7.widget.bo;
import android.support.v7.widget.cy;
import android.support.v7.widget.s;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ActionMenuItemView extends bo
  implements aa, s, View.OnClickListener, View.OnLongClickListener
{
  private m a;
  private CharSequence b;
  private Drawable c;
  private k d;
  private cy e;
  private c f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;

  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    this.g = localResources.getBoolean(android.support.v7.b.c.abc_config_allowActionMenuItemTextWithIcon);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, l.ActionMenuItemView, paramInt, 0);
    this.i = paramContext.getDimensionPixelSize(l.ActionMenuItemView_android_minWidth, 0);
    paramContext.recycle();
    this.k = ((int)(localResources.getDisplayMetrics().density * 32.0F + 0.5F));
    setOnClickListener(this);
    setOnLongClickListener(this);
    this.j = -1;
  }

  private void e()
  {
    int i2 = 0;
    int m;
    int n;
    if (!TextUtils.isEmpty(this.b))
    {
      m = 1;
      if (this.c != null)
      {
        if ((this.a.c & 0x4) != 4)
          break label87;
        n = 1;
        label37: i1 = i2;
        if (n == 0)
          break label63;
        if (!this.g)
        {
          i1 = i2;
          if (!this.h)
            break label63;
        }
      }
      int i1 = 1;
      label63: if ((m & i1) == 0)
        break label92;
    }
    label87: label92: for (CharSequence localCharSequence = this.b; ; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      m = 0;
      break;
      n = 0;
      break label37;
    }
  }

  public final void a(m paramm)
  {
    this.a = paramm;
    setIcon(paramm.getIcon());
    setTitle(paramm.a(this));
    setId(paramm.getItemId());
    if (paramm.isVisible());
    for (int m = 0; ; m = 8)
    {
      setVisibility(m);
      setEnabled(paramm.isEnabled());
      if ((paramm.hasSubMenu()) && (this.e == null))
        this.e = new b(this);
      return;
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean b()
  {
    return !TextUtils.isEmpty(getText());
  }

  public final boolean c()
  {
    return (b()) && (this.a.getIcon() == null);
  }

  public final boolean d()
  {
    return b();
  }

  public m getItemData()
  {
    return this.a;
  }

  public void onClick(View paramView)
  {
    if (this.d != null)
      this.d.a(this.a);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    this.g = getContext().getResources().getBoolean(android.support.v7.b.c.abc_config_allowActionMenuItemTextWithIcon);
    e();
  }

  public boolean onLongClick(View paramView)
  {
    if (b())
      return false;
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int m = getWidth();
    int i1 = getHeight();
    int i2 = arrayOfInt[1];
    int i3 = i1 / 2;
    int n = arrayOfInt[0];
    n = m / 2 + n;
    m = n;
    if (bl.h(paramView) == 0)
      m = localContext.getResources().getDisplayMetrics().widthPixels - n;
    paramView = Toast.makeText(localContext, this.a.getTitle(), 0);
    if (i2 + i3 < localRect.height())
      paramView.setGravity(8388661, m, arrayOfInt[1] + i1 - localRect.top);
    while (true)
    {
      paramView.show();
      return true;
      paramView.setGravity(81, 0, i1);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = b();
    if ((bool) && (this.j >= 0))
      super.setPadding(this.j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = getMeasuredWidth();
    if (m == -2147483648);
    for (paramInt1 = Math.min(paramInt1, this.i); ; paramInt1 = this.i)
    {
      if ((m != 1073741824) && (this.i > 0) && (n < paramInt1))
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      if ((!bool) && (this.c != null))
        super.setPadding((getMeasuredWidth() - this.c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.a.hasSubMenu()) && (this.e != null) && (this.e.onTouch(this, paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public void setCheckable(boolean paramBoolean)
  {
  }

  public void setChecked(boolean paramBoolean)
  {
  }

  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.h != paramBoolean)
    {
      this.h = paramBoolean;
      if (this.a != null)
        this.a.b.g();
    }
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.c = paramDrawable;
    if (paramDrawable != null)
    {
      int i2 = paramDrawable.getIntrinsicWidth();
      int i1 = paramDrawable.getIntrinsicHeight();
      int n = i1;
      int m = i2;
      float f1;
      if (i2 > this.k)
      {
        f1 = this.k / i2;
        m = this.k;
        n = (int)(i1 * f1);
      }
      i2 = n;
      i1 = m;
      if (n > this.k)
      {
        f1 = this.k / n;
        i2 = this.k;
        i1 = (int)(m * f1);
      }
      paramDrawable.setBounds(0, 0, i1, i2);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    e();
  }

  public void setItemInvoker(k paramk)
  {
    this.d = paramk;
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setPopupCallback(c paramc)
  {
    this.f = paramc;
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    setContentDescription(this.b);
    e();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.ActionMenuItemView
 * JD-Core Version:    0.6.2
 */