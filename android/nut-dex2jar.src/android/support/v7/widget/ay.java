package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.widget.y;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

public final class ay extends PopupWindow
{
  private static final boolean a;
  private boolean b;

  static
  {
    if (Build.VERSION.SDK_INT < 21);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public ay(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ft.a(paramContext, paramAttributeSet, l.PopupWindow, paramInt);
    boolean bool;
    if (paramContext.e(l.PopupWindow_overlapAnchor))
    {
      bool = paramContext.a(l.PopupWindow_overlapAnchor, false);
      if (!a)
        break label124;
      this.b = bool;
    }
    while (true)
    {
      setBackgroundDrawable(paramContext.a(l.PopupWindow_android_popupBackground));
      paramContext.a.recycle();
      if (Build.VERSION.SDK_INT < 14);
      try
      {
        paramContext = PopupWindow.class.getDeclaredField("mAnchor");
        paramContext.setAccessible(true);
        paramAttributeSet = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
        paramAttributeSet.setAccessible(true);
        paramAttributeSet.set(this, new az(paramContext, this, (ViewTreeObserver.OnScrollChangedListener)paramAttributeSet.get(this)));
        return;
        label124: y.a(this, bool);
      }
      catch (Exception paramContext)
      {
        Log.d("AppCompatPopupWindow", "Exception while installing workaround OnScrollChangedListener", paramContext);
      }
    }
  }

  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (a)
    {
      i = paramInt2;
      if (this.b)
        i = paramInt2 - paramView.getHeight();
    }
    super.showAsDropDown(paramView, paramInt1, i);
  }

  @TargetApi(19)
  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (a)
    {
      i = paramInt2;
      if (this.b)
        i = paramInt2 - paramView.getHeight();
    }
    super.showAsDropDown(paramView, paramInt1, i, paramInt3);
  }

  public final void update(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((a) && (this.b))
      paramInt2 -= paramView.getHeight();
    while (true)
    {
      super.update(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ay
 * JD-Core Version:    0.6.2
 */