package android.support.v4.view;

import android.view.WindowInsets;

final class dx extends dw
{
  final WindowInsets a;

  dx(WindowInsets paramWindowInsets)
  {
    this.a = paramWindowInsets;
  }

  public final int a()
  {
    return this.a.getSystemWindowInsetLeft();
  }

  public final dw a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new dx(this.a.replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public final int b()
  {
    return this.a.getSystemWindowInsetTop();
  }

  public final int c()
  {
    return this.a.getSystemWindowInsetRight();
  }

  public final int d()
  {
    return this.a.getSystemWindowInsetBottom();
  }

  public final boolean e()
  {
    return this.a.isConsumed();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dx
 * JD-Core Version:    0.6.2
 */