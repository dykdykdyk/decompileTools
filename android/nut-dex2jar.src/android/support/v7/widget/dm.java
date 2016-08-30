package android.support.v7.widget;

import android.view.View;

final class dm extends dk
{
  dm(ec paramec)
  {
    super(paramec, (byte)0);
  }

  public final int a(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    return ec.f(paramView) - localee.topMargin;
  }

  public final void a(int paramInt)
  {
    this.a.g(paramInt);
  }

  public final int b()
  {
    return this.a.n();
  }

  public final int b(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.h(paramView);
    return localee.bottomMargin + i;
  }

  public final int c()
  {
    return this.a.A - this.a.p();
  }

  public final int c(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.d(paramView);
    int j = localee.topMargin;
    return localee.bottomMargin + (i + j);
  }

  public final int d()
  {
    return this.a.A;
  }

  public final int d(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    int i = ec.c(paramView);
    int j = localee.leftMargin;
    return localee.rightMargin + (i + j);
  }

  public final int e()
  {
    return this.a.A - this.a.n() - this.a.p();
  }

  public final int f()
  {
    return this.a.p();
  }

  public final int g()
  {
    return this.a.y;
  }

  public final int h()
  {
    return this.a.x;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dm
 * JD-Core Version:    0.6.2
 */