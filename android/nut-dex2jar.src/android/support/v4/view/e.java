package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.r;
import android.view.View;
import android.view.View.AccessibilityDelegate;

final class e extends b
{
  public final r a(Object paramObject, View paramView)
  {
    paramObject = ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
    if (paramObject != null)
      return new r(paramObject);
    return null;
  }

  public final Object a(a parama)
  {
    return new l(new f(this, parama));
  }

  public final boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.e
 * JD-Core Version:    0.6.2
 */