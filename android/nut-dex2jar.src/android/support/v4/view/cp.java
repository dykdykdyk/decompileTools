package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.ae;
import android.support.v4.view.a.f;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class cp extends a
{
  cp(ViewPager paramViewPager)
  {
  }

  private boolean a()
  {
    return (ViewPager.b(this.b) != null) && (ViewPager.b(this.b).a() > 1);
  }

  public final void a(View paramView, f paramf)
  {
    super.a(paramView, paramf);
    paramf.a(ViewPager.class.getName());
    paramf.a(a());
    if (this.b.canScrollHorizontally(1))
      paramf.a(4096);
    if (this.b.canScrollHorizontally(-1))
      paramf.a(8192);
  }

  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      if (this.b.canScrollHorizontally(1))
      {
        this.b.setCurrentItem(ViewPager.c(this.b) + 1);
        return true;
      }
      return false;
    case 8192:
    }
    if (this.b.canScrollHorizontally(-1))
    {
      this.b.setCurrentItem(ViewPager.c(this.b) - 1);
      return true;
    }
    return false;
  }

  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = android.support.v4.view.a.a.a(paramAccessibilityEvent);
    paramView.a(a());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.b(this.b) != null))
    {
      paramView.a(ViewPager.b(this.b).a());
      paramView.b(ViewPager.c(this.b));
      paramView.c(ViewPager.c(this.b));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.cp
 * JD-Core Version:    0.6.2
 */