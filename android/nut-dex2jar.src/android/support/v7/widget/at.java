package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bg;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.widget.EditText;

public final class at extends EditText
  implements bg
{
  private ao a = ao.a();
  private aj b = new aj(this, this.a);
  private bm c;

  public at(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.editTextStyle);
  }

  private at(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    this.b.a(paramAttributeSet, paramInt);
    this.c = bm.a(this);
    this.c.a(paramAttributeSet, paramInt);
    this.c.a();
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.b != null)
      this.b.c();
    if (this.c != null)
      this.c.a();
  }

  public final ColorStateList getSupportBackgroundTintList()
  {
    if (this.b != null)
      return this.b.a();
    return null;
  }

  public final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.b != null)
      return this.b.b();
    return null;
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.b != null)
      this.b.b(null);
  }

  public final void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.b != null)
      this.b.a(paramInt);
  }

  public final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.b != null)
      this.b.a(paramColorStateList);
  }

  public final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.b != null)
      this.b.a(paramMode);
  }

  public final void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.c != null)
      this.c.a(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.at
 * JD-Core Version:    0.6.2
 */