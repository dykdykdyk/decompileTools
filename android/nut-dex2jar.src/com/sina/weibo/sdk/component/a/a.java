package com.sina.weibo.sdk.component.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.widget.TextView;

public final class a extends TextView
{
  private int a;
  private int b = -11693826;
  private Paint c = new Paint();
  private Handler d = new Handler();
  private Runnable e = new b(this);

  public a(Context paramContext)
  {
    super(paramContext);
  }

  private Rect getRect()
  {
    int i = getLeft();
    int j = getTop();
    return new Rect(0, 0, getLeft() + (getRight() - getLeft()) * this.a / 100 - i, getBottom() - j);
  }

  public final void a(int paramInt)
  {
    if (paramInt < 7)
      this.d.postDelayed(this.e, 70L);
    while (true)
    {
      invalidate();
      return;
      this.d.removeCallbacks(this.e);
      this.a = paramInt;
    }
  }

  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.c.setColor(this.b);
    paramCanvas.drawRect(getRect(), this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.a.a
 * JD-Core Version:    0.6.2
 */