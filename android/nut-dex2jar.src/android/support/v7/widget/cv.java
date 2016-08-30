package android.support.v7.widget;

import android.view.View;

final class cv
  implements Runnable
{
  cv(cu paramcu)
  {
  }

  public final void run()
  {
    View localView = this.a.l;
    if ((localView != null) && (localView.getWindowToken() != null))
      this.a.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cv
 * JD-Core Version:    0.6.2
 */