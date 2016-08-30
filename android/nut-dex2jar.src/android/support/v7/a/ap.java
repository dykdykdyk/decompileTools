package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.Window;
import android.view.Window.Callback;

final class ap
  implements y
{
  private ap(ac paramac)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    i locali = parami.k();
    if (locali != parami);
    for (int i = 1; ; i = 0)
    {
      ac localac = this.a;
      if (i != 0)
        parami = locali;
      parami = ac.a(localac, parami);
      if (parami != null)
      {
        if (i == 0)
          break;
        ac.a(this.a, parami.a, parami, locali);
        ac.a(this.a, parami, true);
      }
      return;
    }
    ac.a(this.a, parami, paramBoolean);
  }

  public final boolean a(i parami)
  {
    if ((parami == null) && (this.a.i))
    {
      Window.Callback localCallback = this.a.c.getCallback();
      if ((localCallback != null) && (!this.a.o))
        localCallback.onMenuOpened(108, parami);
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ap
 * JD-Core Version:    0.6.2
 */