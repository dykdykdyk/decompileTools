package android.support.v4.widget;

import android.content.res.Resources;
import android.support.v4.view.at;
import android.support.v4.view.bl;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class a
  implements View.OnTouchListener
{
  private static final int r = ViewConfiguration.getTapTimeout();
  private final b a = new b();
  private final Interpolator b = new AccelerateInterpolator();
  private final View c;
  private Runnable d;
  private float[] e = { 0.0F, 0.0F };
  private float[] f = { 3.4028235E+38F, 3.4028235E+38F };
  private int g;
  private int h;
  private float[] i = { 0.0F, 0.0F };
  private float[] j = { 0.0F, 0.0F };
  private float[] k = { 3.4028235E+38F, 3.4028235E+38F };
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;

  public a(View paramView)
  {
    this.c = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i1 = (int)(1575.0F * paramView.density + 0.5F);
    int i2 = (int)(paramView.density * 315.0F + 0.5F);
    float f1 = i1;
    this.k[0] = (f1 / 1000.0F);
    this.k[1] = (f1 / 1000.0F);
    f1 = i2;
    this.j[0] = (f1 / 1000.0F);
    this.j[1] = (f1 / 1000.0F);
    this.g = 1;
    this.f[0] = 3.4028235E+38F;
    this.f[1] = 3.4028235E+38F;
    this.e[0] = 0.2F;
    this.e[1] = 0.2F;
    this.i[0] = 0.001F;
    this.i[1] = 0.001F;
    this.h = r;
    this.a.a = 500;
    this.a.b = 500;
  }

  private float a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F);
    do
    {
      do
      {
        do
        {
          return 0.0F;
          switch (this.g)
          {
          default:
            return 0.0F;
          case 0:
          case 1:
          case 2:
          }
        }
        while (paramFloat1 >= paramFloat2);
        if (paramFloat1 >= 0.0F)
          return 1.0F - paramFloat1 / paramFloat2;
      }
      while ((!this.o) || (this.g != 1));
      return 1.0F;
    }
    while (paramFloat1 >= 0.0F);
    return paramFloat1 / -paramFloat2;
  }

  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3)
      return paramFloat3;
    if (paramFloat1 < paramFloat2)
      return paramFloat2;
    return paramFloat1;
  }

  private float a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = a(this.e[paramInt] * paramFloat2, 0.0F, this.f[paramInt]);
    float f2 = a(paramFloat1, f1);
    paramFloat1 = a(paramFloat2 - paramFloat1, f1) - f2;
    if (paramFloat1 < 0.0F)
      paramFloat1 = -this.b.getInterpolation(-paramFloat1);
    for (paramFloat1 = a(paramFloat1, -1.0F, 1.0F); ; paramFloat1 = 0.0F)
    {
      if (paramFloat1 != 0.0F)
        break label102;
      return 0.0F;
      if (paramFloat1 > 0.0F)
      {
        paramFloat1 = this.b.getInterpolation(paramFloat1);
        break;
      }
    }
    label102: f2 = this.i[paramInt];
    paramFloat2 = this.j[paramInt];
    f1 = this.k[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (paramFloat1 > 0.0F)
      return a(paramFloat1 * paramFloat3, paramFloat2, f1);
    return -a(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }

  private boolean a()
  {
    b localb = this.a;
    int i1 = (int)(localb.d / Math.abs(localb.d));
    int i2 = (int)(localb.c / Math.abs(localb.c));
    if ((i1 == 0) || (!b(i1)))
    {
      if (i2 != 0);
      return false;
    }
    return true;
  }

  private void b()
  {
    if (this.m)
    {
      this.o = false;
      return;
    }
    b localb = this.a;
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    int i1 = (int)(l1 - localb.e);
    int i2 = localb.b;
    if (i1 > i2)
      i1 = i2;
    while (true)
    {
      localb.k = i1;
      localb.j = localb.a(l1);
      localb.i = l1;
      return;
      if (i1 < 0)
        i1 = 0;
    }
  }

  public final a a(boolean paramBoolean)
  {
    if ((this.p) && (!paramBoolean))
      b();
    this.p = paramBoolean;
    return this;
  }

  public abstract void a(int paramInt);

  public abstract boolean b(int paramInt);

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!this.p);
    while (true)
    {
      return false;
      switch (at.a(paramMotionEvent))
      {
      default:
      case 0:
      case 2:
      case 1:
      case 3:
      }
      while ((this.q) && (this.o))
      {
        return true;
        this.n = true;
        this.l = false;
        float f1 = a(0, paramMotionEvent.getX(), paramView.getWidth(), this.c.getWidth());
        float f2 = a(1, paramMotionEvent.getY(), paramView.getHeight(), this.c.getHeight());
        paramView = this.a;
        paramView.c = f1;
        paramView.d = f2;
        if ((!this.o) && (a()))
        {
          if (this.d == null)
            this.d = new c(this, (byte)0);
          this.o = true;
          this.m = true;
          if ((!this.l) && (this.h > 0))
            bl.a(this.c, this.d, this.h);
          while (true)
          {
            this.l = true;
            break;
            this.d.run();
          }
          b();
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.a
 * JD-Core Version:    0.6.2
 */