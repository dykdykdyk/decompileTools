package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;

final class ag extends ah
{
  ag(ad paramad, View paramView, Animation paramAnimation, Fragment paramFragment)
  {
    super(paramView, paramAnimation);
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    if (this.a.mAnimatingAway != null)
    {
      this.a.mAnimatingAway = null;
      this.b.a(this.a, this.a.mStateAfterAnimating, 0, 0, false);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ag
 * JD-Core Version:    0.6.2
 */