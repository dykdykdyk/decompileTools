package android.support.v7.widget;

import android.content.Context;
import android.support.v7.b.b;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.v;
import android.view.MenuItem;
import android.view.View;

final class l extends v
{
  private ad h;

  public l(k paramk, Context paramContext, ad paramad)
  {
    super(paramContext, paramad, null, false, b.actionOverflowMenuStyle);
    this.h = paramad;
    int j;
    int i;
    if (!((m)paramad.getItem()).f())
    {
      if (paramk.i == null)
      {
        paramContext = (View)paramk.g;
        this.b = paramContext;
      }
    }
    else
    {
      this.d = paramk.r;
      j = paramad.size();
      i = 0;
    }
    while (true)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramk = paramad.getItem(i);
        if ((paramk.isVisible()) && (paramk.getIcon() != null))
          bool1 = true;
      }
      else
      {
        this.e = bool1;
        return;
        paramContext = paramk.i;
        break;
      }
      i += 1;
    }
  }

  public final void onDismiss()
  {
    super.onDismiss();
    this.g.p = null;
    this.g.s = 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.l
 * JD-Core Version:    0.6.2
 */