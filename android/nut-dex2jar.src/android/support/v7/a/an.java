package android.support.v7.a;

import android.content.Context;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.ao;
import android.view.KeyEvent;
import android.view.MotionEvent;

final class an extends ContentFrameLayout
{
  public an(ac paramac, Context paramContext)
  {
    super(paramContext);
  }

  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (this.a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }

  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      int i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      if ((i < -5) || (j < -5) || (i > getWidth() + 5) || (j > getHeight() + 5));
      for (i = 1; i != 0; i = 0)
      {
        ac.f(this.a);
        return true;
      }
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }

  public final void setBackgroundResource(int paramInt)
  {
    setBackgroundDrawable(ao.a().a(getContext(), paramInt, false));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.an
 * JD-Core Version:    0.6.2
 */