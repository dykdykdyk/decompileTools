package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.PopupWindow;

public final class y
{
  static final ae a = new ab();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new aa();
      return;
    }
    if (i >= 21)
    {
      a = new z();
      return;
    }
    if (i >= 19)
    {
      a = new ad();
      return;
    }
    if (i >= 9)
    {
      a = new ac();
      return;
    }
  }

  public static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    a.a(paramPopupWindow, paramInt);
  }

  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }

  public static void a(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    a.a(paramPopupWindow, paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.y
 * JD-Core Version:    0.6.2
 */