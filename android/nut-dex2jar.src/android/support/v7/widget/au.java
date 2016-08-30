package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bg;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.widget.ImageButton;

public final class au extends ImageButton
  implements bg
{
  private aj a;
  private av b;

  public au(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.imageButtonStyle);
  }

  private au(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    paramContext = ao.a();
    this.a = new aj(this, paramContext);
    this.a.a(paramAttributeSet, paramInt);
    this.b = new av(this, paramContext);
    this.b.a(paramAttributeSet, paramInt);
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.a != null)
      this.a.c();
  }

  public final ColorStateList getSupportBackgroundTintList()
  {
    if (this.a != null)
      return this.a.a();
    return null;
  }

  public final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.a != null)
      return this.a.b();
    return null;
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.a != null)
      this.a.b(null);
  }

  public final void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.a != null)
      this.a.a(paramInt);
  }

  public final void setImageResource(int paramInt)
  {
    this.b.a(paramInt);
  }

  public final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.a != null)
      this.a.a(paramColorStateList);
  }

  public final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.a != null)
      this.a.a(paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.au
 * JD-Core Version:    0.6.2
 */