package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.support.v4.view.bl;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.bp;
import android.support.v7.widget.ef;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

public final class e
  implements ef
{
  private g a;
  private GestureDetector b;

  public e(Context paramContext, g paramg)
  {
    this.a = paramg;
    this.b = new GestureDetector(paramContext, new f(this));
    this.b.setIsLongpressEnabled(false);
  }

  public final boolean a(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
  {
    boolean bool = this.b.onTouchEvent(paramMotionEvent);
    if ((paramMotionEvent.getPointerCount() > 1) && (!bool))
      return true;
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    int i = paramRecyclerView.d.a() - 1;
    if (i >= 0)
    {
      paramMotionEvent = paramRecyclerView.d.b(i);
      float f3 = bl.k(paramMotionEvent);
      float f4 = bl.l(paramMotionEvent);
      if ((f1 < paramMotionEvent.getLeft() + f3) || (f1 > f3 + paramMotionEvent.getRight()) || (f2 < paramMotionEvent.getTop() + f4) || (f2 > paramMotionEvent.getBottom() + f4));
    }
    for (paramRecyclerView = paramMotionEvent; ; paramRecyclerView = null)
    {
      if ((paramRecyclerView == null) || (this.a == null) || (!bool))
        break label176;
      this.a.a(paramRecyclerView, RecyclerView.c(paramRecyclerView));
      return true;
      i -= 1;
      break;
    }
    label176: return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.e
 * JD-Core Version:    0.6.2
 */