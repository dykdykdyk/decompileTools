package android.support.v7.widget;

import android.support.v7.view.menu.a;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window.Callback;

final class gc
  implements View.OnClickListener
{
  final a a = new a(this.b.a.getContext(), this.b.b);

  gc(gb paramgb)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.b.c != null) && (this.b.d))
      this.b.c.onMenuItemSelected(0, this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.gc
 * JD-Core Version:    0.6.2
 */