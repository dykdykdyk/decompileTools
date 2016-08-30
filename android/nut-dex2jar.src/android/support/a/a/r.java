package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;

final class r extends Drawable.ConstantState
{
  private final Drawable.ConstantState a;

  public r(Drawable.ConstantState paramConstantState)
  {
    this.a = paramConstantState;
  }

  public final boolean canApplyTheme()
  {
    return this.a.canApplyTheme();
  }

  public final int getChangingConfigurations()
  {
    return this.a.getChangingConfigurations();
  }

  public final Drawable newDrawable()
  {
    k localk = new k((byte)0);
    localk.a = ((VectorDrawable)this.a.newDrawable());
    return localk;
  }

  public final Drawable newDrawable(Resources paramResources)
  {
    k localk = new k((byte)0);
    localk.a = ((VectorDrawable)this.a.newDrawable(paramResources));
    return localk;
  }

  public final Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
  {
    k localk = new k((byte)0);
    localk.a = ((VectorDrawable)this.a.newDrawable(paramResources, paramTheme));
    return localk;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.r
 * JD-Core Version:    0.6.2
 */