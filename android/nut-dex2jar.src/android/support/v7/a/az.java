package android.support.v7.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.support.v7.b.b;
import android.support.v7.b.k;
import android.support.v7.view.menu.g;
import android.support.v7.view.n;
import android.support.v7.widget.bu;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;
import android.widget.ListAdapter;

final class az extends n
{
  public az(at paramat, Window.Callback paramCallback)
  {
    super(paramCallback);
  }

  public final View onCreatePanelView(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    Menu localMenu;
    do
    {
      return super.onCreatePanelView(paramInt);
      localMenu = this.a.a.s();
    }
    while ((!onPreparePanel(paramInt, null, localMenu)) || (!onMenuOpened(paramInt, localMenu)));
    at localat = this.a;
    android.support.v7.view.menu.i locali;
    Object localObject;
    Resources.Theme localTheme;
    if ((localat.d == null) && ((localMenu instanceof android.support.v7.view.menu.i)))
    {
      locali = (android.support.v7.view.menu.i)localMenu;
      localObject = localat.a.b();
      TypedValue localTypedValue = new TypedValue();
      localTheme = ((Context)localObject).getResources().newTheme();
      localTheme.setTo(((Context)localObject).getTheme());
      localTheme.resolveAttribute(b.actionBarPopupTheme, localTypedValue, true);
      if (localTypedValue.resourceId != 0)
        localTheme.applyStyle(localTypedValue.resourceId, true);
      localTheme.resolveAttribute(b.panelMenuListTheme, localTypedValue, true);
      if (localTypedValue.resourceId == 0)
        break label261;
      localTheme.applyStyle(localTypedValue.resourceId, true);
    }
    while (true)
    {
      localObject = new ContextThemeWrapper((Context)localObject, 0);
      ((Context)localObject).getTheme().setTo(localTheme);
      localat.d = new g((Context)localObject, android.support.v7.b.i.abc_list_menu_item_layout);
      localat.d.g = new ay(localat, (byte)0);
      locali.a(localat.d);
      if ((localMenu != null) && (localat.d != null))
        break;
      return null;
      label261: localTheme.applyStyle(k.Theme_AppCompat_CompactMenu, true);
    }
    if (localat.d.b().getCount() > 0)
      return (View)localat.d.a(localat.a.a());
    return null;
  }

  public final boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
    if ((bool) && (!this.a.b))
    {
      this.a.a.m();
      this.a.b = true;
    }
    return bool;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.az
 * JD-Core Version:    0.6.2
 */