package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.d.a.b;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

@TargetApi(14)
public class o extends e<b>
  implements MenuItem
{
  public Method e;

  o(Context paramContext, b paramb)
  {
    super(paramContext, paramb);
  }

  p a(ActionProvider paramActionProvider)
  {
    return new p(this, this.a, paramActionProvider);
  }

  public boolean collapseActionView()
  {
    return ((b)this.d).collapseActionView();
  }

  public boolean expandActionView()
  {
    return ((b)this.d).expandActionView();
  }

  public ActionProvider getActionProvider()
  {
    n localn = ((b)this.d).a();
    if ((localn instanceof p))
      return ((p)localn).c;
    return null;
  }

  public View getActionView()
  {
    View localView2 = ((b)this.d).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof q))
      localView1 = (View)((q)localView2).a;
    return localView1;
  }

  public char getAlphabeticShortcut()
  {
    return ((b)this.d).getAlphabeticShortcut();
  }

  public int getGroupId()
  {
    return ((b)this.d).getGroupId();
  }

  public Drawable getIcon()
  {
    return ((b)this.d).getIcon();
  }

  public Intent getIntent()
  {
    return ((b)this.d).getIntent();
  }

  public int getItemId()
  {
    return ((b)this.d).getItemId();
  }

  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((b)this.d).getMenuInfo();
  }

  public char getNumericShortcut()
  {
    return ((b)this.d).getNumericShortcut();
  }

  public int getOrder()
  {
    return ((b)this.d).getOrder();
  }

  public SubMenu getSubMenu()
  {
    return a(((b)this.d).getSubMenu());
  }

  public CharSequence getTitle()
  {
    return ((b)this.d).getTitle();
  }

  public CharSequence getTitleCondensed()
  {
    return ((b)this.d).getTitleCondensed();
  }

  public boolean hasSubMenu()
  {
    return ((b)this.d).hasSubMenu();
  }

  public boolean isActionViewExpanded()
  {
    return ((b)this.d).isActionViewExpanded();
  }

  public boolean isCheckable()
  {
    return ((b)this.d).isCheckable();
  }

  public boolean isChecked()
  {
    return ((b)this.d).isChecked();
  }

  public boolean isEnabled()
  {
    return ((b)this.d).isEnabled();
  }

  public boolean isVisible()
  {
    return ((b)this.d).isVisible();
  }

  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    b localb = (b)this.d;
    if (paramActionProvider != null);
    for (paramActionProvider = a(paramActionProvider); ; paramActionProvider = null)
    {
      localb.a(paramActionProvider);
      return this;
    }
  }

  public MenuItem setActionView(int paramInt)
  {
    ((b)this.d).setActionView(paramInt);
    View localView = ((b)this.d).getActionView();
    if ((localView instanceof CollapsibleActionView))
      ((b)this.d).setActionView(new q(localView));
    return this;
  }

  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView))
      localObject = new q(paramView);
    ((b)this.d).setActionView((View)localObject);
    return this;
  }

  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((b)this.d).setAlphabeticShortcut(paramChar);
    return this;
  }

  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((b)this.d).setCheckable(paramBoolean);
    return this;
  }

  public MenuItem setChecked(boolean paramBoolean)
  {
    ((b)this.d).setChecked(paramBoolean);
    return this;
  }

  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((b)this.d).setEnabled(paramBoolean);
    return this;
  }

  public MenuItem setIcon(int paramInt)
  {
    ((b)this.d).setIcon(paramInt);
    return this;
  }

  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((b)this.d).setIcon(paramDrawable);
    return this;
  }

  public MenuItem setIntent(Intent paramIntent)
  {
    ((b)this.d).setIntent(paramIntent);
    return this;
  }

  public MenuItem setNumericShortcut(char paramChar)
  {
    ((b)this.d).setNumericShortcut(paramChar);
    return this;
  }

  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    b localb = (b)this.d;
    if (paramOnActionExpandListener != null);
    for (paramOnActionExpandListener = new r(this, paramOnActionExpandListener); ; paramOnActionExpandListener = null)
    {
      localb.a(paramOnActionExpandListener);
      return this;
    }
  }

  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    b localb = (b)this.d;
    if (paramOnMenuItemClickListener != null);
    for (paramOnMenuItemClickListener = new s(this, paramOnMenuItemClickListener); ; paramOnMenuItemClickListener = null)
    {
      localb.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }

  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((b)this.d).setShortcut(paramChar1, paramChar2);
    return this;
  }

  public void setShowAsAction(int paramInt)
  {
    ((b)this.d).setShowAsAction(paramInt);
  }

  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((b)this.d).setShowAsActionFlags(paramInt);
    return this;
  }

  public MenuItem setTitle(int paramInt)
  {
    ((b)this.d).setTitle(paramInt);
    return this;
  }

  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((b)this.d).setTitle(paramCharSequence);
    return this;
  }

  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((b)this.d).setTitleCondensed(paramCharSequence);
    return this;
  }

  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((b)this.d).setVisible(paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.o
 * JD-Core Version:    0.6.2
 */