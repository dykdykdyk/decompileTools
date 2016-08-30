package com.nut.blehunter.ui.a;

import android.support.v4.view.ViewPager;
import android.support.v4.view.be;
import android.view.View;
import java.util.List;

public final class g extends be
{
  private List<View> b;

  public g(List<View> paramList)
  {
    this.b = paramList;
  }

  public final int a()
  {
    return this.b.size();
  }

  public final Object a(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)this.b.get(paramInt), 0);
    return this.b.get(paramInt);
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public final void b(View paramView, int paramInt)
  {
    ((ViewPager)paramView).removeView((View)this.b.get(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.g
 * JD-Core Version:    0.6.2
 */