package android.support.v7.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.az;
import android.support.v4.view.bl;
import android.support.v4.view.cc;
import android.support.v4.view.dd;
import android.support.v4.view.z;
import android.support.v7.b.k;
import android.support.v7.b.l;
import android.support.v7.view.e;
import android.support.v7.view.menu.j;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.al;
import android.support.v7.widget.am;
import android.support.v7.widget.au;
import android.support.v7.widget.aw;
import android.support.v7.widget.ax;
import android.support.v7.widget.bb;
import android.support.v7.widget.bc;
import android.support.v7.widget.bf;
import android.support.v7.widget.bo;
import android.support.v7.widget.bt;
import android.support.v7.widget.ci;
import android.support.v7.widget.fq;
import android.support.v7.widget.ge;
import android.support.v7.widget.gj;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;

class ac extends v
  implements android.support.v4.view.ai, j
{
  private View A;
  private boolean B;
  private boolean C;
  private boolean D;
  private ao[] E;
  private ao F;
  private boolean G;
  private boolean H;
  private int I;
  private final Runnable J = new ad(this);
  private boolean K;
  private Rect L;
  private Rect M;
  private ar N;
  private bt p;
  android.support.v7.view.b q;
  ActionBarContextView r;
  PopupWindow s;
  Runnable t;
  dd u = null;
  ViewGroup v;
  private ak w;
  private ap x;
  private boolean y;
  private TextView z;

  ac(Context paramContext, Window paramWindow, t paramt)
  {
    super(paramContext, paramWindow, paramt);
  }

  private ao a(Menu paramMenu)
  {
    ao[] arrayOfao = this.E;
    int i;
    int j;
    if (arrayOfao != null)
    {
      i = arrayOfao.length;
      j = 0;
    }
    while (true)
    {
      if (j >= i)
        break label57;
      ao localao = arrayOfao[j];
      if ((localao != null) && (localao.j == paramMenu))
      {
        return localao;
        i = 0;
        break;
      }
      j += 1;
    }
    label57: return null;
  }

  private void a(int paramInt, ao paramao, Menu paramMenu)
  {
    Object localObject1 = paramao;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      ao localao = paramao;
      if (paramao == null)
      {
        localao = paramao;
        if (paramInt >= 0)
        {
          localao = paramao;
          if (paramInt < this.E.length)
            localao = this.E[paramInt];
        }
      }
      localObject1 = localao;
      localObject2 = paramMenu;
      if (localao != null)
      {
        localObject2 = localao.j;
        localObject1 = localao;
      }
    }
    if ((localObject1 != null) && (!((ao)localObject1).o));
    while (this.o)
      return;
    this.d.onPanelClosed(paramInt, (Menu)localObject2);
  }

  private void a(ao paramao, KeyEvent paramKeyEvent)
  {
    int k = -1;
    if ((paramao.o) || (this.o));
    Object localObject1;
    int i;
    label115: label120: label124: label126: Object localObject2;
    label266: 
    do
    {
      do
      {
        while (true)
        {
          return;
          if (paramao.a == 0)
          {
            localObject1 = this.b;
            if ((((Context)localObject1).getResources().getConfiguration().screenLayout & 0xF) != 4)
              break label115;
            i = 1;
            if (((Context)localObject1).getApplicationInfo().targetSdkVersion < 11)
              break label120;
          }
          for (int j = 1; ; j = 0)
          {
            if ((i != 0) && (j != 0))
              break label124;
            localObject1 = this.c.getCallback();
            if ((localObject1 == null) || (((Window.Callback)localObject1).onMenuOpened(paramao.a, paramao.j)))
              break label126;
            a(paramao, true);
            return;
            i = 0;
            break;
          }
        }
        localObject1 = (WindowManager)this.b.getSystemService("window");
      }
      while ((localObject1 == null) || (!b(paramao, paramKeyEvent)));
      if ((paramao.g != null) && (!paramao.q))
        break label758;
      if (paramao.g != null)
        break label581;
      localObject2 = l();
      TypedValue localTypedValue = new TypedValue();
      paramKeyEvent = ((Context)localObject2).getResources().newTheme();
      paramKeyEvent.setTo(((Context)localObject2).getTheme());
      paramKeyEvent.resolveAttribute(android.support.v7.b.b.actionBarPopupTheme, localTypedValue, true);
      if (localTypedValue.resourceId != 0)
        paramKeyEvent.applyStyle(localTypedValue.resourceId, true);
      paramKeyEvent.resolveAttribute(android.support.v7.b.b.panelMenuListTheme, localTypedValue, true);
      if (localTypedValue.resourceId == 0)
        break;
      paramKeyEvent.applyStyle(localTypedValue.resourceId, true);
      localObject2 = new e((Context)localObject2, 0);
      ((Context)localObject2).getTheme().setTo(paramKeyEvent);
      paramao.l = ((Context)localObject2);
      paramKeyEvent = ((Context)localObject2).obtainStyledAttributes(l.AppCompatTheme);
      paramao.b = paramKeyEvent.getResourceId(l.AppCompatTheme_panelBackground, 0);
      paramao.f = paramKeyEvent.getResourceId(l.AppCompatTheme_android_windowAnimationStyle, 0);
      paramKeyEvent.recycle();
      paramao.g = new an(this, paramao.l);
      paramao.c = 81;
    }
    while (paramao.g == null);
    label359: if (paramao.i != null)
    {
      paramao.h = paramao.i;
      i = 1;
      label376: if (i == 0)
        break label731;
      if (paramao.h == null)
        break label753;
      if (paramao.i == null)
        break label733;
      i = 1;
      if (i == 0)
        break label756;
      paramKeyEvent = paramao.h.getLayoutParams();
      if (paramKeyEvent != null)
        break label794;
      paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
    }
    label396: label794: 
    while (true)
    {
      i = paramao.b;
      paramao.g.setBackgroundResource(i);
      localObject2 = paramao.h.getParent();
      if ((localObject2 != null) && ((localObject2 instanceof ViewGroup)))
        ((ViewGroup)localObject2).removeView(paramao.h);
      paramao.g.addView(paramao.h, paramKeyEvent);
      if (!paramao.h.hasFocus())
        paramao.h.requestFocus();
      i = -2;
      while (true)
      {
        paramao.n = false;
        paramKeyEvent = new WindowManager.LayoutParams(i, -2, paramao.d, paramao.e, 1002, 8519680, -3);
        paramKeyEvent.gravity = paramao.c;
        paramKeyEvent.windowAnimations = paramao.f;
        ((WindowManager)localObject1).addView(paramao.g, paramKeyEvent);
        paramao.o = true;
        return;
        paramKeyEvent.applyStyle(k.Theme_AppCompat_CompactMenu, true);
        break label266;
        label581: if ((!paramao.q) || (paramao.g.getChildCount() <= 0))
          break label359;
        paramao.g.removeAllViews();
        break label359;
        if (paramao.j != null)
        {
          if (this.x == null)
            this.x = new ap(this, (byte)0);
          paramKeyEvent = this.x;
          if (paramao.j == null);
          for (paramKeyEvent = null; ; paramKeyEvent = paramao.k.a(paramao.g))
          {
            paramao.h = ((View)paramKeyEvent);
            if (paramao.h == null)
              break label728;
            i = 1;
            break;
            if (paramao.k == null)
            {
              paramao.k = new android.support.v7.view.menu.g(paramao.l, android.support.v7.b.i.abc_list_menu_item_layout);
              paramao.k.g = paramKeyEvent;
              paramao.j.a(paramao.k);
            }
          }
        }
        label728: i = 0;
        break label376;
        label731: break;
        label733: if (paramao.k.b().getCount() > 0)
        {
          i = 1;
          break label396;
        }
        label753: i = 0;
        break label396;
        label756: break;
        label758: if (paramao.i != null)
        {
          paramKeyEvent = paramao.i.getLayoutParams();
          if (paramKeyEvent != null)
          {
            i = k;
            if (paramKeyEvent.width == -1)
              continue;
          }
        }
        else
        {
          i = -2;
        }
      }
    }
  }

  private void a(ao paramao, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramao.a == 0) && (this.p != null) && (this.p.b()))
      b(paramao.j);
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)this.b.getSystemService("window");
      if ((localWindowManager != null) && (paramao.o) && (paramao.g != null))
      {
        localWindowManager.removeView(paramao.g);
        if (paramBoolean)
          a(paramao.a, paramao, null);
      }
      paramao.m = false;
      paramao.n = false;
      paramao.o = false;
      paramao.h = null;
      paramao.q = true;
    }
    while (this.F != paramao);
    this.F = null;
  }

  private boolean a(ao paramao, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.isSystem());
    while (((!paramao.m) && (!b(paramao, paramKeyEvent))) || (paramao.j == null))
      return false;
    return paramao.j.performShortcut(paramInt, paramKeyEvent, 1);
  }

  private void b(android.support.v7.view.menu.i parami)
  {
    if (this.D)
      return;
    this.D = true;
    this.p.g();
    Window.Callback localCallback = this.c.getCallback();
    if ((localCallback != null) && (!this.o))
      localCallback.onPanelClosed(108, parami);
    this.D = false;
  }

  private boolean b(ao paramao, KeyEvent paramKeyEvent)
  {
    if (this.o)
      return false;
    if (paramao.m)
      return true;
    if ((this.F != null) && (this.F != paramao))
      a(this.F, false);
    Window.Callback localCallback = this.c.getCallback();
    if (localCallback != null)
      paramao.i = localCallback.onCreatePanelView(paramao.a);
    int i;
    label89: Context localContext;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if ((paramao.a == 0) || (paramao.a == 108))
    {
      i = 1;
      if ((i != 0) && (this.p != null))
        this.p.f();
      if ((paramao.i != null) || ((i != 0) && ((this.g instanceof at))))
        break label625;
      if ((paramao.j != null) && (!paramao.r))
        break label495;
      if (paramao.j == null)
      {
        localContext = this.b;
        if (((paramao.a != 0) && (paramao.a != 108)) || (this.p == null))
          break label653;
        localTypedValue = new TypedValue();
        localTheme = localContext.getTheme();
        localTheme.resolveAttribute(android.support.v7.b.b.actionBarTheme, localTypedValue, true);
        if (localTypedValue.resourceId == 0)
          break label472;
        localObject1 = localContext.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(localTypedValue.resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(android.support.v7.b.b.actionBarWidgetTheme, localTypedValue, true);
        label256: Object localObject2 = localObject1;
        if (localTypedValue.resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(localTypedValue.resourceId, true);
        }
        if (localObject2 == null)
          break label653;
        localObject1 = new e(localContext, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    while (true)
    {
      localObject1 = new android.support.v7.view.menu.i((Context)localObject1);
      ((android.support.v7.view.menu.i)localObject1).a(this);
      paramao.a((android.support.v7.view.menu.i)localObject1);
      if (paramao.j == null)
        break;
      if ((i != 0) && (this.p != null))
      {
        if (this.w == null)
          this.w = new ak(this, (byte)0);
        this.p.a(paramao.j, this.w);
      }
      paramao.j.d();
      if (!localCallback.onCreatePanelMenu(paramao.a, paramao.j))
      {
        paramao.a(null);
        if ((i == 0) || (this.p == null))
          break;
        this.p.a(null, this.w);
        return false;
        i = 0;
        break label89;
        label472: localTheme.resolveAttribute(android.support.v7.b.b.actionBarWidgetTheme, localTypedValue, true);
        localObject1 = null;
        break label256;
      }
      paramao.r = false;
      label495: paramao.j.d();
      if (paramao.s != null)
      {
        paramao.j.b(paramao.s);
        paramao.s = null;
      }
      if (!localCallback.onPreparePanel(0, paramao.i, paramao.j))
      {
        if ((i != 0) && (this.p != null))
          this.p.a(null, this.w);
        paramao.j.e();
        return false;
      }
      if (paramKeyEvent != null)
      {
        i = paramKeyEvent.getDeviceId();
        if (KeyCharacterMap.load(i).getKeyboardType() == 1)
          break label647;
      }
      label647: for (boolean bool = true; ; bool = false)
      {
        paramao.p = bool;
        paramao.j.setQwertyMode(paramao.p);
        paramao.j.e();
        label625: paramao.m = true;
        paramao.n = false;
        this.F = paramao;
        return true;
        i = -1;
        break;
      }
      label653: localObject1 = localContext;
    }
  }

  private ao f(int paramInt)
  {
    Object localObject2 = this.E;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt);
    }
    else
    {
      localObject1 = new ao[paramInt + 1];
      if (localObject2 != null)
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      this.E = ((ao[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new ao(paramInt);
      localObject1[paramInt] = localObject2;
      return localObject2;
    }
    return localObject2;
  }

  private void g(int paramInt)
  {
    this.I |= 1 << paramInt;
    if (!this.H)
    {
      bl.a(this.c.getDecorView(), this.J);
      this.H = true;
    }
  }

  private void n()
  {
    Object localObject1;
    if (!this.y)
    {
      localObject1 = this.b.obtainStyledAttributes(l.AppCompatTheme);
      if (!((TypedArray)localObject1).hasValue(l.AppCompatTheme_windowActionBar))
      {
        ((TypedArray)localObject1).recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
      }
      if (((TypedArray)localObject1).getBoolean(l.AppCompatTheme_windowNoTitle, false))
      {
        c(1);
        if (((TypedArray)localObject1).getBoolean(l.AppCompatTheme_windowActionBarOverlay, false))
          c(109);
        if (((TypedArray)localObject1).getBoolean(l.AppCompatTheme_windowActionModeOverlay, false))
          c(10);
        this.l = ((TypedArray)localObject1).getBoolean(l.AppCompatTheme_android_windowIsFloating, false);
        ((TypedArray)localObject1).recycle();
        this.c.getDecorView();
        localObject1 = LayoutInflater.from(this.b);
        if (this.m)
          break label459;
        if (!this.l)
          break label288;
        localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(android.support.v7.b.i.abc_dialog_title_material, null);
        this.j = false;
        this.i = false;
      }
    }
    while (true)
    {
      if (localObject1 == null)
      {
        throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.i + ", windowActionBarOverlay: " + this.j + ", android:windowIsFloating: " + this.l + ", windowActionModeOverlay: " + this.k + ", windowNoTitle: " + this.m + " }");
        if (!((TypedArray)localObject1).getBoolean(l.AppCompatTheme_windowActionBar, false))
          break;
        c(108);
        break;
        label288: if (!this.i)
          break label1002;
        localObject1 = new TypedValue();
        this.b.getTheme().resolveAttribute(android.support.v7.b.b.actionBarTheme, (TypedValue)localObject1, true);
        if (((TypedValue)localObject1).resourceId != 0);
        for (localObject1 = new e(this.b, ((TypedValue)localObject1).resourceId); ; localObject1 = this.b)
        {
          localObject1 = (ViewGroup)LayoutInflater.from((Context)localObject1).inflate(android.support.v7.b.i.abc_screen_toolbar, null);
          this.p = ((bt)((ViewGroup)localObject1).findViewById(android.support.v7.b.g.decor_content_parent));
          this.p.setWindowCallback(this.c.getCallback());
          if (this.j)
            this.p.a(109);
          if (this.B)
            this.p.a(2);
          if (this.C)
            this.p.a(5);
          break;
        }
        label459: if (this.k);
        for (localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(android.support.v7.b.i.abc_screen_simple_overlay_action_mode, null); ; localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(android.support.v7.b.i.abc_screen_simple, null))
        {
          if (Build.VERSION.SDK_INT < 21)
            break label521;
          bl.a((View)localObject1, new ae(this));
          break;
        }
        label521: ((ci)localObject1).setOnFitSystemWindowsListener(new af(this));
        continue;
      }
      if (this.p == null)
        this.z = ((TextView)((ViewGroup)localObject1).findViewById(android.support.v7.b.g.title));
      gj.b((View)localObject1);
      Object localObject2 = (ContentFrameLayout)((ViewGroup)localObject1).findViewById(android.support.v7.b.g.action_bar_activity_content);
      ViewGroup localViewGroup = (ViewGroup)this.c.findViewById(16908290);
      if (localViewGroup != null)
      {
        while (localViewGroup.getChildCount() > 0)
        {
          View localView = localViewGroup.getChildAt(0);
          localViewGroup.removeViewAt(0);
          ((ContentFrameLayout)localObject2).addView(localView);
        }
        localViewGroup.setId(-1);
        ((ContentFrameLayout)localObject2).setId(16908290);
        if ((localViewGroup instanceof FrameLayout))
          ((FrameLayout)localViewGroup).setForeground(null);
      }
      this.c.setContentView((View)localObject1);
      ((ContentFrameLayout)localObject2).setAttachListener(new ag(this));
      this.v = ((ViewGroup)localObject1);
      if ((this.d instanceof Activity));
      for (localObject1 = ((Activity)this.d).getTitle(); ; localObject1 = this.n)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1))
          b((CharSequence)localObject1);
        localObject1 = (ContentFrameLayout)this.v.findViewById(16908290);
        localObject2 = this.c.getDecorView();
        int i = ((View)localObject2).getPaddingLeft();
        int j = ((View)localObject2).getPaddingTop();
        int k = ((View)localObject2).getPaddingRight();
        int m = ((View)localObject2).getPaddingBottom();
        ((ContentFrameLayout)localObject1).b.set(i, j, k, m);
        if (bl.x((View)localObject1))
          ((ContentFrameLayout)localObject1).requestLayout();
        localObject2 = this.b.obtainStyledAttributes(l.AppCompatTheme);
        ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowMinWidthMajor, ((ContentFrameLayout)localObject1).getMinWidthMajor());
        ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowMinWidthMinor, ((ContentFrameLayout)localObject1).getMinWidthMinor());
        if (((TypedArray)localObject2).hasValue(l.AppCompatTheme_windowFixedWidthMajor))
          ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowFixedWidthMajor, ((ContentFrameLayout)localObject1).getFixedWidthMajor());
        if (((TypedArray)localObject2).hasValue(l.AppCompatTheme_windowFixedWidthMinor))
          ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowFixedWidthMinor, ((ContentFrameLayout)localObject1).getFixedWidthMinor());
        if (((TypedArray)localObject2).hasValue(l.AppCompatTheme_windowFixedHeightMajor))
          ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowFixedHeightMajor, ((ContentFrameLayout)localObject1).getFixedHeightMajor());
        if (((TypedArray)localObject2).hasValue(l.AppCompatTheme_windowFixedHeightMinor))
          ((TypedArray)localObject2).getValue(l.AppCompatTheme_windowFixedHeightMinor, ((ContentFrameLayout)localObject1).getFixedHeightMinor());
        ((TypedArray)localObject2).recycle();
        ((ContentFrameLayout)localObject1).requestLayout();
        this.y = true;
        localObject1 = f(0);
        if ((!this.o) && ((localObject1 == null) || (((ao)localObject1).j == null)))
          g(108);
        return;
      }
      label1002: localObject1 = null;
    }
  }

  private void o()
  {
    if (this.y)
      throw new AndroidRuntimeException("Window feature must be requested before adding content");
  }

  public final View a(int paramInt)
  {
    n();
    return this.c.findViewById(paramInt);
  }

  public final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    int j = 0;
    Object localObject1 = a(paramString, paramContext, paramAttributeSet);
    if (localObject1 != null)
    {
      paramString = (String)localObject1;
      return paramString;
    }
    boolean bool1;
    label34: int i;
    label79: Object localObject2;
    boolean bool2;
    if (Build.VERSION.SDK_INT < 21)
    {
      bool1 = true;
      if (this.N == null)
        this.N = new ar();
      if (!bool1)
        break label425;
      localObject1 = (ViewParent)paramView;
      if (localObject1 != null)
        break label361;
      i = 0;
      if (i == 0)
        break label425;
      i = 1;
      localObject2 = this.N;
      bool2 = ge.a();
      if ((i == 0) || (paramView == null))
        break label845;
    }
    label320: label845: for (paramView = paramView.getContext(); ; paramView = paramContext)
    {
      paramView = ar.a(paramView, paramAttributeSet, bool1);
      localObject1 = paramView;
      if (bool2)
        localObject1 = fq.a(paramView);
      paramView = null;
      switch (paramString.hashCode())
      {
      default:
        label248: i = -1;
        switch (i)
        {
        default:
          label251: if ((paramView == null) && (paramContext != localObject1))
            paramView = ((ar)localObject2).a((Context)localObject1, paramString, paramAttributeSet);
          break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        }
        break;
      case -938935918:
      case 1125864064:
      case 2001146706:
      case 1666676343:
      case -339785223:
      case -937446323:
      case 1601505219:
      case 776382189:
      case -1455429095:
      case 1413872058:
      case -1346021293:
      case -1946472170:
      case -658531749:
      }
      while (true)
      {
        paramString = paramView;
        if (paramView == null)
          break;
        ar.a(paramView, paramAttributeSet);
        return paramView;
        bool1 = false;
        break label34;
        label361: localObject2 = this.c.getDecorView();
        while (true)
        {
          if (localObject1 == null)
          {
            i = 1;
            break;
          }
          if ((localObject1 == localObject2) || (!(localObject1 instanceof View)) || (bl.y((View)localObject1)))
          {
            i = 0;
            break;
          }
          localObject1 = ((ViewParent)localObject1).getParent();
        }
        i = 0;
        break label79;
        if (!paramString.equals("TextView"))
          break label248;
        i = j;
        break label251;
        if (!paramString.equals("ImageView"))
          break label248;
        i = 1;
        break label251;
        if (!paramString.equals("Button"))
          break label248;
        i = 2;
        break label251;
        if (!paramString.equals("EditText"))
          break label248;
        i = 3;
        break label251;
        if (!paramString.equals("Spinner"))
          break label248;
        i = 4;
        break label251;
        if (!paramString.equals("ImageButton"))
          break label248;
        i = 5;
        break label251;
        if (!paramString.equals("CheckBox"))
          break label248;
        i = 6;
        break label251;
        if (!paramString.equals("RadioButton"))
          break label248;
        i = 7;
        break label251;
        if (!paramString.equals("CheckedTextView"))
          break label248;
        i = 8;
        break label251;
        if (!paramString.equals("AutoCompleteTextView"))
          break label248;
        i = 9;
        break label251;
        if (!paramString.equals("MultiAutoCompleteTextView"))
          break label248;
        i = 10;
        break label251;
        if (!paramString.equals("RatingBar"))
          break label248;
        i = 11;
        break label251;
        if (!paramString.equals("SeekBar"))
          break label248;
        i = 12;
        break label251;
        paramView = new bo((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new aw((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new android.support.v7.widget.ak((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new android.support.v7.widget.at((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new bf((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new au((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new al((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new bb((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new am((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new android.support.v7.widget.ai((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new ax((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new bc((Context)localObject1, paramAttributeSet);
        break label320;
        paramView = new android.support.v7.widget.bd((Context)localObject1, paramAttributeSet);
        break label320;
      }
    }
  }

  View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((this.d instanceof LayoutInflater.Factory))
    {
      paramString = ((LayoutInflater.Factory)this.d).onCreateView(paramString, paramContext, paramAttributeSet);
      if (paramString != null)
        return paramString;
    }
    return null;
  }

  public final void a(Configuration paramConfiguration)
  {
    if ((this.i) && (this.y))
    {
      a locala = a();
      if (locala != null)
        locala.a(paramConfiguration);
    }
    i();
  }

  public void a(Bundle paramBundle)
  {
    if (((this.d instanceof Activity)) && (az.b((Activity)this.d) != null))
    {
      paramBundle = this.g;
      if (paramBundle == null)
        this.K = true;
    }
    else
    {
      return;
    }
    paramBundle.a(true);
  }

  public final void a(android.support.v7.view.menu.i parami)
  {
    if ((this.p != null) && (this.p.a()) && ((!cc.b(ViewConfiguration.get(this.b))) || (this.p.c())))
    {
      parami = this.c.getCallback();
      if (!this.p.b())
        if ((parami != null) && (!this.o))
        {
          if ((this.H) && ((this.I & 0x1) != 0))
          {
            this.c.getDecorView().removeCallbacks(this.J);
            this.J.run();
          }
          ao localao = f(0);
          if ((localao.j != null) && (!localao.r) && (parami.onPreparePanel(0, localao.i, localao.j)))
          {
            parami.onMenuOpened(108, localao.j);
            this.p.d();
          }
        }
      do
      {
        return;
        this.p.e();
      }
      while (this.o);
      parami.onPanelClosed(108, f(0).j);
      return;
    }
    parami = f(0);
    parami.q = true;
    a(parami, false);
    a(parami, null);
  }

  public final void a(Toolbar paramToolbar)
  {
    if (!(this.d instanceof Activity))
      return;
    a locala = a();
    if ((locala instanceof bd))
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    this.h = null;
    if (locala != null)
      locala.j();
    if (paramToolbar != null)
    {
      paramToolbar = new at(paramToolbar, ((Activity)this.b).getTitle(), this.e);
      this.g = paramToolbar;
      this.c.setCallback(paramToolbar.c);
    }
    while (true)
    {
      f();
      return;
      this.g = null;
      this.c.setCallback(this.e);
    }
  }

  public final void a(View paramView)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.v.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    this.d.onContentChanged();
  }

  public final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.v.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    this.d.onContentChanged();
  }

  final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = a();
    if ((localObject != null) && (((a)localObject).a(paramInt, paramKeyEvent)));
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((this.F == null) || (!a(this.F, paramKeyEvent.getKeyCode(), paramKeyEvent)))
          break;
      }
      while (this.F == null);
      this.F.n = true;
      return true;
      if (this.F != null)
        break;
      localObject = f(0);
      b((ao)localObject, paramKeyEvent);
      bool = a((ao)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent);
      ((ao)localObject).m = false;
    }
    while (bool);
    return false;
  }

  public final boolean a(android.support.v7.view.menu.i parami, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = this.c.getCallback();
    if ((localCallback != null) && (!this.o))
    {
      parami = a(parami.k());
      if (parami != null)
        return localCallback.onMenuItemSelected(parami.a, paramMenuItem);
    }
    return false;
  }

  final boolean a(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 82) && (this.d.dispatchKeyEvent(paramKeyEvent)));
    int i;
    label180: 
    do
    {
      int j;
      do
      {
        do
        {
          return true;
          j = paramKeyEvent.getKeyCode();
          if (paramKeyEvent.getAction() == 0);
          for (i = 1; i != 0; i = 0)
            switch (j)
            {
            default:
              if (Build.VERSION.SDK_INT < 11)
                a(j, paramKeyEvent);
              return false;
            case 82:
            case 4:
            }
        }
        while (paramKeyEvent.getRepeatCount() != 0);
        localao = f(0);
      }
      while (localao.o);
      b(localao, paramKeyEvent);
      return true;
      if ((paramKeyEvent.getFlags() & 0x80) != 0);
      for (bool = true; ; bool = false)
      {
        this.G = bool;
        break;
      }
      switch (j)
      {
      default:
        return false;
      case 82:
      case 4:
      }
    }
    while (this.q != null);
    ao localao = f(0);
    if ((this.p != null) && (this.p.a()) && (!cc.b(ViewConfiguration.get(this.b))))
      if (!this.p.b())
      {
        if ((this.o) || (!b(localao, paramKeyEvent)))
          break label495;
        bool = this.p.d();
      }
    label268: 
    while (bool)
    {
      paramKeyEvent = (AudioManager)this.b.getSystemService("audio");
      if (paramKeyEvent == null)
        break label394;
      paramKeyEvent.playSoundEffect(0);
      return true;
      bool = this.p.e();
      continue;
      if ((!localao.o) && (!localao.n))
        break label345;
      bool = localao.o;
      a(localao, true);
    }
    label345: if (localao.m)
    {
      if (!localao.r)
        break label501;
      localao.m = false;
    }
    label394: label495: label501: for (boolean bool = b(localao, paramKeyEvent); ; bool = true)
    {
      if (bool)
      {
        a(localao, paramKeyEvent);
        bool = true;
        break label268;
        Log.w("AppCompatDelegate", "Couldn't get audio manager");
        return true;
        bool = this.G;
        this.G = false;
        paramKeyEvent = f(0);
        if ((paramKeyEvent != null) && (paramKeyEvent.o))
        {
          if (bool)
            break;
          a(paramKeyEvent, true);
          return true;
        }
        if (this.q != null)
        {
          this.q.c();
          i = 1;
        }
        while (i != 0)
        {
          return true;
          paramKeyEvent = a();
          if ((paramKeyEvent != null) && (paramKeyEvent.h()))
            i = 1;
          else
            i = 0;
        }
        break label180;
      }
      bool = false;
      break label268;
    }
  }

  public final void b(int paramInt)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.v.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(this.b).inflate(paramInt, localViewGroup);
    this.d.onContentChanged();
  }

  public final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ((ViewGroup)this.v.findViewById(16908290)).addView(paramView, paramLayoutParams);
    this.d.onContentChanged();
  }

  final void b(CharSequence paramCharSequence)
  {
    if (this.p != null)
      this.p.setWindowTitle(paramCharSequence);
    do
    {
      return;
      if (this.g != null)
      {
        this.g.a(paramCharSequence);
        return;
      }
    }
    while (this.z == null);
    this.z.setText(paramCharSequence);
  }

  public final void c()
  {
    n();
  }

  public final boolean c(int paramInt)
  {
    int i;
    if (paramInt == 8)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      i = 108;
    }
    while ((this.m) && (i == 108))
    {
      return false;
      i = paramInt;
      if (paramInt == 9)
      {
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        i = 109;
      }
    }
    if ((this.i) && (i == 1))
      this.i = false;
    switch (i)
    {
    default:
      return this.c.requestFeature(i);
    case 108:
      o();
      this.i = true;
      return true;
    case 109:
      o();
      this.j = true;
      return true;
    case 10:
      o();
      this.k = true;
      return true;
    case 2:
      o();
      this.B = true;
      return true;
    case 5:
      o();
      this.C = true;
      return true;
    case 1:
    }
    o();
    this.m = true;
    return true;
  }

  public final void d()
  {
    a locala = a();
    if (locala != null)
      locala.b(false);
  }

  final void d(int paramInt)
  {
    Object localObject;
    if (paramInt == 108)
    {
      localObject = a();
      if (localObject != null)
        ((a)localObject).c(false);
    }
    do
    {
      do
        return;
      while (paramInt != 0);
      localObject = f(paramInt);
    }
    while (!((ao)localObject).o);
    a((ao)localObject, false);
  }

  public final void e()
  {
    a locala = a();
    if (locala != null)
      locala.b(true);
  }

  final boolean e(int paramInt)
  {
    if (paramInt == 108)
    {
      a locala = a();
      if (locala != null)
        locala.c(true);
      return true;
    }
    return false;
  }

  public final void f()
  {
    a locala = a();
    if ((locala != null) && (locala.g()))
      return;
    g(0);
  }

  public final void g()
  {
    super.g();
    if (this.g != null)
      this.g.j();
  }

  public final void h()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.b);
    if (localLayoutInflater.getFactory() == null)
      z.a(localLayoutInflater, this);
    while ((z.a(localLayoutInflater) instanceof ac))
      return;
    Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
  }

  public final void k()
  {
    n();
    if ((!this.i) || (this.g != null));
    while (true)
    {
      return;
      if ((this.d instanceof Activity))
        this.g = new bd((Activity)this.d, this.j);
      while (this.g != null)
      {
        this.g.a(this.K);
        return;
        if ((this.d instanceof Dialog))
          this.g = new bd((Dialog)this.d);
      }
    }
  }

  final void m()
  {
    if (this.u != null)
      this.u.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ac
 * JD-Core Version:    0.6.2
 */