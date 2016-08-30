package android.support.v4.view;

import android.view.View;

class bs extends bq
{
  public final void a(View paramView, Runnable paramRunnable)
  {
    paramView.postOnAnimation(paramRunnable);
  }

  public final void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postOnAnimationDelayed(paramRunnable, paramLong);
  }

  public void c(View paramView, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 4)
      i = 2;
    paramView.setImportantForAccessibility(i);
  }

  public final boolean c(View paramView)
  {
    return paramView.hasTransientState();
  }

  public final void d(View paramView)
  {
    paramView.postInvalidateOnAnimation();
  }

  public final int e(View paramView)
  {
    return paramView.getImportantForAccessibility();
  }

  public final boolean k(View paramView)
  {
    return paramView.hasOverlappingRendering();
  }

  public final int n(View paramView)
  {
    return paramView.getMinimumWidth();
  }

  public final int o(View paramView)
  {
    return paramView.getMinimumHeight();
  }

  public void r(View paramView)
  {
    paramView.requestFitSystemWindows();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bs
 * JD-Core Version:    0.6.2
 */