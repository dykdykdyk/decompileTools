package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.view.a.ae;
import android.support.v4.view.a.ah;
import android.support.v4.view.a.f;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;

final class v extends android.support.v4.view.a
{
  public final void a(View paramView, f paramf)
  {
    super.a(paramView, paramf);
    paramView = (NestedScrollView)paramView;
    paramf.a(ScrollView.class.getName());
    if (paramView.isEnabled())
    {
      int i = NestedScrollView.a(paramView);
      if (i > 0)
      {
        paramf.a(true);
        if (paramView.getScrollY() > 0)
          paramf.a(8192);
        if (paramView.getScrollY() < i)
          paramf.a(4096);
      }
    }
  }

  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle))
      return true;
    paramView = (NestedScrollView)paramView;
    if (!paramView.isEnabled())
      return false;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      paramInt = Math.min(paramView.getHeight() - paramView.getPaddingBottom() - paramView.getPaddingTop() + paramView.getScrollY(), NestedScrollView.a(paramView));
      if (paramInt != paramView.getScrollY())
      {
        paramView.a(paramInt);
        return true;
      }
      return false;
    case 8192:
    }
    paramInt = paramView.getHeight();
    int i = paramView.getPaddingBottom();
    int j = paramView.getPaddingTop();
    paramInt = Math.max(paramView.getScrollY() - (paramInt - i - j), 0);
    if (paramInt != paramView.getScrollY())
    {
      paramView.a(paramInt);
      return true;
    }
    return false;
  }

  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramView = (NestedScrollView)paramView;
    paramAccessibilityEvent.setClassName(ScrollView.class.getName());
    paramAccessibilityEvent = android.support.v4.view.a.a.a(paramAccessibilityEvent);
    if (NestedScrollView.a(paramView) > 0);
    for (boolean bool = true; ; bool = false)
    {
      paramAccessibilityEvent.a(bool);
      int i = paramView.getScrollX();
      ae.a.c(paramAccessibilityEvent.b, i);
      i = paramView.getScrollY();
      ae.a.d(paramAccessibilityEvent.b, i);
      i = paramView.getScrollX();
      ae.a.f(paramAccessibilityEvent.b, i);
      i = NestedScrollView.a(paramView);
      ae.a.g(paramAccessibilityEvent.b, i);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.v
 * JD-Core Version:    0.6.2
 */