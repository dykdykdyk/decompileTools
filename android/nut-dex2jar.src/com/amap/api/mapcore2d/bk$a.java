package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;
import java.util.Iterator;

public class bk$a
{
  public bx<at> a = null;
  public boolean b = false;
  public boolean c = false;
  String d = "zh_cn";
  int e = 0;
  int f = 0;
  String g;
  String h = "SatelliteMap3";
  String i = "GridTmc3";
  String j = "SateliteTmc3";
  private boolean l = false;
  private boolean m = true;
  private Context n;
  private boolean o = false;

  private bk$a(bk parambk, Context paramContext)
  {
    if (paramContext == null)
      return;
    this.n = paramContext;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i1 = localDisplayMetrics.widthPixels / parambk.i.a + c();
    int i2 = localDisplayMetrics.heightPixels / parambk.i.a + c();
    this.e = (i1 + i1 * i2 + i2);
    this.f = (this.e / 8 + 1);
    if (this.f == 0)
      this.f = 1;
    while (true)
    {
      a(paramContext, "zh_cn");
      return;
      if (this.f > 5)
        this.f = 5;
    }
  }

  private void a(Context paramContext, String paramString)
  {
    if (this.a == null)
      this.a = new bx();
    if ((v.g == null) || (v.g.equals("")))
      if (paramString.equals("zh_cn"))
        this.g = "GridMapV3";
    while (true)
    {
      paramString = new at(this.k.i);
      paramString.j = new bk.a.2(this, paramString);
      paramString.b = this.g;
      paramString.e = true;
      paramString.f = true;
      paramString.c = v.c;
      paramString.d = v.d;
      paramString.q = new cg(this.k, this.n, paramString);
      paramString.a(true);
      a(paramString, paramContext);
      return;
      if (paramString.equals("en"))
      {
        this.g = "GridMapEnV3";
        continue;
        this.g = v.g;
      }
    }
  }

  private void a(Canvas paramCanvas)
  {
    int i2 = this.a.size();
    int i1 = 0;
    while (i1 < i2)
    {
      at localat = (at)this.a.get(i1);
      if ((localat != null) && (localat.a()))
        localat.a(paramCanvas);
      i1 += 1;
    }
  }

  private void b(Canvas paramCanvas)
  {
    if (this.m)
      this.k.g.a(paramCanvas);
  }

  private int c()
  {
    return 3;
  }

  private void c(Canvas paramCanvas)
  {
    this.k.h.j.a(paramCanvas);
  }

  private void c(String paramString)
  {
    if (paramString.equals("") == true);
    while (true)
    {
      return;
      int i2 = this.a.size();
      int i1 = 0;
      while (i1 < i2)
      {
        at localat = (at)this.a.get(i1);
        if ((localat != null) && (!localat.b.equals(paramString)) && (localat.e == true) && (localat.a() == true))
          localat.a(false);
        i1 += 1;
      }
    }
  }

  private void d()
  {
    int i2 = this.a.size();
    int i1 = 0;
    while (i1 < i2)
    {
      at localat = (at)this.a.get(i1);
      if (localat != null)
        localat.l = i1;
      i1 += 1;
    }
  }

  private boolean d(String paramString)
  {
    if (this.a == null)
      return false;
    int i2 = this.a.size();
    int i1 = 0;
    while (i1 < i2)
    {
      at localat = (at)this.a.get(i1);
      if ((localat != null) && (localat.b.equals(paramString) == true))
        return true;
      i1 += 1;
    }
    return false;
  }

  public void a()
  {
    if (this.k.e.a == null)
      return;
    Iterator localIterator = this.k.e.a.iterator();
    while (localIterator.hasNext())
    {
      at localat = (at)localIterator.next();
      if (localat != null)
        localat.b();
    }
    this.k.e.a.clear();
    this.k.e.a = null;
  }

  public void a(Canvas paramCanvas, Matrix paramMatrix, float paramFloat1, float paramFloat2)
  {
    if (this.l)
    {
      paramCanvas.save();
      paramCanvas.translate(paramFloat1, paramFloat2);
      paramCanvas.concat(paramMatrix);
      a(paramCanvas);
      if (this.k.h.i.a())
        b(paramCanvas);
      this.k.h.i.a(paramCanvas);
      paramCanvas.restore();
      if (!this.k.h.i.a())
        b(paramCanvas);
      if ((!this.b) && (!this.c))
      {
        a(false);
        bk.d.a(this.k.c).b(new Matrix());
        bk.d.a(this.k.c).d(1.0F);
        bk.d.a(this.k.c).J();
      }
    }
    while (true)
    {
      c(paramCanvas);
      return;
      a(paramCanvas);
      b(paramCanvas);
      this.k.h.i.a(paramCanvas);
    }
  }

  public void a(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")));
    while ((this.d.equals(paramString)) || ((!paramString.equals("zh_cn")) && (!paramString.equals("en"))))
      return;
    if ((v.g == null) || (v.g.equals("")))
      if (paramString.equals("zh_cn"))
        this.g = "GridMapV3";
    while (true)
    {
      bk.a(this.k, b(this.g));
      if (bk.a(this.k) == null)
      {
        bk.a(this.k, new at(this.k.i));
        bk.a(this.k).q = new cg(this.k, this.n, bk.a(this.k));
        bk.a(this.k).j = new bk.a.1(this);
        bk.a(this.k).b = this.g;
        bk.a(this.k).e = true;
        bk.a(this.k).a(true);
        bk.a(this.k).f = true;
        bk.a(this.k).c = v.c;
        bk.a(this.k).d = v.d;
        a(bk.a(this.k), this.n);
      }
      a(this.g, true);
      this.d = paramString;
      return;
      if (paramString.equals("en"))
      {
        this.g = "GridMapEnV3";
        continue;
        this.g = v.g;
      }
    }
  }

  public void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public boolean a(MotionEvent paramMotionEvent)
  {
    return false;
  }

  boolean a(at paramat, Context paramContext)
  {
    if (paramat == null);
    while ((paramat.b.equals("") == true) || (d(paramat.b) == true))
      return false;
    paramat.p = new bx();
    paramat.n = new bm(this.e, this.f, paramat.g, paramat.i, paramat);
    paramat.o = new y(paramContext, bk.d.a(this.k.c).d, paramat);
    paramat.o.a(paramat.n);
    int i1 = this.a.size();
    boolean bool;
    if ((!paramat.e) || (i1 == 0))
      bool = this.a.add(paramat);
    while (true)
    {
      d();
      if (paramat.a() == true)
        a(paramat.b, true);
      return bool;
      i1 -= 1;
      while (true)
      {
        if (i1 < 0)
          break label215;
        paramContext = (at)this.a.get(i1);
        if ((paramContext != null) && (paramContext.e == true))
        {
          this.a.add(i1, paramat);
          bool = false;
          break;
        }
        i1 -= 1;
      }
      label215: bool = false;
    }
  }

  boolean a(String paramString, boolean paramBoolean)
  {
    if (paramString.equals("") == true)
      return false;
    int i2 = this.a.size();
    int i1 = 0;
    while (i1 < i2)
    {
      at localat = (at)this.a.get(i1);
      if ((localat != null) && (localat.b.equals(paramString) == true))
      {
        localat.a(paramBoolean);
        if (!localat.e)
          return true;
        if (paramBoolean == true)
        {
          if (localat.c > localat.d)
          {
            this.k.c.a(localat.c);
            this.k.c.b(localat.d);
          }
          c(paramString);
          this.k.c.a(false, false);
          return true;
        }
      }
      i1 += 1;
    }
    return false;
  }

  at b(String paramString)
  {
    Object localObject;
    if ((paramString.equals("") == true) || (this.a == null) || (this.a.size() == 0))
    {
      localObject = null;
      return localObject;
    }
    int i2 = this.a.size();
    int i1 = 0;
    while (true)
    {
      if (i1 >= i2)
        break label90;
      at localat = (at)this.a.get(i1);
      if (localat != null)
      {
        localObject = localat;
        if (localat.b.equals(paramString) == true)
          break;
      }
      i1 += 1;
    }
    label90: return null;
  }

  public void b()
  {
    if ((this.k.c == null) || (bk.d.a(this.k.c) == null))
      return;
    bk.d.a(this.k.c).postInvalidate();
  }

  public void b(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  protected boolean b(MotionEvent paramMotionEvent)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bk.a
 * JD-Core Version:    0.6.2
 */