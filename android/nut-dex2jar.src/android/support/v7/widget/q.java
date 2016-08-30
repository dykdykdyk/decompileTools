package android.support.v7.widget;

import android.content.Context;
import android.support.v7.b.b;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.v;
import android.view.View;

final class q extends v
{
  public q(k paramk, Context paramContext, i parami, View paramView)
  {
    super(paramContext, parami, paramView, true, b.actionOverflowMenuStyle);
    this.f = 8388613;
    this.d = paramk.r;
  }

  public final void onDismiss()
  {
    super.onDismiss();
    if (this.g.c != null)
      this.g.c.close();
    this.g.o = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.q
 * JD-Core Version:    0.6.2
 */