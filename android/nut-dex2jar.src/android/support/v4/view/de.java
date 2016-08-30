package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class de
  implements dm
{
  WeakHashMap<View, Runnable> a = null;

  private void d(dd paramdd, View paramView)
  {
    Runnable localRunnable = null;
    if (this.a != null)
      localRunnable = (Runnable)this.a.get(paramView);
    Object localObject = localRunnable;
    if (localRunnable == null)
    {
      localObject = new df(this, paramdd, paramView, (byte)0);
      if (this.a == null)
        this.a = new WeakHashMap();
      this.a.put(paramView, localObject);
    }
    paramView.removeCallbacks((Runnable)localObject);
    paramView.post((Runnable)localObject);
  }

  public long a(View paramView)
  {
    return 0L;
  }

  public void a(dd paramdd, View paramView)
  {
    d(paramdd, paramView);
  }

  public void a(dd paramdd, View paramView, float paramFloat)
  {
    d(paramdd, paramView);
  }

  public void a(dd paramdd, View paramView, dt paramdt)
  {
    paramView.setTag(2113929216, paramdt);
  }

  public void a(View paramView, long paramLong)
  {
  }

  public void a(View paramView, dv paramdv)
  {
  }

  public void a(View paramView, Interpolator paramInterpolator)
  {
  }

  public void b(dd paramdd, View paramView)
  {
    if (this.a != null)
    {
      Runnable localRunnable = (Runnable)this.a.get(paramView);
      if (localRunnable != null)
        paramView.removeCallbacks(localRunnable);
    }
    c(paramdd, paramView);
  }

  public void b(dd paramdd, View paramView, float paramFloat)
  {
    d(paramdd, paramView);
  }

  public void b(View paramView, long paramLong)
  {
  }

  final void c(dd paramdd, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof dt));
    for (localObject = (dt)localObject; ; localObject = null)
    {
      Runnable localRunnable1 = dd.c(paramdd);
      Runnable localRunnable2 = dd.d(paramdd);
      dd.b(paramdd);
      dd.a(paramdd);
      if (localRunnable1 != null)
        localRunnable1.run();
      if (localObject != null)
      {
        ((dt)localObject).a(paramView);
        ((dt)localObject).b(paramView);
      }
      if (localRunnable2 != null)
        localRunnable2.run();
      if (this.a != null)
        this.a.remove(paramView);
      return;
    }
  }

  public void c(dd paramdd, View paramView, float paramFloat)
  {
    d(paramdd, paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.de
 * JD-Core Version:    0.6.2
 */