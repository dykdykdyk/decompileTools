package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.WindowInsets;

class bw extends bv
{
  public final dw a(View paramView, dw paramdw)
  {
    Object localObject = paramdw;
    if ((paramdw instanceof dx))
    {
      WindowInsets localWindowInsets = ((dx)paramdw).a;
      paramView = paramView.onApplyWindowInsets(localWindowInsets);
      localObject = paramdw;
      if (paramView != localWindowInsets)
        localObject = new dx(paramView);
    }
    return localObject;
  }

  public final void a(View paramView, ColorStateList paramColorStateList)
  {
    paramView.setBackgroundTintList(paramColorStateList);
    if (Build.VERSION.SDK_INT == 21)
    {
      paramColorStateList = paramView.getBackground();
      if ((paramView.getBackgroundTintList() == null) || (paramView.getBackgroundTintMode() == null))
        break label64;
    }
    label64: for (int i = 1; ; i = 0)
    {
      if ((paramColorStateList != null) && (i != 0))
      {
        if (paramColorStateList.isStateful())
          paramColorStateList.setState(paramView.getDrawableState());
        paramView.setBackground(paramColorStateList);
      }
      return;
    }
  }

  public final void a(View paramView, PorterDuff.Mode paramMode)
  {
    paramView.setBackgroundTintMode(paramMode);
    if (Build.VERSION.SDK_INT == 21)
    {
      paramMode = paramView.getBackground();
      if ((paramView.getBackgroundTintList() == null) || (paramView.getBackgroundTintMode() == null))
        break label64;
    }
    label64: for (int i = 1; ; i = 0)
    {
      if ((paramMode != null) && (i != 0))
      {
        if (paramMode.isStateful())
          paramMode.setState(paramView.getDrawableState());
        paramView.setBackground(paramMode);
      }
      return;
    }
  }

  public final void a(View paramView, bd parambd)
  {
    if (parambd == null)
    {
      paramView.setOnApplyWindowInsetsListener(null);
      return;
    }
    paramView.setOnApplyWindowInsetsListener(new cb(parambd));
  }

  public final dw b(View paramView, dw paramdw)
  {
    Object localObject = paramdw;
    if ((paramdw instanceof dx))
    {
      WindowInsets localWindowInsets = ((dx)paramdw).a;
      paramView = paramView.dispatchApplyWindowInsets(localWindowInsets);
      localObject = paramdw;
      if (paramView != localWindowInsets)
        localObject = new dx(paramView);
    }
    return localObject;
  }

  public final void d(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }

  public final void r(View paramView)
  {
    paramView.requestApplyInsets();
  }

  public final ColorStateList u(View paramView)
  {
    return paramView.getBackgroundTintList();
  }

  public final PorterDuff.Mode v(View paramView)
  {
    return paramView.getBackgroundTintMode();
  }

  public final void w(View paramView)
  {
    paramView.stopNestedScroll();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bw
 * JD-Core Version:    0.6.2
 */