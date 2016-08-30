package android.support.v7.widget;

import android.support.v4.view.bl;
import android.support.v4.view.dd;

final class h
  implements Runnable
{
  h(ActionBarOverlayLayout paramActionBarOverlayLayout)
  {
  }

  public final void run()
  {
    ActionBarOverlayLayout.b(this.a);
    ActionBarOverlayLayout.a(this.a, bl.o(ActionBarOverlayLayout.d(this.a)).c(-ActionBarOverlayLayout.d(this.a).getHeight()).a(ActionBarOverlayLayout.c(this.a)));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.h
 * JD-Core Version:    0.6.2
 */