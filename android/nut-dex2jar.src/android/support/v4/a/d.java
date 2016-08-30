package android.support.v4.a;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;

final class d
  implements b
{
  private TimeInterpolator a;

  public final void a(View paramView)
  {
    if (this.a == null)
      this.a = new ValueAnimator().getInterpolator();
    paramView.animate().setInterpolator(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.a.d
 * JD-Core Version:    0.6.2
 */