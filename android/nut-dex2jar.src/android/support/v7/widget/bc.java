package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.view.bl;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.widget.RatingBar;

public final class bc extends RatingBar
{
  private ba a = new ba(this, this.b);
  private ao b = ao.a();

  public bc(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.ratingBarStyle);
  }

  private bc(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a.a(paramAttributeSet, paramInt);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      Bitmap localBitmap = this.a.b;
      if (localBitmap != null)
        setMeasuredDimension(bl.a(localBitmap.getWidth() * getNumStars(), paramInt1, 0), getMeasuredHeight());
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bc
 * JD-Core Version:    0.6.2
 */