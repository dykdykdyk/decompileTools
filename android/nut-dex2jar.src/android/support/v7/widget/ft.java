package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public final class ft
{
  public final TypedArray a;
  private final Context b;

  ft(Context paramContext, TypedArray paramTypedArray)
  {
    this.b = paramContext;
    this.a = paramTypedArray;
  }

  public static ft a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt)
  {
    return new ft(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt, 0));
  }

  public final int a(int paramInt1, int paramInt2)
  {
    return this.a.getInt(paramInt1, paramInt2);
  }

  public final Drawable a(int paramInt)
  {
    if (this.a.hasValue(paramInt))
    {
      int i = this.a.getResourceId(paramInt, 0);
      if (i != 0)
        return ao.a().a(this.b, i, false);
    }
    return this.a.getDrawable(paramInt);
  }

  public final boolean a(int paramInt, boolean paramBoolean)
  {
    return this.a.getBoolean(paramInt, paramBoolean);
  }

  public final int b(int paramInt1, int paramInt2)
  {
    return this.a.getDimensionPixelOffset(paramInt1, paramInt2);
  }

  public final Drawable b(int paramInt)
  {
    if (this.a.hasValue(paramInt))
    {
      paramInt = this.a.getResourceId(paramInt, 0);
      if (paramInt != 0)
        return ao.a().a(this.b, paramInt, true);
    }
    return null;
  }

  public final int c(int paramInt1, int paramInt2)
  {
    return this.a.getDimensionPixelSize(paramInt1, paramInt2);
  }

  public final CharSequence c(int paramInt)
  {
    return this.a.getText(paramInt);
  }

  public final int d(int paramInt)
  {
    return this.a.getColor(paramInt, -1);
  }

  public final int d(int paramInt1, int paramInt2)
  {
    return this.a.getLayoutDimension(paramInt1, paramInt2);
  }

  public final int e(int paramInt1, int paramInt2)
  {
    return this.a.getResourceId(paramInt1, paramInt2);
  }

  public final boolean e(int paramInt)
  {
    return this.a.hasValue(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ft
 * JD-Core Version:    0.6.2
 */