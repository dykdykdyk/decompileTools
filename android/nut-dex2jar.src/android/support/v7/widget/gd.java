package android.support.v7.widget;

import android.support.v4.view.du;
import android.view.View;

final class gd extends du
{
  private boolean c = false;

  gd(gb paramgb, int paramInt)
  {
  }

  public final void a(View paramView)
  {
    this.b.a.setVisibility(0);
  }

  public final void b(View paramView)
  {
    if (!this.c)
      this.b.a.setVisibility(this.a);
  }

  public final void c(View paramView)
  {
    this.c = true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.gd
 * JD-Core Version:    0.6.2
 */