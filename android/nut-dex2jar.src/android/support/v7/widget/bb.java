package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.widget.RadioButton;

public final class bb extends RadioButton
  implements android.support.v4.widget.an
{
  private ao a = ao.a();
  private an b = new an(this, this.a);

  public bb(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.radioButtonStyle);
  }

  private bb(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    this.b.a(paramAttributeSet, paramInt);
  }

  public final int getCompoundPaddingLeft()
  {
    int j = super.getCompoundPaddingLeft();
    int i = j;
    if (this.b != null)
      i = this.b.a(j);
    return i;
  }

  public final ColorStateList getSupportButtonTintList()
  {
    if (this.b != null)
      return this.b.a;
    return null;
  }

  public final PorterDuff.Mode getSupportButtonTintMode()
  {
    if (this.b != null)
      return this.b.b;
    return null;
  }

  public final void setButtonDrawable(int paramInt)
  {
    if (this.a != null);
    for (Drawable localDrawable = this.a.a(getContext(), paramInt, false); ; localDrawable = a.a(getContext(), paramInt))
    {
      setButtonDrawable(localDrawable);
      return;
    }
  }

  public final void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    if (this.b != null)
      this.b.a();
  }

  public final void setSupportButtonTintList(ColorStateList paramColorStateList)
  {
    if (this.b != null)
      this.b.a(paramColorStateList);
  }

  public final void setSupportButtonTintMode(PorterDuff.Mode paramMode)
  {
    if (this.b != null)
      this.b.a(paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bb
 * JD-Core Version:    0.6.2
 */