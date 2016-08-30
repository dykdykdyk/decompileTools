package com.facebook.widget;

import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;

class ToolTipPopup$1
  implements ViewTreeObserver.OnScrollChangedListener
{
  ToolTipPopup$1(ToolTipPopup paramToolTipPopup)
  {
  }

  public void onScrollChanged()
  {
    if ((ToolTipPopup.access$000(this.this$0).get() != null) && (ToolTipPopup.access$100(this.this$0) != null) && (ToolTipPopup.access$100(this.this$0).isShowing()))
    {
      if (ToolTipPopup.access$100(this.this$0).isAboveAnchor())
        ToolTipPopup.access$200(this.this$0).showBottomArrow();
    }
    else
      return;
    ToolTipPopup.access$200(this.this$0).showTopArrow();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.ToolTipPopup.1
 * JD-Core Version:    0.6.2
 */