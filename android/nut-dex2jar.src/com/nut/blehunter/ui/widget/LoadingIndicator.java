package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

public class LoadingIndicator extends View
{
  private Paint a = new Paint(1);
  private Bitmap b = BitmapFactory.decodeResource(getResources(), 2130838084);
  private Bitmap c = BitmapFactory.decodeResource(getResources(), 2130838085);
  private int d;
  private int e = 30;
  private int f = this.e;

  public LoadingIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.translate(getWidth() / 2, getHeight() / 2);
    paramCanvas.drawBitmap(this.b, -this.b.getWidth() / 2, -this.b.getHeight() / 2, this.a);
    paramCanvas.clipRect(-this.c.getWidth() / 2, this.c.getHeight() / 2 - this.d, this.c.getWidth() / 2, this.c.getHeight() / 2);
    paramCanvas.drawBitmap(this.c, -this.c.getWidth() / 2, -this.c.getHeight() / 2, this.a);
    this.d = (this.f * this.c.getHeight() / 100);
    this.f += 1;
    if (this.f > 70)
      this.f = this.e;
    postInvalidateDelayed(25L);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.LoadingIndicator
 * JD-Core Version:    0.6.2
 */