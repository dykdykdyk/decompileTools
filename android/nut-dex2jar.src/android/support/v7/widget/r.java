package android.support.v7.widget;

import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.d;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.MenuItem;

final class r
  implements y
{
  private r(k paramk)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    if ((parami instanceof ad))
      ((ad)parami).l.a(false);
    y localy = this.a.f;
    if (localy != null)
      localy.a(parami, paramBoolean);
  }

  public final boolean a(i parami)
  {
    if (parami == null)
      return false;
    this.a.s = ((ad)parami).getItem().getItemId();
    y localy = this.a.f;
    if (localy != null)
      return localy.a(parami);
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.r
 * JD-Core Version:    0.6.2
 */