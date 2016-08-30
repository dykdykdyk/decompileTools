package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.LinkedList;

class ay$b
  implements Animation.AnimationListener
{
  private LinkedList<Animation> b = new LinkedList();
  private cr c = null;

  private ay$b(ay paramay)
  {
  }

  private void a(float paramFloat, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (this.c == null)
      this.c = new cr(ay.a(this.a).c.g(), this);
    this.c.d = paramBoolean;
    this.c.c = paramFloat;
    this.c.a(paramFloat, false, paramInt1, paramInt2);
  }

  private void b(float paramFloat, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (this.c == null)
      this.c = new cr(ay.a(this.a).c.g(), this);
    this.c.c = paramFloat;
    this.c.d = paramBoolean;
    if (this.c.d == true)
    {
      Point localPoint = new Point(paramInt1, paramInt2);
      ab localab = ay.a(this.a).c.g().r().a(paramInt1, paramInt2);
      ay.a(this.a).i.l = ay.a(this.a).i.a(localab);
      ay.a(this.a).i.a(localPoint);
    }
    this.c.a(paramFloat, true, paramInt1, paramInt2);
  }

  public void a()
  {
    this.b.clear();
  }

  public void a(int paramInt1, int paramInt2, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramBoolean1)
    {
      a(paramFloat, paramInt1, paramInt2, paramBoolean2);
      return;
    }
    b(paramFloat, paramInt1, paramInt2, paramBoolean2);
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = ay.a(this.a).c.g();
    if (this.b.size() == 0)
    {
      ay.a(this.a).e.b();
      return;
    }
    paramAnimation.startAnimation((Animation)this.b.remove());
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ay.b
 * JD-Core Version:    0.6.2
 */