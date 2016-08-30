package android.support.v7.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.az;
import android.support.v4.app.cy;
import android.support.v4.app.cz;
import android.support.v4.app.v;
import android.support.v7.widget.ge;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;

public class s extends v
  implements cz, t
{
  private u m;
  private int n = 0;
  private boolean o;
  private Resources p;

  private boolean f()
  {
    int i = 0;
    Object localObject1 = az.a(this);
    cy localcy;
    if (localObject1 != null)
      if (az.a(this, (Intent)localObject1))
      {
        localcy = cy.a(this);
        if (!(this instanceof t))
          break label283;
      }
    label283: Object localObject2;
    for (localObject1 = ((t)this).a(); ; localObject2 = null)
    {
      if (localObject1 == null)
        localObject1 = az.a(this);
      while (true)
      {
        if (localObject1 != null)
        {
          ComponentName localComponentName = ((Intent)localObject1).getComponent();
          localObject3 = localComponentName;
          if (localComponentName == null)
            localObject3 = ((Intent)localObject1).resolveActivity(localcy.b.getPackageManager());
          localcy.a((ComponentName)localObject3);
          localcy.a.add(localObject1);
        }
        if (localcy.a.isEmpty())
          throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        localObject1 = (Intent[])localcy.a.toArray(new Intent[localcy.a.size()]);
        localObject1[0] = new Intent(localObject1[0]).addFlags(268484608);
        Object localObject3 = localcy.b;
        int j = Build.VERSION.SDK_INT;
        if (j >= 16)
        {
          ((Context)localObject3).startActivities((Intent[])localObject1, null);
          i = 1;
          if (i == 0)
          {
            localObject1 = new Intent(localObject1[(localObject1.length - 1)]);
            ((Intent)localObject1).addFlags(268435456);
            localcy.b.startActivity((Intent)localObject1);
          }
        }
        while (true)
        {
          try
          {
            if (Build.VERSION.SDK_INT >= 16)
            {
              finishAffinity();
              return true;
              if (j < 11)
                break;
              ((Context)localObject3).startActivities((Intent[])localObject1);
              i = 1;
              break;
            }
            finish();
            continue;
          }
          catch (IllegalStateException localIllegalStateException)
          {
            finish();
            continue;
          }
          az.b(this, localIllegalStateException);
        }
        return false;
      }
    }
  }

  public final Intent a()
  {
    return az.a(this);
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    e().b(paramView, paramLayoutParams);
  }

  public final void c()
  {
    e().f();
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((android.support.v4.view.u.a(paramKeyEvent, 4096)) && (paramKeyEvent.getUnicodeChar(paramKeyEvent.getMetaState() & 0xFFFF8FFF) == 60))
    {
      int i = paramKeyEvent.getAction();
      if (i == 0)
      {
        a locala = e().a();
        if ((locala != null) && (locala.e()) && (locala.i()))
        {
          this.o = true;
          return true;
        }
      }
      else if ((i == 1) && (this.o))
      {
        this.o = false;
        return true;
      }
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public final u e()
  {
    if (this.m == null)
      this.m = u.a(this, this);
    return this.m;
  }

  public View findViewById(int paramInt)
  {
    return e().a(paramInt);
  }

  public MenuInflater getMenuInflater()
  {
    return e().b();
  }

  public Resources getResources()
  {
    if ((this.p == null) && (ge.a()))
      this.p = new ge(this, super.getResources());
    if (this.p == null)
      return super.getResources();
    return this.p;
  }

  public void invalidateOptionsMenu()
  {
    e().f();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    e().a(paramConfiguration);
    if (this.p != null)
    {
      DisplayMetrics localDisplayMetrics = super.getResources().getDisplayMetrics();
      this.p.updateConfiguration(paramConfiguration, localDisplayMetrics);
    }
  }

  public void onContentChanged()
  {
  }

  public void onCreate(Bundle paramBundle)
  {
    u localu = e();
    localu.h();
    localu.a(paramBundle);
    if ((localu.i()) && (this.n != 0))
    {
      if (Build.VERSION.SDK_INT < 23)
        break label55;
      onApplyThemeResource(getTheme(), this.n, false);
    }
    while (true)
    {
      super.onCreate(paramBundle);
      return;
      label55: setTheme(this.n);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    e().g();
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    a locala = e().a();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((locala.d() & 0x4) != 0))
      return f();
    return false;
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().c();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    e().e();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    e().b(paramBundle);
  }

  public void onStop()
  {
    super.onStop();
    e().d();
  }

  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    e().a(paramCharSequence);
  }

  public void setContentView(int paramInt)
  {
    e().b(paramInt);
  }

  public void setContentView(View paramView)
  {
    e().a(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    e().a(paramView, paramLayoutParams);
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.n = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.s
 * JD-Core Version:    0.6.2
 */