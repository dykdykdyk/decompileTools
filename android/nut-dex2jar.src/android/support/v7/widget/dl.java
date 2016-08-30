package android.support.v7.widget;

import android.view.View;

final class dl extends dk
{
  dl(ec paramec)
  {
    super(paramec, (byte)0);
  }

  public final int a(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    return ec.e(paramView) - localee.leftMargin;
  }

  public final void a(int paramInt)
  {
    this.a.f(paramInt);
  }

  public final int b()
  {
    return this.a.m();
  }

  public final int b(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.g(paramView);
    return localee.rightMargin + i;
  }

  public final int c()
  {
    return this.a.z - this.a.o();
  }

  public final int c(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.c(paramView);
    int j = localee.leftMargin;
    return localee.rightMargin + (i + j);
  }

  public final int d()
  {
    return this.a.z;
  }

  public final int d(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.d(paramView);
    int j = localee.topMargin;
    return localee.bottomMargin + (i + j);
  }

  public final int e()
  {
    return this.a.z - this.a.m() - this.a.o();
  }

  public final int f()
  {
    return this.a.o();
  }

  public final int g()
  {
    return this.a.x;
  }

  public final int h()
  {
    return this.a.y;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dl
 * JD-Core Version:    0.6.2
 */