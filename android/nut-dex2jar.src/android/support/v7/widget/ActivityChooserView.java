package android.support.v7.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.n;
import android.support.v7.b.j;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public final class ActivityChooserView extends ViewGroup
{
  n a;
  private final ad b;
  private final ae c;
  private final co d;
  private final FrameLayout e;
  private final ImageView f;
  private final FrameLayout g;
  private final int h;
  private final DataSetObserver i;
  private final ViewTreeObserver.OnGlobalLayoutListener j;
  private cu k;
  private PopupWindow.OnDismissListener l;
  private boolean m;
  private int n;
  private boolean o;
  private int p;

  private void a(int paramInt)
  {
    if (this.b.a == null)
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    getViewTreeObserver().addOnGlobalLayoutListener(this.j);
    boolean bool;
    int i1;
    label62: label93: cu localcu;
    if (this.g.getVisibility() == 0)
    {
      bool = true;
      int i2 = this.b.a.a();
      if (!bool)
        break label196;
      i1 = 1;
      if ((paramInt == 2147483647) || (i2 <= i1 + paramInt))
        break label201;
      this.b.a(true);
      this.b.a(paramInt - 1);
      localcu = getListPopupWindow();
      if (!localcu.c.isShowing())
      {
        if ((!this.m) && (bool))
          break label220;
        this.b.a(true, bool);
      }
    }
    while (true)
    {
      localcu.a(Math.min(this.b.a(), this.h));
      localcu.b();
      if (this.a != null)
        this.a.a(true);
      localcu.d.setContentDescription(getContext().getString(j.abc_activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label196: i1 = 0;
      break label62;
      label201: this.b.a(false);
      this.b.a(paramInt);
      break label93;
      label220: this.b.a(false, false);
    }
  }

  private boolean b()
  {
    return getListPopupWindow().c.isShowing();
  }

  private cu getListPopupWindow()
  {
    if (this.k == null)
    {
      this.k = new cu(getContext());
      this.k.a(this.b);
      this.k.l = this;
      this.k.c();
      this.k.m = this.c;
      this.k.a(this.c);
    }
    return this.k;
  }

  public final boolean a()
  {
    if (getListPopupWindow().c.isShowing())
    {
      getListPopupWindow().d();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive())
        localViewTreeObserver.removeGlobalOnLayoutListener(this.j);
    }
    return true;
  }

  public final x getDataModel()
  {
    return this.b.a;
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    x localx = this.b.a;
    if (localx != null)
      localx.registerObserver(this.i);
    this.o = true;
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = this.b.a;
    if (localObject != null)
      ((x)localObject).unregisterObserver(this.i);
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive())
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(this.j);
    if (b())
      a();
    this.o = false;
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!b())
      a();
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    co localco = this.d;
    int i1 = paramInt2;
    if (this.g.getVisibility() != 0)
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    measureChild(localco, paramInt1, i1);
    setMeasuredDimension(localco.getMeasuredWidth(), localco.getMeasuredHeight());
  }

  public final void setActivityChooserModel(x paramx)
  {
    ad localad = this.b;
    x localx = localad.c.b.a;
    if ((localx != null) && (localad.c.isShown()))
      localx.unregisterObserver(localad.c.i);
    localad.a = paramx;
    if ((paramx != null) && (localad.c.isShown()))
      paramx.registerObserver(localad.c.i);
    localad.notifyDataSetChanged();
    if (getListPopupWindow().c.isShowing())
    {
      a();
      if ((!getListPopupWindow().c.isShowing()) && (this.o));
    }
    else
    {
      return;
    }
    this.m = false;
    a(this.n);
  }

  public final void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.p = paramInt;
  }

  public final void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    this.f.setContentDescription(str);
  }

  public final void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.f.setImageDrawable(paramDrawable);
  }

  public final void setInitialActivityCount(int paramInt)
  {
    this.n = paramInt;
  }

  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.l = paramOnDismissListener;
  }

  public final void setProvider(n paramn)
  {
    this.a = paramn;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActivityChooserView
 * JD-Core Version:    0.6.2
 */