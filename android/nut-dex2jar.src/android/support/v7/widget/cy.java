package android.support.v7.widget;

import android.os.SystemClock;
import android.support.v4.view.at;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.PopupWindow;

public abstract class cy
  implements View.OnTouchListener
{
  private final float a;
  private final int b;
  private final int c;
  private final View d;
  private Runnable e;
  private Runnable f;
  private boolean g;
  private boolean h;
  private int i;
  private final int[] j = new int[2];

  public cy(View paramView)
  {
    this.d = paramView;
    this.a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.b = ViewConfiguration.getTapTimeout();
    this.c = ((this.b + ViewConfiguration.getLongPressTimeout()) / 2);
  }

  private boolean a(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    Object localObject1 = this.d;
    Object localObject2 = a();
    if ((localObject2 == null) || (!((cu)localObject2).c.isShowing()))
      bool1 = false;
    while (true)
    {
      return bool1;
      localObject2 = cu.a((cu)localObject2);
      if ((localObject2 == null) || (!((cx)localObject2).isShown()))
        return false;
      MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
      int[] arrayOfInt = this.j;
      ((View)localObject1).getLocationOnScreen(arrayOfInt);
      localMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
      localObject1 = this.j;
      ((View)localObject2).getLocationOnScreen((int[])localObject1);
      localMotionEvent.offsetLocation(-localObject1[0], -localObject1[1]);
      boolean bool2 = ((cx)localObject2).a(localMotionEvent, this.i);
      localMotionEvent.recycle();
      int k = at.a(paramMotionEvent);
      if ((k != 1) && (k != 3));
      for (k = 1; (!bool2) || (k == 0); k = 0)
        return false;
    }
  }

  private void d()
  {
    if (this.f != null)
      this.d.removeCallbacks(this.f);
    if (this.e != null)
      this.d.removeCallbacks(this.e);
  }

  public abstract cu a();

  public boolean b()
  {
    cu localcu = a();
    if ((localcu != null) && (!localcu.c.isShowing()))
      localcu.b();
    return true;
  }

  protected boolean c()
  {
    cu localcu = a();
    if ((localcu != null) && (localcu.c.isShowing()))
      localcu.d();
    return true;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3 = this.g;
    if (bool3)
    {
      if (this.h)
        bool1 = a(paramMotionEvent);
      while (true)
      {
        this.g = bool1;
        if (!bool1)
        {
          bool1 = bool2;
          if (!bool3);
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        if ((a(paramMotionEvent)) || (!c()))
          bool1 = true;
        else
          bool1 = false;
      }
    }
    paramView = this.d;
    if (paramView.isEnabled());
    label128: int k;
    switch (at.a(paramMotionEvent))
    {
    default:
      k = 0;
      label131: if ((k == 0) || (!b()))
        break;
    case 0:
    case 2:
    case 1:
    case 3:
    }
    for (boolean bool1 = true; ; bool1 = false)
    {
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.d.onTouchEvent(paramView);
        paramView.recycle();
      }
      break;
      this.i = paramMotionEvent.getPointerId(0);
      this.h = false;
      if (this.e == null)
        this.e = new cz(this, (byte)0);
      paramView.postDelayed(this.e, this.b);
      if (this.f == null)
        this.f = new da(this, (byte)0);
      paramView.postDelayed(this.f, this.c);
      break label128;
      k = paramMotionEvent.findPointerIndex(this.i);
      if (k < 0)
        break label128;
      float f1 = paramMotionEvent.getX(k);
      float f2 = paramMotionEvent.getY(k);
      float f3 = this.a;
      if ((f1 >= -f3) && (f2 >= -f3) && (f1 < paramView.getRight() - paramView.getLeft() + f3) && (f2 < paramView.getBottom() - paramView.getTop() + f3));
      for (k = 1; k == 0; k = 0)
      {
        d();
        paramView.getParent().requestDisallowInterceptTouchEvent(true);
        k = 1;
        break label131;
      }
      d();
      break label128;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cy
 * JD-Core Version:    0.6.2
 */