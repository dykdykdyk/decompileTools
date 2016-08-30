package android.support.v7.a;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v4.view.bl;
import android.support.v7.view.menu.g;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.bu;
import android.support.v7.widget.fz;
import android.support.v7.widget.gb;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window.Callback;
import java.util.ArrayList;

final class at extends a
{
  bu a;
  boolean b;
  Window.Callback c;
  g d;
  private boolean e;
  private boolean f;
  private ArrayList<Object> g = new ArrayList();
  private final Runnable h = new au(this);
  private final fz i = new av(this);

  public at(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    this.a = new gb(paramToolbar, false);
    this.c = new az(this, paramCallback);
    this.a.a(this.c);
    paramToolbar.setOnMenuItemClickListener(this.i);
    this.a.a(paramCharSequence);
  }

  private void a(int paramInt1, int paramInt2)
  {
    int j = this.a.o();
    this.a.c(j & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }

  public final void a()
  {
    a(0, 8);
  }

  public final void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }

  public final void a(View paramView, b paramb)
  {
    if (paramView != null)
      paramView.setLayoutParams(paramb);
    this.a.a(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.a.a(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = k();
    int j;
    if (localMenu != null)
    {
      if (paramKeyEvent == null)
        break label56;
      j = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(j).getKeyboardType() == 1)
        break label61;
    }
    label56: label61: for (boolean bool = true; ; bool = false)
    {
      localMenu.setQwertyMode(bool);
      localMenu.performShortcut(paramInt, paramKeyEvent, 0);
      return true;
      j = -1;
      break;
    }
  }

  public final void b()
  {
    a(16, 16);
  }

  public final void b(boolean paramBoolean)
  {
  }

  public final View c()
  {
    return this.a.q();
  }

  public final void c(boolean paramBoolean)
  {
    if (paramBoolean == this.f);
    while (true)
    {
      return;
      this.f = paramBoolean;
      int k = this.g.size();
      int j = 0;
      while (j < k)
      {
        this.g.get(j);
        j += 1;
      }
    }
  }

  public final int d()
  {
    return this.a.o();
  }

  public final boolean e()
  {
    return this.a.r() == 0;
  }

  public final Context f()
  {
    return this.a.b();
  }

  public final boolean g()
  {
    this.a.a().removeCallbacks(this.h);
    bl.a(this.a.a(), this.h);
    return true;
  }

  public final boolean h()
  {
    if (this.a.c())
    {
      this.a.d();
      return true;
    }
    return false;
  }

  public final boolean i()
  {
    ViewGroup localViewGroup = this.a.a();
    if ((localViewGroup != null) && (!localViewGroup.hasFocus()))
    {
      localViewGroup.requestFocus();
      return true;
    }
    return false;
  }

  final void j()
  {
    this.a.a().removeCallbacks(this.h);
  }

  final Menu k()
  {
    if (!this.e)
    {
      this.a.a(new aw(this, (byte)0), new ax(this, (byte)0));
      this.e = true;
    }
    return this.a.s();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.at
 * JD-Core Version:    0.6.2
 */