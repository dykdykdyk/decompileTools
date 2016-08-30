package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

public abstract class m extends Drawable.ConstantState
{
  int a;
  Drawable.ConstantState b;
  ColorStateList c = null;
  PorterDuff.Mode d = l.a;

  m(m paramm)
  {
    if (paramm != null)
    {
      this.a = paramm.a;
      this.b = paramm.b;
      this.c = paramm.c;
      this.d = paramm.d;
    }
  }

  public int getChangingConfigurations()
  {
    int j = this.a;
    if (this.b != null);
    for (int i = this.b.getChangingConfigurations(); ; i = 0)
      return i | j;
  }

  public Drawable newDrawable()
  {
    return newDrawable(null);
  }

  public abstract Drawable newDrawable(Resources paramResources);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.m
 * JD-Core Version:    0.6.2
 */