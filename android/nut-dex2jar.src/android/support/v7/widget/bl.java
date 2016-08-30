package android.support.v7.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.PopupWindow.OnDismissListener;

final class bl
  implements PopupWindow.OnDismissListener
{
  bl(bi parambi, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
  }

  public final void onDismiss()
  {
    ViewTreeObserver localViewTreeObserver = this.b.b.getViewTreeObserver();
    if (localViewTreeObserver != null)
      localViewTreeObserver.removeGlobalOnLayoutListener(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bl
 * JD-Core Version:    0.6.2
 */