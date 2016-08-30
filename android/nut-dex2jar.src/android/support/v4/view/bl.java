package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.view.View;

public final class bl
{
  static final by a = new bm();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new bx();
      return;
    }
    if (i >= 21)
    {
      a = new bw();
      return;
    }
    if (i >= 19)
    {
      a = new bv();
      return;
    }
    if (i >= 17)
    {
      a = new bt();
      return;
    }
    if (i >= 16)
    {
      a = new bs();
      return;
    }
    if (i >= 15)
    {
      a = new bq();
      return;
    }
    if (i >= 14)
    {
      a = new br();
      return;
    }
    if (i >= 11)
    {
      a = new bp();
      return;
    }
    if (i >= 9)
    {
      a = new bo();
      return;
    }
    if (i >= 7)
    {
      a = new bn();
      return;
    }
  }

  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramInt1, paramInt2, paramInt3);
  }

  public static int a(View paramView)
  {
    return a.a(paramView);
  }

  public static dw a(View paramView, dw paramdw)
  {
    return a.a(paramView, paramdw);
  }

  public static void a(View paramView, float paramFloat)
  {
    a.a(paramView, paramFloat);
  }

  public static void a(View paramView, ColorStateList paramColorStateList)
  {
    a.a(paramView, paramColorStateList);
  }

  public static void a(View paramView, PorterDuff.Mode paramMode)
  {
    a.a(paramView, paramMode);
  }

  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }

  public static void a(View paramView, bd parambd)
  {
    a.a(paramView, parambd);
  }

  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }

  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    a.a(paramView, paramRunnable, paramLong);
  }

  public static void a(View paramView, boolean paramBoolean)
  {
    a.a(paramView, paramBoolean);
  }

  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }

  public static dw b(View paramView, dw paramdw)
  {
    return a.b(paramView, paramdw);
  }

  public static void b(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }

  public static boolean b(View paramView)
  {
    return a.b(paramView);
  }

  public static boolean b(View paramView, int paramInt)
  {
    return a.b(paramView, paramInt);
  }

  public static void c(View paramView, float paramFloat)
  {
    a.c(paramView, paramFloat);
  }

  public static void c(View paramView, int paramInt)
  {
    a.c(paramView, paramInt);
  }

  public static boolean c(View paramView)
  {
    return a.c(paramView);
  }

  public static void d(View paramView)
  {
    a.d(paramView);
  }

  public static void d(View paramView, float paramFloat)
  {
    a.d(paramView, paramFloat);
  }

  public static void d(View paramView, int paramInt)
  {
    a.d(paramView, paramInt);
  }

  public static int e(View paramView)
  {
    return a.e(paramView);
  }

  public static void e(View paramView, int paramInt)
  {
    a.e(paramView, paramInt);
  }

  public static float f(View paramView)
  {
    return a.f(paramView);
  }

  public static int g(View paramView)
  {
    return a.g(paramView);
  }

  public static int h(View paramView)
  {
    return a.h(paramView);
  }

  public static int i(View paramView)
  {
    return a.i(paramView);
  }

  public static int j(View paramView)
  {
    return a.j(paramView);
  }

  public static float k(View paramView)
  {
    return a.l(paramView);
  }

  public static float l(View paramView)
  {
    return a.m(paramView);
  }

  public static int m(View paramView)
  {
    return a.n(paramView);
  }

  public static int n(View paramView)
  {
    return a.o(paramView);
  }

  public static dd o(View paramView)
  {
    return a.p(paramView);
  }

  public static int p(View paramView)
  {
    return a.q(paramView);
  }

  public static void q(View paramView)
  {
    a.r(paramView);
  }

  public static void r(View paramView)
  {
    a.s(paramView);
  }

  public static void s(View paramView)
  {
    a.t(paramView);
  }

  public static boolean t(View paramView)
  {
    return a.k(paramView);
  }

  public static ColorStateList u(View paramView)
  {
    return a.u(paramView);
  }

  public static PorterDuff.Mode v(View paramView)
  {
    return a.v(paramView);
  }

  public static void w(View paramView)
  {
    a.w(paramView);
  }

  public static boolean x(View paramView)
  {
    return a.x(paramView);
  }

  public static boolean y(View paramView)
  {
    return a.y(paramView);
  }

  public static boolean z(View paramView)
  {
    return a.z(paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bl
 * JD-Core Version:    0.6.2
 */