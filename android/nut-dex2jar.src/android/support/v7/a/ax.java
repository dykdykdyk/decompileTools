package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.support.v7.widget.bu;
import android.view.MenuItem;
import android.view.Window.Callback;

final class ax
  implements j
{
  private ax(at paramat)
  {
  }

  public final void a(i parami)
  {
    if (this.a.c != null)
    {
      if (!this.a.a.i())
        break label41;
      this.a.c.onPanelClosed(108, parami);
    }
    label41: 
    while (!this.a.c.onPreparePanel(0, null, parami))
      return;
    this.a.c.onMenuOpened(108, parami);
  }

  public final boolean a(i parami, MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ax
 * JD-Core Version:    0.6.2
 */