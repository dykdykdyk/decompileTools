package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class do extends AnimatorListenerAdapter
{
  do(dt paramdt, View paramView)
  {
  }

  public final void onAnimationCancel(Animator paramAnimator)
  {
    this.a.c(this.b);
  }

  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.a.b(this.b);
  }

  public final void onAnimationStart(Animator paramAnimator)
  {
    this.a.a(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.do
 * JD-Core Version:    0.6.2
 */