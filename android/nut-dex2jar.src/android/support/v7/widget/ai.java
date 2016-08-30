package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bg;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;

public class ai extends AutoCompleteTextView
  implements bg
{
  private static final int[] a = { 16843126 };
  private ao b = ao.a();
  private aj c;
  private bm d;

  public ai(Context paramContext)
  {
    this(paramContext, null);
  }

  public ai(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.autoCompleteTextViewStyle);
  }

  public ai(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    paramContext = ft.a(getContext(), paramAttributeSet, a, paramInt);
    if (paramContext.e(0))
      setDropDownBackgroundDrawable(paramContext.a(0));
    paramContext.a.recycle();
    this.c = new aj(this, this.b);
    this.c.a(paramAttributeSet, paramInt);
    this.d = bm.a(this);
    this.d.a(paramAttributeSet, paramInt);
    this.d.a();
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.c != null)
      this.c.c();
    if (this.d != null)
      this.d.a();
  }

  public ColorStateList getSupportBackgroundTintList()
  {
    if (this.c != null)
      return this.c.a();
    return null;
  }

  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.c != null)
      return this.c.b();
    return null;
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.c != null)
      this.c.b(null);
  }

  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.c != null)
      this.c.a(paramInt);
  }

  public void setDropDownBackgroundResource(int paramInt)
  {
    if (this.b != null)
    {
      setDropDownBackgroundDrawable(this.b.a(getContext(), paramInt, false));
      return;
    }
    super.setDropDownBackgroundResource(paramInt);
  }

  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.c != null)
      this.c.a(paramColorStateList);
  }

  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.c != null)
      this.c.a(paramMode);
  }

  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.d != null)
      this.d.a(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ai
 * JD-Core Version:    0.6.2
 */