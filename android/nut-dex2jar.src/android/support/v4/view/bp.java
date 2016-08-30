package android.support.v4.view;

import android.animation.ValueAnimator;
import android.view.View;

class bp extends bo
{
  public final int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }

  final long a()
  {
    return ValueAnimator.getFrameDelay();
  }

  public final void a(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }

  public final void a(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }

  public final void b(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }

  public final void c(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }

  public final void d(View paramView, int paramInt)
  {
    paramView.setLayerType(paramInt, null);
  }

  public final float f(View paramView)
  {
    return paramView.getAlpha();
  }

  public final int g(View paramView)
  {
    return paramView.getLayerType();
  }

  public final int i(View paramView)
  {
    return paramView.getMeasuredWidthAndState();
  }

  public final int j(View paramView)
  {
    return paramView.getMeasuredState();
  }

  public final float l(View paramView)
  {
    return paramView.getTranslationX();
  }

  public final float m(View paramView)
  {
    return paramView.getTranslationY();
  }

  public final void s(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }

  public final void t(View paramView)
  {
    paramView.setSaveFromParentEnabled(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bp
 * JD-Core Version:    0.6.2
 */