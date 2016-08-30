package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

class bm$1
  implements o
{
  bm$1(bm parambm, List paramList)
  {
  }

  public void a(Canvas paramCanvas)
  {
    if (bm.a(this.b) == null)
    {
      bm.a(this.b, new Paint());
      bm.a(this.b).setStyle(Paint.Style.STROKE);
      bm.a(this.b).setDither(true);
      bm.a(this.b).setAntiAlias(true);
      bm.a(this.b).setStrokeJoin(Paint.Join.ROUND);
      bm.a(this.b).setStrokeCap(Paint.Cap.ROUND);
    }
    if (bm.b(this.b) == null)
      bm.a(this.b, new Path());
    int m = this.a.size();
    int j = 0;
    while (j < m)
    {
      Object localObject = (ci)this.a.get(j);
      bm.a(this.b).setStrokeWidth(3.0F);
      int i = ((ci)localObject).b();
      int k;
      label201: PointF localPointF;
      if (i == 1)
      {
        bm.a(this.b).setColor(-65536);
        localObject = ((ci)localObject).a();
        int n = ((List)localObject).size();
        k = 0;
        i = 1;
        if (k >= n)
          break label321;
        localPointF = (PointF)((List)localObject).get(k);
        if (i == 0)
          break label298;
        bm.b(this.b).moveTo(localPointF.x, localPointF.y);
        i = 0;
      }
      while (true)
      {
        k += 1;
        break label201;
        if (i == 2)
        {
          bm.a(this.b).setColor(-256);
          break;
        }
        if (i != 3)
          break;
        bm.a(this.b).setColor(-16711936);
        break;
        label298: bm.b(this.b).lineTo(localPointF.x, localPointF.y);
      }
      label321: paramCanvas.drawPath(bm.b(this.b), bm.a(this.b));
      bm.b(this.b).reset();
      j += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bm.1
 * JD-Core Version:    0.6.2
 */