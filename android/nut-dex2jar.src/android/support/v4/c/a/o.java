package android.support.v4.c.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class o extends l
{
  o(Drawable paramDrawable)
  {
    super(paramDrawable);
  }

  o(m paramm, Resources paramResources)
  {
    super(paramm, paramResources);
  }

  protected final Drawable a(Drawable.ConstantState paramConstantState, Resources paramResources)
  {
    return paramConstantState.newDrawable(paramResources);
  }

  final m b()
  {
    return new p(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.o
 * JD-Core Version:    0.6.2
 */