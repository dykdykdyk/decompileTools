package com.amap.api.mapcore2d;

import android.graphics.Matrix;
import android.graphics.Point;
import android.view.animation.Animation.AnimationListener;

class cr extends h
{
  public float c = -1.0F;
  public boolean d = false;
  private Animation.AnimationListener e;
  private b f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private boolean l;
  private boolean m = false;

  public cr(b paramb, Animation.AnimationListener paramAnimationListener)
  {
    super(160, 40);
    this.f = paramb;
    this.e = paramAnimationListener;
  }

  protected void a()
  {
    Object localObject;
    if (this.l)
      localObject = this.f.a.i;
    for (((bf)localObject).c += this.k; ; ((bf)localObject).c -= this.k)
    {
      localObject = new Matrix();
      ((Matrix)localObject).setScale(this.f.a.i.c, this.f.a.i.c, this.g, this.h);
      this.f.d(this.f.a.i.c);
      this.f.b((Matrix)localObject);
      return;
      localObject = this.f.a.i;
    }
  }

  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean, float paramFloat3, float paramFloat4)
  {
    this.l = paramBoolean;
    this.g = paramFloat3;
    this.h = paramFloat4;
    this.i = paramFloat1;
    this.f.a.i.c = this.i;
    if (this.l)
    {
      this.k = (this.i * this.b / this.a);
      this.j = (this.i * 2.0F);
      return;
    }
    this.k = (this.i * 0.5F * this.b / this.a);
    this.j = (this.i * 0.5F);
  }

  public void a(float paramFloat1, boolean paramBoolean, float paramFloat2, float paramFloat3)
  {
    this.f.c[0] = this.f.c[1];
    this.f.c[1] = paramFloat1;
    if (this.f.c[0] == this.f.c[1])
      return;
    this.f.a().a(this.f.A());
    if (!e())
    {
      this.a = 160;
      a(this.f.I(), paramFloat1, paramBoolean, paramFloat2, paramFloat3);
      this.f.a().e.a(true);
      this.f.a().e.b = true;
      this.e.onAnimationStart(null);
      super.c();
      return;
    }
    this.m = true;
    d();
    a(this.j, paramFloat1, paramBoolean, paramFloat2, paramFloat3);
    this.f.a().e.a(true);
    this.f.a().e.b = true;
    this.e.onAnimationStart(null);
    super.c();
    this.m = false;
  }

  protected void b()
  {
    if (this.m);
    while (true)
    {
      return;
      try
      {
        if ((this.f != null) && (this.f.a() != null))
        {
          this.f.a().e.b = false;
          Point localPoint;
          ab localab;
          if (this.d == true)
          {
            localPoint = new Point((int)this.g, (int)this.h);
            localab = this.f.r().a((int)this.g, (int)this.h);
            this.f.a().i.l = this.f.a().i.a(localab);
            this.f.a().i.a(localPoint);
            this.f.a().c.a(false, false);
          }
          this.f.C().c(this.c);
          this.e.onAnimationEnd(null);
          if (this.d == true)
          {
            localPoint = new Point(this.f.a().c.c() / 2, this.f.a().c.d() / 2);
            localab = this.f.r().a(this.f.a().c.c() / 2, this.f.a().c.d() / 2);
            this.f.a().i.l = this.f.a().i.a(localab);
            this.f.a().i.a(localPoint);
            this.f.a().c.a(false, false);
          }
          this.f.a.i.c = 1.0F;
          bn.j = 1.0F;
          this.f.a().a(true);
          return;
        }
      }
      catch (Exception localException)
      {
        cz.a(localException, "ZoomCtlAnim", "onStop");
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cr
 * JD-Core Version:    0.6.2
 */