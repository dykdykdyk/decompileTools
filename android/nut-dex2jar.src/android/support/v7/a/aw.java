package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.support.v7.widget.bu;
import android.view.Window.Callback;

final class aw
  implements y
{
  private boolean b;

  private aw(at paramat)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    if (this.b)
      return;
    this.b = true;
    this.a.a.n();
    if (this.a.c != null)
      this.a.c.onPanelClosed(108, parami);
    this.b = false;
  }

  public final boolean a(i parami)
  {
    if (this.a.c != null)
    {
      this.a.c.onMenuOpened(108, parami);
      return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.aw
 * JD-Core Version:    0.6.2
 */