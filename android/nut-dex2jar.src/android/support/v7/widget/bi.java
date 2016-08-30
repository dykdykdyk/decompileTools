package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SpinnerAdapter;

final class bi extends cu
{
  CharSequence a;
  private ListAdapter n;
  private final Rect o = new Rect();

  public bi(bf parambf, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.l = parambf;
    c();
    this.k = 0;
    this.m = new bj(this, parambf);
  }

  final void a()
  {
    Object localObject = this.c.getBackground();
    int i;
    int m;
    int i1;
    int i2;
    int j;
    if (localObject != null)
    {
      ((Drawable)localObject).getPadding(bf.b(this.b));
      if (gj.a(this.b))
      {
        i = bf.b(this.b).right;
        m = this.b.getPaddingLeft();
        i1 = this.b.getPaddingRight();
        i2 = this.b.getWidth();
        if (bf.c(this.b) != -2)
          break label246;
        j = bf.a(this.b, (SpinnerAdapter)this.n, this.c.getBackground());
        int k = this.b.getContext().getResources().getDisplayMetrics().widthPixels - bf.b(this.b).left - bf.b(this.b).right;
        if (j <= k)
          break label294;
        j = k;
      }
    }
    label294: 
    while (true)
    {
      a(Math.max(j, i2 - m - i1));
      label171: if (gj.a(this.b))
        i = i2 - i1 - this.e + i;
      while (true)
      {
        this.f = i;
        return;
        i = -bf.b(this.b).left;
        break;
        localObject = bf.b(this.b);
        bf.b(this.b).right = 0;
        ((Rect)localObject).left = 0;
        i = 0;
        break;
        label246: if (bf.c(this.b) == -1)
        {
          a(i2 - m - i1);
          break label171;
        }
        a(bf.c(this.b));
        break label171;
        i += m;
      }
    }
  }

  public final void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    this.n = paramListAdapter;
  }

  public final void b()
  {
    boolean bool = this.c.isShowing();
    a();
    e();
    super.b();
    this.d.setChoiceMode(1);
    int i = this.b.getSelectedItemPosition();
    Object localObject = this.d;
    if ((this.c.isShowing()) && (localObject != null))
    {
      cx.a((cx)localObject, false);
      ((cx)localObject).setSelection(i);
      if ((Build.VERSION.SDK_INT >= 11) && (((cx)localObject).getChoiceMode() != 0))
        ((cx)localObject).setItemChecked(i, true);
    }
    if (bool);
    do
    {
      return;
      localObject = this.b.getViewTreeObserver();
    }
    while (localObject == null);
    bk localbk = new bk(this);
    ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(localbk);
    a(new bl(this, localbk));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bi
 * JD-Core Version:    0.6.2
 */