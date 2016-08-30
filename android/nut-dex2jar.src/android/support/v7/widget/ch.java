package android.support.v7.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.support.v4.c.a.k;
import android.support.v7.c.a.a;

public final class ch
{
  public static final Rect a = new Rect();
  private static Class<?> b;

  static
  {
    if (Build.VERSION.SDK_INT >= 18);
    try
    {
      b = Class.forName("android.graphics.Insets");
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
  }

  static PorterDuff.Mode a(int paramInt)
  {
    switch (paramInt)
    {
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    default:
    case 3:
    case 5:
    case 9:
    case 14:
    case 15:
    case 16:
    }
    do
    {
      return null;
      return PorterDuff.Mode.SRC_OVER;
      return PorterDuff.Mode.SRC_IN;
      return PorterDuff.Mode.SRC_ATOP;
      return PorterDuff.Mode.MULTIPLY;
      return PorterDuff.Mode.SCREEN;
    }
    while (Build.VERSION.SDK_INT < 11);
    return PorterDuff.Mode.valueOf("ADD");
  }

  static void a(Drawable paramDrawable)
  {
    int[] arrayOfInt;
    if ((Build.VERSION.SDK_INT == 21) && ("android.graphics.drawable.VectorDrawable".equals(paramDrawable.getClass().getName())))
    {
      arrayOfInt = paramDrawable.getState();
      if ((arrayOfInt != null) && (arrayOfInt.length != 0))
        break label52;
      paramDrawable.setState(fp.e);
    }
    while (true)
    {
      paramDrawable.setState(arrayOfInt);
      return;
      label52: paramDrawable.setState(fp.h);
    }
  }

  public static boolean b(Drawable paramDrawable)
  {
    while (true)
    {
      if ((paramDrawable instanceof LayerDrawable))
        return Build.VERSION.SDK_INT >= 16;
      if ((paramDrawable instanceof InsetDrawable))
        return Build.VERSION.SDK_INT >= 14;
      if ((paramDrawable instanceof StateListDrawable))
        return Build.VERSION.SDK_INT >= 8;
      if ((paramDrawable instanceof GradientDrawable))
        return Build.VERSION.SDK_INT >= 14;
      if ((paramDrawable instanceof DrawableContainer))
      {
        paramDrawable = paramDrawable.getConstantState();
        if (!(paramDrawable instanceof DrawableContainer.DrawableContainerState))
          break;
        paramDrawable = ((DrawableContainer.DrawableContainerState)paramDrawable).getChildren();
        int j = paramDrawable.length;
        int i = 0;
        while (i < j)
        {
          if (!b(paramDrawable[i]))
            return false;
          i += 1;
        }
      }
      if ((paramDrawable instanceof k))
      {
        paramDrawable = ((k)paramDrawable).a();
      }
      else if ((paramDrawable instanceof a))
      {
        paramDrawable = ((a)paramDrawable).a;
      }
      else
      {
        if (!(paramDrawable instanceof ScaleDrawable))
          break;
        paramDrawable = ((ScaleDrawable)paramDrawable).getDrawable();
      }
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ch
 * JD-Core Version:    0.6.2
 */