package android.support.v4.widget;

import android.support.v4.view.bl;
import android.view.animation.AnimationUtils;

final class c
  implements Runnable
{
  private c(a parama)
  {
  }

  public final void run()
  {
    int j = 0;
    if (!a.a(this.a))
      return;
    if (a.b(this.a))
    {
      a.c(this.a);
      localb = a.d(this.a);
      localb.e = AnimationUtils.currentAnimationTimeMillis();
      localb.i = -1L;
      localb.f = localb.e;
      localb.j = 0.5F;
      localb.g = 0;
      localb.h = 0;
    }
    b localb = a.d(this.a);
    int i = j;
    if (localb.i > 0L)
    {
      i = j;
      if (AnimationUtils.currentAnimationTimeMillis() > localb.i + localb.k)
        i = 1;
    }
    if ((i != 0) || (!a.e(this.a)))
    {
      a.f(this.a);
      return;
    }
    if (a.g(this.a))
    {
      a.h(this.a);
      a.i(this.a);
    }
    if (localb.f == 0L)
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    float f = localb.a(l1);
    f = f * 4.0F + -4.0F * f * f;
    long l2 = l1 - localb.f;
    localb.f = l1;
    localb.g = ((int)((float)l2 * f * localb.c));
    localb.h = ((int)(f * (float)l2 * localb.d));
    i = localb.h;
    this.a.a(i);
    bl.a(a.j(this.a), this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.c
 * JD-Core Version:    0.6.2
 */