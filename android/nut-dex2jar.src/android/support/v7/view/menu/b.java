package android.support.v7.view.menu;

import android.support.v7.widget.cu;
import android.support.v7.widget.cy;
import android.widget.PopupWindow;

final class b extends cy
{
  public b(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }

  public final cu a()
  {
    if (ActionMenuItemView.a(this.a) != null)
      return ActionMenuItemView.a(this.a).a();
    return null;
  }

  protected final boolean b()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (ActionMenuItemView.b(this.a) != null)
    {
      bool1 = bool2;
      if (ActionMenuItemView.b(this.a).a(ActionMenuItemView.c(this.a)))
      {
        cu localcu = a();
        bool1 = bool2;
        if (localcu != null)
        {
          bool1 = bool2;
          if (localcu.c.isShowing())
            bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.b
 * JD-Core Version:    0.6.2
 */