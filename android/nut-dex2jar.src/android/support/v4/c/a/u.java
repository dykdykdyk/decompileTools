package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build.VERSION;

final class u extends s
{
  u(Drawable paramDrawable)
  {
    super(paramDrawable);
  }

  u(m paramm, Resources paramResources)
  {
    super(paramm, paramResources);
  }

  final m b()
  {
    return new v(this.b);
  }

  protected final boolean c()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT == 21)
    {
      Drawable localDrawable = this.c;
      if ((!(localDrawable instanceof GradientDrawable)) && (!(localDrawable instanceof DrawableContainer)))
      {
        bool1 = bool2;
        if (!(localDrawable instanceof InsetDrawable));
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }

  public final Rect getDirtyBounds()
  {
    return this.c.getDirtyBounds();
  }

  public final void getOutline(Outline paramOutline)
  {
    this.c.getOutline(paramOutline);
  }

  public final void setHotspot(float paramFloat1, float paramFloat2)
  {
    this.c.setHotspot(paramFloat1, paramFloat2);
  }

  public final void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final boolean setState(int[] paramArrayOfInt)
  {
    if (super.setState(paramArrayOfInt))
    {
      invalidateSelf();
      return true;
    }
    return false;
  }

  public final void setTint(int paramInt)
  {
    if (c())
    {
      super.setTint(paramInt);
      return;
    }
    this.c.setTint(paramInt);
  }

  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (c())
    {
      super.setTintList(paramColorStateList);
      return;
    }
    this.c.setTintList(paramColorStateList);
  }

  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (c())
    {
      super.setTintMode(paramMode);
      return;
    }
    this.c.setTintMode(paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.u
 * JD-Core Version:    0.6.2
 */