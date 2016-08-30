package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.view.Menu;
import android.view.Window.Callback;

final class au
  implements Runnable
{
  au(at paramat)
  {
  }

  public final void run()
  {
    at localat = this.a;
    Menu localMenu = localat.k();
    i locali;
    if ((localMenu instanceof i))
      locali = (i)localMenu;
    while (true)
    {
      if (locali != null)
        locali.d();
      try
      {
        localMenu.clear();
        if ((!localat.c.onCreatePanelMenu(0, localMenu)) || (!localat.c.onPreparePanel(0, null, localMenu)))
          localMenu.clear();
        return;
        locali = null;
      }
      finally
      {
        if (locali != null)
          locali.e();
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.au
 * JD-Core Version:    0.6.2
 */