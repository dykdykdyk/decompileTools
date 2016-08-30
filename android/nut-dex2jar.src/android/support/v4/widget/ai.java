package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public final class ai
{
  public Object a;
  public aj b;

  private ai(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14)
      this.b = new am();
    while (true)
    {
      this.a = this.b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9)
        this.b = new al();
      else
        this.b = new ak();
    }
  }

  public static ai a(Context paramContext, Interpolator paramInterpolator)
  {
    return new ai(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b.a(this.a, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final boolean a()
  {
    return this.b.a(this.a);
  }

  public final boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    return this.b.c(this.a, paramInt1, paramInt2, paramInt3);
  }

  public final int b()
  {
    return this.b.b(this.a);
  }

  public final int c()
  {
    return this.b.c(this.a);
  }

  public final int d()
  {
    return this.b.h(this.a);
  }

  public final float e()
  {
    return this.b.d(this.a);
  }

  public final boolean f()
  {
    return this.b.e(this.a);
  }

  public final void g()
  {
    this.b.f(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ai
 * JD-Core Version:    0.6.2
 */