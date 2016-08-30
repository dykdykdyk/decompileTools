package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

class c extends Drawable
{
  final ActionBarContainer a;

  public c(ActionBarContainer paramActionBarContainer)
  {
    this.a = paramActionBarContainer;
  }

  public void draw(Canvas paramCanvas)
  {
    if (this.a.d)
      if (this.a.c != null)
        this.a.c.draw(paramCanvas);
    do
    {
      return;
      if (this.a.a != null)
        this.a.a.draw(paramCanvas);
    }
    while ((this.a.b == null) || (!this.a.e));
    this.a.b.draw(paramCanvas);
  }

  public int getOpacity()
  {
    return 0;
  }

  public void setAlpha(int paramInt)
  {
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.c
 * JD-Core Version:    0.6.2
 */