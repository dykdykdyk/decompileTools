package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.nut.blehunter.t;

public class ShadowCircleImageView extends CircleImageView
{
  private final Paint a = new Paint();
  private float b = 0.0F;
  private float c;
  private float d;
  private int e = -16777216;

  public ShadowCircleImageView(Context paramContext)
  {
    super(paramContext);
  }

  public ShadowCircleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ShadowCircleImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, t.ShadowCircleImageView);
    this.b = paramContext.getDimension(0, 0.0F);
    paramContext.recycle();
    a();
  }

  private void a()
  {
    this.a.setAntiAlias(true);
    this.a.setColor(this.e);
    this.a.setAlpha(179);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    float f1 = 0.0F;
    super.onDraw(paramCanvas);
    float f2 = getDrawableRadius();
    if (this.b == 0.0F)
      this.c = 0.0F;
    while (true)
    {
      this.d = f1;
      paramCanvas.drawArc(getDrawableRect(), this.c, this.d, false, this.a);
      return;
      if (this.b >= 2.0F * f2)
      {
        this.c = 0.0F;
        f1 = 360.0F;
      }
      else
      {
        if (this.b <= f2)
        {
          f1 = (float)Math.toDegrees(Math.acos((f2 - this.b) / f2));
          label101: if (this.b > f2)
            break label185;
          f1 += 270.0F;
          label115: this.c = f1;
          if (this.b > f2)
            break label193;
        }
        label185: label193: for (f1 = (float)Math.toDegrees(Math.acos((f2 - this.b) / f2)); ; f1 = (float)Math.toDegrees(Math.acos((this.b - f2) / f2)))
        {
          if (this.b > f2)
            break label213;
          f1 = 360.0F - f1 * 2.0F;
          break;
          f1 = (float)Math.toDegrees(Math.acos((this.b - f2) / f2));
          break label101;
          f1 = 90.0F - f1;
          break label115;
        }
        label213: f1 *= 2.0F;
      }
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a();
  }

  public void setShadowColor(int paramInt)
  {
    this.e = paramInt;
    this.a.setColor(this.e);
    this.a.setAlpha(179);
  }

  public void setShadowHeight(float paramFloat)
  {
    if (this.b == paramFloat)
      return;
    this.b = paramFloat;
    postInvalidate();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.ShadowCircleImageView
 * JD-Core Version:    0.6.2
 */