package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.RectF;
import com.amap.api.maps2d.model.TileProvider;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

class at extends au
{
  bf a;
  public String b = "";
  public int c = 18;
  public int d = 3;
  public boolean e = true;
  public boolean f = false;
  public boolean g = false;
  public boolean h = true;
  public long i = 0L;
  public cn j = null;
  TileProvider k = null;
  public int l = -1;
  public String m = "";
  bm n = null;
  y o = null;
  bx<cc> p = null;
  private String r = "LayerPropertys";
  private boolean s = false;

  public at(bf parambf)
  {
    this.a = parambf;
  }

  protected void a(Canvas paramCanvas)
  {
    try
    {
      if (this.p == null)
        return;
      Iterator localIterator = this.p.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (cc)localIterator.next();
        if (((cc)localObject).g < 0)
        {
          if (this.e);
        }
        else
        {
          Bitmap localBitmap = this.n.a(((cc)localObject).g);
          localObject = this.a.a(((cc)localObject).b, ((cc)localObject).c);
          if ((localBitmap != null) && (localObject != null))
          {
            float f1 = ((PointF)localObject).x;
            float f2 = this.a.a;
            float f3 = ((PointF)localObject).y;
            float f4 = this.a.a;
            paramCanvas.drawBitmap(localBitmap, null, new RectF(((PointF)localObject).x, ((PointF)localObject).y, f1 + f2, f3 + f4), null);
          }
        }
      }
    }
    catch (ConcurrentModificationException paramCanvas)
    {
      cz.a(paramCanvas, this.r, "drawLayer");
    }
  }

  void a(boolean paramBoolean)
  {
    this.s = paramBoolean;
    if (paramBoolean)
    {
      this.q.d();
      return;
    }
    this.n.c();
    this.q.c();
  }

  boolean a()
  {
    return this.s;
  }

  protected void b()
  {
    this.q.e();
    this.o.a(null);
    this.n.c();
    this.p.clear();
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof at))
      return false;
    paramObject = (at)paramObject;
    return this.b.equals(paramObject.b);
  }

  public int hashCode()
  {
    return this.l;
  }

  public String toString()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.at
 * JD-Core Version:    0.6.2
 */