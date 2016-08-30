package android.support.v7.widget;

import android.view.View;

final class ey
  implements Runnable
{
  ey(ex paramex, View paramView)
  {
  }

  public final void run()
  {
    int i = this.a.getLeft();
    int j = (this.b.getWidth() - this.a.getWidth()) / 2;
    this.b.smoothScrollTo(i - j, 0);
    this.b.a = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ey
 * JD-Core Version:    0.6.2
 */