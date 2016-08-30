package android.support.v7.widget;

import android.view.View;

public abstract class dk
{
  protected final ec a;
  int b = -2147483648;

  private dk(ec paramec)
  {
    this.a = paramec;
  }

  public static dk a(ec paramec, int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("invalid orientation");
    case 0:
      return new dl(paramec);
    case 1:
    }
    return new dm(paramec);
  }

  public final int a()
  {
    if (-2147483648 == this.b)
      return 0;
    return e() - this.b;
  }

  public abstract int a(View paramView);

  public abstract void a(int paramInt);

  public abstract int b();

  public abstract int b(View paramView);

  public abstract int c();

  public abstract int c(View paramView);

  public abstract int d();

  public abstract int d(View paramView);

  public abstract int e();

  public abstract int f();

  public abstract int g();

  public abstract int h();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dk
 * JD-Core Version:    0.6.2
 */