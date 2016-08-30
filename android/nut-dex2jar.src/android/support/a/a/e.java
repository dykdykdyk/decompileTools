package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class e extends Drawable.ConstantState
{
  private final Drawable.ConstantState a;

  public e(Drawable.ConstantState paramConstantState)
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
    b localb = new b((byte)0);
    localb.a = this.a.newDrawable();
    localb.a.setCallback(b.a(localb));
    return localb;
  }

  public final Drawable newDrawable(Resources paramResources)
  {
    b localb = new b((byte)0);
    localb.a = this.a.newDrawable(paramResources);
    localb.a.setCallback(b.a(localb));
    return localb;
  }

  public final Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
  {
    b localb = new b((byte)0);
    localb.a = this.a.newDrawable(paramResources, paramTheme);
    localb.a.setCallback(b.a(localb));
    return localb;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.e
 * JD-Core Version:    0.6.2
 */