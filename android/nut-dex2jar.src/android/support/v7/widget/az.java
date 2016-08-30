package android.support.v7.widget;

import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

final class az
  implements ViewTreeObserver.OnScrollChangedListener
{
  az(Field paramField, PopupWindow paramPopupWindow, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
  {
  }

  public final void onScrollChanged()
  {
    try
    {
      WeakReference localWeakReference = (WeakReference)this.a.get(this.b);
      if (localWeakReference != null)
      {
        if (localWeakReference.get() == null)
          return;
        this.c.onScrollChanged();
        return;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.az
 * JD-Core Version:    0.6.2
 */