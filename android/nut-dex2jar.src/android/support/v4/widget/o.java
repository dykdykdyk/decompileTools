package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class o
{
  private static final r b = new p();
  private Object a;

  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new s();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      b = new q();
      return;
    }
  }

  public o(Context paramContext)
  {
    this.a = b.a(paramContext);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    b.a(this.a, paramInt1, paramInt2);
  }

  public final boolean a()
  {
    return b.a(this.a);
  }

  public final boolean a(float paramFloat)
  {
    return b.a(this.a, paramFloat);
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    return b.a(this.a, paramFloat1, paramFloat2);
  }

  public final boolean a(int paramInt)
  {
    return b.a(this.a, paramInt);
  }

  public final boolean a(Canvas paramCanvas)
  {
    return b.a(this.a, paramCanvas);
  }

  public final void b()
  {
    b.b(this.a);
  }

  public final boolean c()
  {
    return b.c(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.o
 * JD-Core Version:    0.6.2
 */