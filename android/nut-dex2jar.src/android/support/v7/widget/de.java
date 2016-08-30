package android.support.v7.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class de
  implements View.OnTouchListener
{
  private de(cu paramcu)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (cu.b(this.a) != null) && (cu.b(this.a).isShowing()) && (j >= 0) && (j < cu.b(this.a).getWidth()) && (k >= 0) && (k < cu.b(this.a).getHeight()))
      cu.d(this.a).postDelayed(cu.c(this.a), 250L);
    while (true)
    {
      return false;
      if (i == 1)
        cu.d(this.a).removeCallbacks(cu.c(this.a));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.de
 * JD-Core Version:    0.6.2
 */