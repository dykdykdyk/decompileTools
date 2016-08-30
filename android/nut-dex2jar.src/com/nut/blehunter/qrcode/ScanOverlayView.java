package com.nut.blehunter.qrcode;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.nut.blehunter.qrcode.a.f;

public class ScanOverlayView extends View
{
  int a = 0;
  boolean b = true;
  private f c;
  private final Paint d = new Paint(1);
  private final int e;
  private final int f;
  private final Bitmap g;
  private int h = 0;
  private int i = 0;

  public ScanOverlayView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = getResources();
    this.e = paramContext.getColor(2131427452);
    this.f = paramContext.getColor(2131427420);
    this.g = BitmapFactory.decodeResource(paramContext, 2130838069);
  }

  public int getMaxLineHeight()
  {
    return this.i;
  }

  public int getMinLineHeight()
  {
    return this.h;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.c == null);
    while (true)
    {
      return;
      Rect localRect1 = this.c.e();
      Rect localRect2 = this.c.f();
      if ((localRect1 != null) && (localRect2 != null))
      {
        int j = paramCanvas.getWidth();
        int k = paramCanvas.getHeight();
        this.d.setColor(this.e);
        paramCanvas.drawRect(0.0F, 0.0F, j, localRect1.top, this.d);
        paramCanvas.drawRect(0.0F, localRect1.top, localRect1.left, localRect1.bottom + 1, this.d);
        paramCanvas.drawRect(localRect1.right + 1, localRect1.top, j, localRect1.bottom + 1, this.d);
        paramCanvas.drawRect(0.0F, localRect1.bottom + 1, j, k, this.d);
        this.d.setColor(this.f);
        this.d.setStrokeWidth(8.0F);
        paramCanvas.drawLine(localRect1.left, localRect1.top + 4, localRect1.left + 50, localRect1.top + 4, this.d);
        paramCanvas.drawLine(localRect1.left + 4, localRect1.top, localRect1.left + 4, localRect1.top + 50, this.d);
        paramCanvas.drawLine(localRect1.right - 50, localRect1.top + 4, localRect1.right, localRect1.top + 4, this.d);
        paramCanvas.drawLine(localRect1.right - 4, localRect1.top, localRect1.right - 4, localRect1.top + 50, this.d);
        paramCanvas.drawLine(localRect1.left + 4, localRect1.bottom - 4, localRect1.left + 50, localRect1.bottom - 4, this.d);
        paramCanvas.drawLine(localRect1.left + 4, localRect1.bottom - 50, localRect1.left + 4, localRect1.bottom, this.d);
        paramCanvas.drawLine(localRect1.right - 50, localRect1.bottom - 4, localRect1.right, localRect1.bottom - 4, this.d);
        paramCanvas.drawLine(localRect1.right - 4, localRect1.bottom - 50, localRect1.right - 4, localRect1.bottom, this.d);
        if (this.a == 0)
        {
          this.h = localRect1.top;
          this.i = (localRect1.bottom - this.g.getHeight());
          this.a = this.h;
        }
        if (this.a >= this.i)
          this.a = this.i;
        paramCanvas.drawBitmap(this.g, localRect1.left + (localRect1.width() - this.g.getWidth()) / 2, this.a, this.d);
        if (this.a >= this.i);
        for (this.a = this.h; this.b; this.a += 6)
        {
          postInvalidate(localRect1.left, localRect1.top, localRect1.right, localRect1.bottom);
          return;
        }
      }
    }
  }

  public void setCameraManager(f paramf)
  {
    this.c = paramf;
  }

  public void setLineHeight(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.ScanOverlayView
 * JD-Core Version:    0.6.2
 */