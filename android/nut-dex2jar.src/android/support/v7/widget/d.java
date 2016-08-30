package android.support.v7.widget;

import android.graphics.Outline;
import android.graphics.drawable.Drawable;

final class d extends c
{
  public d(ActionBarContainer paramActionBarContainer)
  {
    super(paramActionBarContainer);
  }

  public final void getOutline(Outline paramOutline)
  {
    if (this.a.d)
      if (this.a.c != null)
        this.a.c.getOutline(paramOutline);
    while (this.a.a == null)
      return;
    this.a.a.getOutline(paramOutline);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.d
 * JD-Core Version:    0.6.2
 */