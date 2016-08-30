package android.support.v4.view;

import android.view.View;

class bv extends bu
{
  public final void c(View paramView, int paramInt)
  {
    paramView.setImportantForAccessibility(paramInt);
  }

  public final boolean x(View paramView)
  {
    return paramView.isLaidOut();
  }

  public final boolean y(View paramView)
  {
    return paramView.isAttachedToWindow();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bv
 * JD-Core Version:    0.6.2
 */