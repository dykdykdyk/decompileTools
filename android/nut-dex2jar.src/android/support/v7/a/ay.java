package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.Window.Callback;

final class ay
  implements y
{
  private ay(at paramat)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    if (this.a.c != null)
      this.a.c.onPanelClosed(0, parami);
  }

  public final boolean a(i parami)
  {
    if ((parami == null) && (this.a.c != null))
      this.a.c.onMenuOpened(0, parami);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ay
 * JD-Core Version:    0.6.2
 */