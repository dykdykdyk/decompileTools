package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ah
  implements Animation.AnimationListener
{
  private Animation.AnimationListener a = null;
  private boolean b = false;
  private View c = null;

  public ah(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null))
      return;
    this.c = paramView;
  }

  public ah(View paramView, Animation paramAnimation, Animation.AnimationListener paramAnimationListener)
  {
    if ((paramView == null) || (paramAnimation == null))
      return;
    this.a = paramAnimationListener;
    this.c = paramView;
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if ((this.c != null) && (this.b))
      this.c.post(new aj(this));
    if (this.a != null)
      this.a.onAnimationEnd(paramAnimation);
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (this.a != null)
      this.a.onAnimationRepeat(paramAnimation);
  }

  public void onAnimationStart(Animation paramAnimation)
  {
    if (this.c != null)
    {
      this.b = ad.a(this.c, paramAnimation);
      if (this.b)
        this.c.post(new ai(this));
    }
    if (this.a != null)
      this.a.onAnimationStart(paramAnimation);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ah
 * JD-Core Version:    0.6.2
 */