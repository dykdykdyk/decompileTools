package android.support.v7.widget;

import android.support.v4.view.bl;
import android.widget.PopupWindow;

final class df
  implements Runnable
{
  private df(cu paramcu)
  {
  }

  public final void run()
  {
    if ((cu.a(this.a) != null) && (bl.y(cu.a(this.a))) && (cu.a(this.a).getCount() > cu.a(this.a).getChildCount()) && (cu.a(this.a).getChildCount() <= this.a.j))
    {
      cu.b(this.a).setInputMethodMode(2);
      this.a.b();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.df
 * JD-Core Version:    0.6.2
 */