package android.support.v7.widget;

import android.support.v4.view.dd;
import android.support.v4.view.dt;
import android.view.View;

public final class b
  implements dt
{
  int a;
  private boolean c = false;

  protected b(a parama)
  {
  }

  public final b a(dd paramdd, int paramInt)
  {
    this.b.f = paramdd;
    this.a = paramInt;
    return this;
  }

  public final void a(View paramView)
  {
    a.a(this.b);
    this.c = false;
  }

  public final void b(View paramView)
  {
    if (this.c)
      return;
    this.b.f = null;
    a.a(this.b, this.a);
  }

  public final void c(View paramView)
  {
    this.c = true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.b
 * JD-Core Version:    0.6.2
 */