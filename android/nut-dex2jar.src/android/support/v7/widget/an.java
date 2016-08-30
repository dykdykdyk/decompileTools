package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.c.a.a;
import android.support.v4.widget.d;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.widget.CompoundButton;

final class an
{
  ColorStateList a = null;
  PorterDuff.Mode b = null;
  private final CompoundButton c;
  private final ao d;
  private boolean e = false;
  private boolean f = false;
  private boolean g;

  an(CompoundButton paramCompoundButton, ao paramao)
  {
    this.c = paramCompoundButton;
    this.d = paramao;
  }

  private void b()
  {
    Drawable localDrawable = d.a(this.c);
    if ((localDrawable != null) && ((this.e) || (this.f)))
    {
      localDrawable = a.f(localDrawable).mutate();
      if (this.e)
        a.a(localDrawable, this.a);
      if (this.f)
        a.a(localDrawable, this.b);
      if (localDrawable.isStateful())
        localDrawable.setState(this.c.getDrawableState());
      this.c.setButtonDrawable(localDrawable);
    }
  }

  final int a(int paramInt)
  {
    int i = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      Drawable localDrawable = d.a(this.c);
      i = paramInt;
      if (localDrawable != null)
        i = paramInt + localDrawable.getIntrinsicWidth();
    }
    return i;
  }

  final void a()
  {
    if (this.g)
    {
      this.g = false;
      return;
    }
    this.g = true;
    b();
  }

  final void a(ColorStateList paramColorStateList)
  {
    this.a = paramColorStateList;
    this.e = true;
    b();
  }

  final void a(PorterDuff.Mode paramMode)
  {
    this.b = paramMode;
    this.f = true;
    b();
  }

  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = this.c.getContext().obtainStyledAttributes(paramAttributeSet, l.CompoundButton, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(l.CompoundButton_android_button))
      {
        paramInt = paramAttributeSet.getResourceId(l.CompoundButton_android_button, 0);
        if (paramInt != 0)
          this.c.setButtonDrawable(this.d.a(this.c.getContext(), paramInt, false));
      }
      if (paramAttributeSet.hasValue(l.CompoundButton_buttonTint))
        d.a(this.c, paramAttributeSet.getColorStateList(l.CompoundButton_buttonTint));
      if (paramAttributeSet.hasValue(l.CompoundButton_buttonTintMode))
        d.a(this.c, ch.a(paramAttributeSet.getInt(l.CompoundButton_buttonTintMode, -1)));
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.an
 * JD-Core Version:    0.6.2
 */