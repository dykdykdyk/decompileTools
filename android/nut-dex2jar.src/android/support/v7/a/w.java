package android.support.v7.a;

import android.support.v7.view.menu.i;
import android.support.v7.view.n;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;

class w extends n
{
  w(v paramv, Window.Callback paramCallback)
  {
    super(paramCallback);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (this.a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }

  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyShortcutEvent(paramKeyEvent)) || (this.a.a(paramKeyEvent.getKeyCode(), paramKeyEvent));
  }

  public void onContentChanged()
  {
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) && (!(paramMenu instanceof i)))
      return false;
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    super.onMenuOpened(paramInt, paramMenu);
    this.a.e(paramInt);
    return true;
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
    this.a.d(paramInt);
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    i locali;
    boolean bool1;
    if ((paramMenu instanceof i))
    {
      locali = (i)paramMenu;
      if ((paramInt != 0) || (locali != null))
        break label34;
      bool1 = false;
    }
    label34: boolean bool2;
    do
    {
      return bool1;
      locali = null;
      break;
      if (locali != null)
        locali.k = true;
      bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
      bool1 = bool2;
    }
    while (locali == null);
    locali.k = false;
    return bool2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.w
 * JD-Core Version:    0.6.2
 */