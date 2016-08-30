package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v7.c.a.a;

final class dh extends a
{
  boolean b = true;

  public dh(Drawable paramDrawable)
  {
    super(paramDrawable);
  }

  public final void draw(Canvas paramCanvas)
  {
    if (this.b)
      super.draw(paramCanvas);
  }

  public final void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (this.b)
      super.setHotspot(paramFloat1, paramFloat2);
  }

  public final void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.b)
      super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final boolean setState(int[] paramArrayOfInt)
  {
    if (this.b)
      return super.setState(paramArrayOfInt);
    return false;
  }

  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.b)
      return super.setVisible(paramBoolean1, paramBoolean2);
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dh
 * JD-Core Version:    0.6.2
 */