package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.graphics.Point;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.TextOptions;

public class bz
  implements ap
{
  private b a;
  private bc b;
  private String c;
  private int d;
  private int e;
  private LatLng f;
  private float g;
  private int h;
  private Typeface i;
  private boolean j;
  private float k;
  private int l;
  private int m;
  private Object n;
  private int o;

  public bz(ad paramad, TextOptions paramTextOptions, bc parambc)
  {
    this.b = parambc;
    this.c = paramTextOptions.getText();
    this.d = paramTextOptions.getFontSize();
    this.e = paramTextOptions.getFontColor();
    this.f = paramTextOptions.getPosition();
    this.g = paramTextOptions.getRotate();
    this.h = paramTextOptions.getBackgroundColor();
    this.i = paramTextOptions.getTypeface();
    this.j = paramTextOptions.isVisible();
    this.k = paramTextOptions.getZIndex();
    this.l = paramTextOptions.getAlignX();
    this.m = paramTextOptions.getAlignY();
    this.n = paramTextOptions.getObject();
    this.a = ((b)paramad);
  }

  public String a()
  {
    return this.c;
  }

  public void a(float paramFloat)
  {
    this.g = paramFloat;
    this.a.postInvalidate();
  }

  public void a(int paramInt)
  {
    this.d = paramInt;
    this.a.postInvalidate();
  }

  public void a(int paramInt1, int paramInt2)
  {
    this.l = paramInt1;
    this.m = paramInt2;
    this.a.postInvalidate();
  }

  public void a(Canvas paramCanvas)
  {
    if ((TextUtils.isEmpty(this.c)) || (this.f == null))
      return;
    TextPaint localTextPaint = new TextPaint();
    if (this.i == null)
      this.i = Typeface.DEFAULT;
    localTextPaint.setTypeface(this.i);
    localTextPaint.setAntiAlias(true);
    localTextPaint.setTextSize(this.d);
    float f1 = localTextPaint.measureText(this.c);
    float f2 = this.d;
    localTextPaint.setColor(this.h);
    Object localObject = new ab((int)(this.f.latitude * 1000000.0D), (int)(this.f.longitude * 1000000.0D));
    Point localPoint = new Point();
    this.a.r().a((ab)localObject, localPoint);
    paramCanvas.save();
    paramCanvas.rotate(-(this.g % 360.0F), localPoint.x, localPoint.y);
    localObject = localTextPaint.getFontMetrics();
    if ((this.l <= 0) || (this.l > 3))
      this.l = 3;
    if ((this.m < 4) || (this.m > 6))
      this.m = 6;
    int i1;
    int i2;
    switch (this.l)
    {
    default:
      i1 = 0;
      switch (this.m)
      {
      default:
        i2 = 0;
      case 4:
      case 5:
      case 6:
      }
      break;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      f2 = 2.0F + f2;
      paramCanvas.drawRect(i1 - 1, i2 - 1, i1 + (f1 + 2.0F), i2 + f2, localTextPaint);
      localTextPaint.setColor(this.e);
      paramCanvas.drawText(this.c, i1, i2 + f2 - ((Paint.FontMetrics)localObject).bottom, localTextPaint);
      paramCanvas.restore();
      return;
      i1 = localPoint.x;
      break;
      i1 = (int)(localPoint.x - f1);
      break;
      i1 = (int)(localPoint.x - f1 / 2.0F);
      break;
      i2 = localPoint.y;
      continue;
      i2 = (int)(localPoint.y - f2);
      continue;
      i2 = (int)(localPoint.y - f2 / 2.0F);
    }
  }

  public void a(Typeface paramTypeface)
  {
    this.i = paramTypeface;
    this.a.postInvalidate();
  }

  public void a(Object paramObject)
  {
    this.n = paramObject;
  }

  public void a(String paramString)
  {
    this.c = paramString;
    this.a.postInvalidate();
  }

  public int b()
  {
    return this.d;
  }

  public void b(float paramFloat)
  {
    this.k = paramFloat;
    this.b.d();
  }

  public void b(int paramInt)
  {
    this.o = paramInt;
  }

  public void b(LatLng paramLatLng)
  {
    this.f = paramLatLng;
    this.a.postInvalidate();
  }

  public int c()
  {
    return this.e;
  }

  public void c(int paramInt)
  {
    this.e = paramInt;
    this.a.postInvalidate();
  }

  public float d()
  {
    return this.g;
  }

  public void d(int paramInt)
  {
    this.h = paramInt;
    this.a.postInvalidate();
  }

  public int e()
  {
    return this.h;
  }

  public Typeface f()
  {
    return this.i;
  }

  public int g()
  {
    return this.l;
  }

  public int h()
  {
    return this.m;
  }

  public void i()
  {
    if (this.b != null)
      this.b.b(this);
  }

  public float r()
  {
    return this.k;
  }

  public boolean s()
  {
    return this.j;
  }

  public LatLng t()
  {
    return this.f;
  }

  public Object u()
  {
    return this.n;
  }

  public int v()
  {
    return this.o;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bz
 * JD-Core Version:    0.6.2
 */