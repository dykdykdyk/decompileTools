package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import com.amap.api.maps2d.model.TileOverlayOptions;

public class cd
  implements aq
{
  private static int a = 0;
  private ce b;
  private at c;
  private boolean d;
  private String e;
  private float f;

  public cd(TileOverlayOptions paramTileOverlayOptions, ce paramce, bf parambf, bk parambk, Context paramContext)
  {
    this.b = paramce;
    this.c = new at(parambf);
    this.c.e = false;
    this.c.g = false;
    this.c.f = paramTileOverlayOptions.getDiskCacheEnabled();
    this.c.p = new bx();
    this.c.k = paramTileOverlayOptions.getTileProvider();
    this.c.n = new bm(parambk.e.e, parambk.e.f, false, 0L, this.c);
    parambf = paramTileOverlayOptions.getDiskCacheDir();
    if (TextUtils.isEmpty(parambf))
      this.c.f = false;
    this.c.m = parambf;
    this.c.o = new y(paramce.getContext(), false, this.c);
    paramce = new cg(parambk, paramContext, this.c);
    this.c.q = paramce;
    this.c.a(true);
    this.d = paramTileOverlayOptions.isVisible();
    this.e = c();
    this.f = paramTileOverlayOptions.getZIndex();
  }

  private static String a(String paramString)
  {
    a += 1;
    return paramString + a;
  }

  public void a()
  {
    try
    {
      this.b.b(this);
      this.c.b();
      this.c.q.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "TileOverlayDelegateImp", "remove");
    }
  }

  public void a(float paramFloat)
  {
    this.f = paramFloat;
  }

  public void a(Canvas paramCanvas)
  {
    this.c.a(paramCanvas);
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    this.c.a(paramBoolean);
  }

  public boolean a(aq paramaq)
  {
    return false;
  }

  public void b()
  {
    try
    {
      this.c.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "TileOverlayDelegateImp", "remove");
    }
  }

  public void b(boolean paramBoolean)
  {
  }

  public String c()
  {
    if (this.e == null)
      this.e = a("TileOverlay");
    return this.e;
  }

  public float d()
  {
    return this.f;
  }

  public boolean e()
  {
    return this.d;
  }

  public int f()
  {
    return 0;
  }

  public void g()
  {
    this.c.q.c();
  }

  public void h()
  {
    this.c.q.d();
  }

  public void i()
  {
    this.c.q.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cd
 * JD-Core Version:    0.6.2
 */