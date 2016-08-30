package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.View;

class bv extends View
{
  private String a = "";
  private int b = 0;
  private b c;
  private Paint d;
  private Paint e;
  private Rect f;

  public bv(Context paramContext, b paramb)
  {
    super(paramContext);
    this.c = paramb;
    this.d = new Paint();
    this.f = new Rect();
    this.d.setAntiAlias(true);
    this.d.setColor(-16777216);
    this.d.setStrokeWidth(2.0F * v.a);
    this.d.setStyle(Paint.Style.STROKE);
    this.e = new Paint();
    this.e.setAntiAlias(true);
    this.e.setColor(-16777216);
    this.e.setTextSize(20.0F * v.a);
  }

  public void a()
  {
    this.d = null;
    this.e = null;
    this.f = null;
    this.a = null;
  }

  public void a(int paramInt)
  {
    this.b = paramInt;
  }

  public void a(String paramString)
  {
    this.a = paramString;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int j;
    int i;
    try
    {
      boolean bool = this.c.p().a();
      if (!bool)
        return;
    }
    catch (RemoteException localRemoteException)
    {
      do
        localRemoteException.printStackTrace();
      while ((this.a.equals("")) || (this.b == 0));
      j = this.b;
      i = j;
    }
    try
    {
      if (j > this.c.getWidth() / 5)
        i = this.c.getWidth() / 5;
      Point localPoint = this.c.z();
      this.e.getTextBounds(this.a, 0, this.a.length(), this.f);
      if (localPoint.x + i > this.c.getWidth() - 10)
      {
        j = this.c.getWidth() - 10 - (this.f.width() + i) / 2;
        int k = localPoint.y - this.f.height() + 5;
        paramCanvas.drawText(this.a, j, k, this.e);
        j -= (i - this.f.width()) / 2;
        k += this.f.height() - 5;
        paramCanvas.drawLine(j, k - 2, j, k + 2, this.d);
        paramCanvas.drawLine(j, k, j + i, k, this.d);
        paramCanvas.drawLine(j + i, k - 2, j + i, k + 2, this.d);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        cz.a(localException, "ScaleView", "onDraw");
        i = j;
        continue;
        j = localException.x + (i - this.f.width()) / 2;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bv
 * JD-Core Version:    0.6.2
 */