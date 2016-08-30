package android.support.a.a;

import android.animation.Animator;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.f.a;
import java.util.ArrayList;

final class d extends Drawable.ConstantState
{
  int a;
  k b;
  ArrayList<Animator> c;
  a<Animator, String> d;

  public final int getChangingConfigurations()
  {
    return this.a;
  }

  public final Drawable newDrawable()
  {
    throw new IllegalStateException("No constant state support for SDK < 23.");
  }

  public final Drawable newDrawable(Resources paramResources)
  {
    throw new IllegalStateException("No constant state support for SDK < 23.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.d
 * JD-Core Version:    0.6.2
 */