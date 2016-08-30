package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class dg extends de
{
  WeakHashMap<View, Integer> b = null;

  public final long a(View paramView)
  {
    return paramView.animate().getDuration();
  }

  public final void a(dd paramdd, View paramView)
  {
    paramView.animate().cancel();
  }

  public final void a(dd paramdd, View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }

  public void a(dd paramdd, View paramView, dt paramdt)
  {
    paramView.setTag(2113929216, paramdt);
    paramdd = new dh(paramdd);
    paramView.animate().setListener(new do(paramdd, paramView));
  }

  public final void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }

  public final void a(View paramView, Interpolator paramInterpolator)
  {
    paramView.animate().setInterpolator(paramInterpolator);
  }

  public final void b(dd paramdd, View paramView)
  {
    paramView.animate().start();
  }

  public final void b(dd paramdd, View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }

  public final void b(View paramView, long paramLong)
  {
    paramView.animate().setStartDelay(paramLong);
  }

  public final void c(dd paramdd, View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dg
 * JD-Core Version:    0.6.2
 */