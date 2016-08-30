package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.Window;
import android.view.Window.Callback;

final class ak
  implements y
{
  private ak(ac paramac)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    ac.a(this.a, parami);
  }

  public final boolean a(i parami)
  {
    Window.Callback localCallback = this.a.c.getCallback();
    if (localCallback != null)
      localCallback.onMenuOpened(108, parami);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ak
 * JD-Core Version:    0.6.2
 */