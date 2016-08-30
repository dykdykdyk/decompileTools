package android.support.v7.widget;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.view.View;

final class n
  implements Runnable
{
  private q b;

  public n(k paramk, q paramq)
  {
    this.b = paramq;
  }

  public final void run()
  {
    Object localObject = this.a.c;
    if (((i)localObject).b != null)
      ((i)localObject).b.a((i)localObject);
    localObject = (View)this.a.g;
    if ((localObject != null) && (((View)localObject).getWindowToken() != null) && (this.b.b()))
      this.a.o = this.b;
    this.a.q = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.n
 * JD-Core Version:    0.6.2
 */