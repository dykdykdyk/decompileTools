package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

public abstract class eb
{
  public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, eo parameo)
  {
  }

  public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, eo parameo)
  {
    ((ee)paramView.getLayoutParams()).c.c();
    paramRect.set(0, 0, 0, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.eb
 * JD-Core Version:    0.6.2
 */