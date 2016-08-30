package android.support.v4.widget;

import android.widget.PopupWindow;
import java.lang.reflect.Method;

class ac extends ab
{
  public void a(PopupWindow paramPopupWindow, int paramInt)
  {
    if (!ag.b);
    try
    {
      Method localMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[] { Integer.TYPE });
      ag.a = localMethod;
      localMethod.setAccessible(true);
      label33: ag.b = true;
      if (ag.a != null);
      try
      {
        ag.a.invoke(paramPopupWindow, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Exception paramPopupWindow)
      {
      }
    }
    catch (Exception localException)
    {
      break label33;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ac
 * JD-Core Version:    0.6.2
 */