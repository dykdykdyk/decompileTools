package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;

final class dh
  implements dt
{
  dd a;
  boolean b;

  dh(dd paramdd)
  {
    this.a = paramdd;
  }

  public final void a(View paramView)
  {
    this.b = false;
    if (dd.f(this.a) >= 0)
      bl.d(paramView, 2);
    if (dd.c(this.a) != null)
    {
      localObject = dd.c(this.a);
      dd.b(this.a);
      ((Runnable)localObject).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof dt));
    for (localObject = (dt)localObject; ; localObject = null)
    {
      if (localObject != null)
        ((dt)localObject).a(paramView);
      return;
    }
  }

  public final void b(View paramView)
  {
    if (dd.f(this.a) >= 0)
    {
      bl.d(paramView, dd.f(this.a));
      dd.e(this.a);
    }
    if ((Build.VERSION.SDK_INT >= 16) || (!this.b))
    {
      if (dd.d(this.a) != null)
      {
        localObject = dd.d(this.a);
        dd.a(this.a);
        ((Runnable)localObject).run();
      }
      localObject = paramView.getTag(2113929216);
      if (!(localObject instanceof dt))
        break label112;
    }
    label112: for (Object localObject = (dt)localObject; ; localObject = null)
    {
      if (localObject != null)
        ((dt)localObject).b(paramView);
      this.b = true;
      return;
    }
  }

  public final void c(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof dt));
    for (localObject = (dt)localObject; ; localObject = null)
    {
      if (localObject != null)
        ((dt)localObject).c(paramView);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dh
 * JD-Core Version:    0.6.2
 */