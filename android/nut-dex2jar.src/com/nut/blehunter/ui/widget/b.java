package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.eb;
import android.support.v7.widget.ee;
import android.support.v7.widget.eo;
import android.view.View;

public final class b extends eb
{
  private Drawable a;
  private boolean b = false;
  private boolean c = false;

  public b(Context paramContext)
  {
    paramContext = paramContext.obtainStyledAttributes(null, new int[] { 16843284 });
    this.a = paramContext.getDrawable(0);
    paramContext.recycle();
  }

  public b(Context paramContext, byte paramByte)
  {
    this(paramContext);
    this.b = false;
    this.c = true;
  }

  private b(Drawable paramDrawable)
  {
    this.a = paramDrawable;
  }

  public b(Drawable paramDrawable, boolean paramBoolean)
  {
    this(paramDrawable);
    this.b = false;
    this.c = paramBoolean;
  }

  private static int a(RecyclerView paramRecyclerView)
  {
    if ((paramRecyclerView.getLayoutManager() instanceof LinearLayoutManager))
      return ((LinearLayoutManager)paramRecyclerView.getLayoutManager()).i;
    throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
  }

  private static boolean b(RecyclerView paramRecyclerView)
  {
    if ((paramRecyclerView.getLayoutManager() instanceof LinearLayoutManager))
      return ((LinearLayoutManager)paramRecyclerView.getLayoutManager()).k;
    throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
  }

  public final void a(Canvas paramCanvas, RecyclerView paramRecyclerView, eo parameo)
  {
    int n = 0;
    if (this.a == null)
      super.a(paramCanvas, paramRecyclerView, parameo);
    int i3;
    int i4;
    int i1;
    int j;
    int k;
    int m;
    int i;
    label75: label229: label235: 
    do
    {
      return;
      i3 = a(paramRecyclerView);
      i4 = paramRecyclerView.getChildCount();
      ee localee;
      int i2;
      if (i3 == 1)
      {
        i1 = this.a.getIntrinsicHeight();
        j = paramRecyclerView.getPaddingLeft();
        k = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
        m = 0;
        i = 0;
        if (!this.b)
          break label229;
        if (n >= i4)
          continue;
        parameo = paramRecyclerView.getChildAt(n);
        localee = (ee)parameo.getLayoutParams();
        if (i3 != 1)
          break label265;
        if (!b(paramRecyclerView))
          break label235;
        i = parameo.getBottom() - localee.bottomMargin;
        i2 = i - i1;
        m = j;
        j = i2;
      }
      while (true)
      {
        this.a.setBounds(m, j, k, i);
        this.a.draw(paramCanvas);
        i2 = n + 1;
        n = m;
        m = j;
        j = n;
        n = i2;
        break label75;
        i1 = this.a.getIntrinsicWidth();
        m = paramRecyclerView.getPaddingTop();
        i = paramRecyclerView.getHeight();
        i2 = paramRecyclerView.getPaddingBottom();
        k = 0;
        j = 0;
        i -= i2;
        break;
        n = 1;
        break label75;
        i2 = parameo.getTop() - localee.topMargin;
        i = i2 + i1;
        m = j;
        j = i2;
        continue;
        if (b(paramRecyclerView))
        {
          k = parameo.getRight() - localee.rightMargin;
          i2 = k - i1;
          j = m;
          m = i2;
        }
        else
        {
          i2 = parameo.getLeft() - localee.leftMargin;
          j = m;
          k = i2 + i1;
          m = i2;
        }
      }
    }
    while ((!this.c) || (i4 <= 0));
    label265: paramRecyclerView = paramRecyclerView.getChildAt(i4 - 1);
    parameo = (ee)paramRecyclerView.getLayoutParams();
    if (i3 == 1)
    {
      m = paramRecyclerView.getBottom() + parameo.bottomMargin;
      i = m + i1;
    }
    while (true)
    {
      this.a.setBounds(j, m, k, i);
      this.a.draw(paramCanvas);
      return;
      j = paramRecyclerView.getRight() + parameo.rightMargin;
      k = j + i1;
    }
  }

  public final void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, eo parameo)
  {
    super.a(paramRect, paramView, paramRecyclerView, parameo);
    if (this.a == null);
    while (RecyclerView.c(paramView) <= 0)
      return;
    if (a(paramRecyclerView) == 1)
    {
      paramRect.top = this.a.getIntrinsicHeight();
      return;
    }
    paramRect.left = this.a.getIntrinsicWidth();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.b
 * JD-Core Version:    0.6.2
 */