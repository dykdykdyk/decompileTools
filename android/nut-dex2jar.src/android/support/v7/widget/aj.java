package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bl;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.view.View;

final class aj
{
  private final View a;
  private final ao b;
  private fr c;
  private fr d;
  private fr e;

  aj(View paramView, ao paramao)
  {
    this.a = paramView;
    this.b = paramao;
  }

  final ColorStateList a()
  {
    if (this.d != null)
      return this.d.a;
    return null;
  }

  final void a(int paramInt)
  {
    if (this.b != null);
    for (ColorStateList localColorStateList = this.b.b(this.a.getContext(), paramInt); ; localColorStateList = null)
    {
      b(localColorStateList);
      return;
    }
  }

  final void a(ColorStateList paramColorStateList)
  {
    if (this.d == null)
      this.d = new fr();
    this.d.a = paramColorStateList;
    this.d.d = true;
    c();
  }

  final void a(PorterDuff.Mode paramMode)
  {
    if (this.d == null)
      this.d = new fr();
    this.d.b = paramMode;
    this.d.c = true;
    c();
  }

  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = this.a.getContext().obtainStyledAttributes(paramAttributeSet, l.ViewBackgroundHelper, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(l.ViewBackgroundHelper_android_background))
      {
        ColorStateList localColorStateList = this.b.b(this.a.getContext(), paramAttributeSet.getResourceId(l.ViewBackgroundHelper_android_background, -1));
        if (localColorStateList != null)
          b(localColorStateList);
      }
      if (paramAttributeSet.hasValue(l.ViewBackgroundHelper_backgroundTint))
        bl.a(this.a, paramAttributeSet.getColorStateList(l.ViewBackgroundHelper_backgroundTint));
      if (paramAttributeSet.hasValue(l.ViewBackgroundHelper_backgroundTintMode))
        bl.a(this.a, ch.a(paramAttributeSet.getInt(l.ViewBackgroundHelper_backgroundTintMode, -1)));
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }

  final PorterDuff.Mode b()
  {
    if (this.d != null)
      return this.d.b;
    return null;
  }

  final void b(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (this.c == null)
        this.c = new fr();
      this.c.a = paramColorStateList;
      this.c.d = true;
    }
    while (true)
    {
      c();
      return;
      this.c = null;
    }
  }

  final void c()
  {
    int i = 0;
    Drawable localDrawable = this.a.getBackground();
    if (localDrawable != null)
    {
      if (Build.VERSION.SDK_INT != 21)
        break label148;
      if (this.e == null)
        this.e = new fr();
      fr localfr = this.e;
      localfr.a = null;
      localfr.d = false;
      localfr.b = null;
      localfr.c = false;
      Object localObject = bl.u(this.a);
      if (localObject != null)
      {
        localfr.d = true;
        localfr.a = ((ColorStateList)localObject);
      }
      localObject = bl.v(this.a);
      if (localObject != null)
      {
        localfr.c = true;
        localfr.b = ((PorterDuff.Mode)localObject);
      }
      if ((localfr.d) || (localfr.c))
      {
        ao.a(localDrawable, localfr, this.a.getDrawableState());
        i = 1;
      }
      if (i == 0)
        break label148;
    }
    label148: 
    do
    {
      return;
      if (this.d != null)
      {
        ao.a(localDrawable, this.d, this.a.getDrawableState());
        return;
      }
    }
    while (this.c == null);
    ao.a(localDrawable, this.c, this.a.getDrawableState());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aj
 * JD-Core Version:    0.6.2
 */