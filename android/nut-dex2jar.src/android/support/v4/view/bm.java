package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import java.util.WeakHashMap;

class bm
  implements by
{
  WeakHashMap<View, dd> a = null;

  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSize(paramInt1, paramInt2);
  }

  public int a(View paramView)
  {
    return 2;
  }

  long a()
  {
    return 10L;
  }

  public dw a(View paramView, dw paramdw)
  {
    return paramdw;
  }

  public void a(View paramView, float paramFloat)
  {
  }

  public void a(View paramView, ColorStateList paramColorStateList)
  {
    if ((paramView instanceof bg))
      ((bg)paramView).setSupportBackgroundTintList(paramColorStateList);
  }

  public void a(View paramView, PorterDuff.Mode paramMode)
  {
    if ((paramView instanceof bg))
      ((bg)paramView).setSupportBackgroundTintMode(paramMode);
  }

  public void a(View paramView, a parama)
  {
  }

  public void a(View paramView, bd parambd)
  {
  }

  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }

  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, a() + paramLong);
  }

  public void a(View paramView, boolean paramBoolean)
  {
  }

  public boolean a(View paramView, int paramInt)
  {
    if ((paramView instanceof bf))
    {
      paramView = (bf)paramView;
      int i = paramView.computeHorizontalScrollOffset();
      int j = paramView.computeHorizontalScrollRange() - paramView.computeHorizontalScrollExtent();
      if (j != 0)
        if (paramInt < 0)
          if (i > 0)
            paramInt = 1;
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1)
          paramInt = 1;
        else
          paramInt = 0;
      }
    }
    return false;
  }

  public dw b(View paramView, dw paramdw)
  {
    return paramdw;
  }

  public void b(View paramView, float paramFloat)
  {
  }

  public boolean b(View paramView)
  {
    return false;
  }

  public boolean b(View paramView, int paramInt)
  {
    if ((paramView instanceof bf))
    {
      paramView = (bf)paramView;
      int i = paramView.computeVerticalScrollOffset();
      int j = paramView.computeVerticalScrollRange() - paramView.computeVerticalScrollExtent();
      if (j != 0)
        if (paramInt < 0)
          if (i > 0)
            paramInt = 1;
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1)
          paramInt = 1;
        else
          paramInt = 0;
      }
    }
    return false;
  }

  public void c(View paramView, float paramFloat)
  {
  }

  public void c(View paramView, int paramInt)
  {
  }

  public boolean c(View paramView)
  {
    return false;
  }

  public void d(View paramView)
  {
    paramView.invalidate();
  }

  public void d(View paramView, float paramFloat)
  {
  }

  public void d(View paramView, int paramInt)
  {
  }

  public int e(View paramView)
  {
    return 0;
  }

  public void e(View paramView, int paramInt)
  {
  }

  public float f(View paramView)
  {
    return 1.0F;
  }

  public int g(View paramView)
  {
    return 0;
  }

  public int h(View paramView)
  {
    return 0;
  }

  public int i(View paramView)
  {
    return paramView.getMeasuredWidth();
  }

  public int j(View paramView)
  {
    return 0;
  }

  public boolean k(View paramView)
  {
    return true;
  }

  public float l(View paramView)
  {
    return 0.0F;
  }

  public float m(View paramView)
  {
    return 0.0F;
  }

  public int n(View paramView)
  {
    return bz.a(paramView);
  }

  public int o(View paramView)
  {
    return bz.b(paramView);
  }

  public dd p(View paramView)
  {
    return new dd(paramView);
  }

  public int q(View paramView)
  {
    return 0;
  }

  public void r(View paramView)
  {
  }

  public void s(View paramView)
  {
  }

  public void t(View paramView)
  {
  }

  public ColorStateList u(View paramView)
  {
    if ((paramView instanceof bg))
      return ((bg)paramView).getSupportBackgroundTintList();
    return null;
  }

  public PorterDuff.Mode v(View paramView)
  {
    if ((paramView instanceof bg))
      return ((bg)paramView).getSupportBackgroundTintMode();
    return null;
  }

  public void w(View paramView)
  {
    if ((paramView instanceof az))
      ((az)paramView).stopNestedScroll();
  }

  public boolean x(View paramView)
  {
    return (paramView.getWidth() > 0) && (paramView.getHeight() > 0);
  }

  public boolean y(View paramView)
  {
    return paramView.getWindowToken() != null;
  }

  public boolean z(View paramView)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bm
 * JD-Core Version:    0.6.2
 */