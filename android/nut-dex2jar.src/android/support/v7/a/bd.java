package android.support.v7.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v4.view.dm;
import android.support.v4.view.dt;
import android.support.v4.view.dv;
import android.support.v7.b.g;
import android.support.v7.view.c;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.bu;
import android.support.v7.widget.ex;
import android.support.v7.widget.i;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class bd extends a
  implements i
{
  private static final Interpolator i;
  private static final Interpolator j;
  private static final boolean k;
  private boolean A;
  private int B = 0;
  private boolean C = true;
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G = true;
  private android.support.v7.view.l H;
  private boolean I;
  bh a;
  android.support.v7.view.b b;
  c c;
  boolean d;
  final dt e = new be(this);
  final dt f = new bf(this);
  final dv g = new bg(this);
  private Context l;
  private Context m;
  private Activity n;
  private Dialog o;
  private ActionBarOverlayLayout p;
  private ActionBarContainer q;
  private bu r;
  private ActionBarContextView s;
  private View t;
  private ex u;
  private ArrayList<Object> v = new ArrayList();
  private int w = -1;
  private boolean x;
  private boolean y;
  private ArrayList<Object> z = new ArrayList();

  static
  {
    boolean bool2 = true;
    if (!bd.class.desiredAssertionStatus())
    {
      bool1 = true;
      h = bool1;
      i = new AccelerateInterpolator();
      j = new DecelerateInterpolator();
      if (Build.VERSION.SDK_INT < 14)
        break label56;
    }
    label56: for (boolean bool1 = bool2; ; bool1 = false)
    {
      k = bool1;
      return;
      bool1 = false;
      break;
    }
  }

  public bd(Activity paramActivity, boolean paramBoolean)
  {
    this.n = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    a(paramActivity);
    if (!paramBoolean)
      this.t = paramActivity.findViewById(16908290);
  }

  public bd(Dialog paramDialog)
  {
    this.o = paramDialog;
    a(paramDialog.getWindow().getDecorView());
  }

  private void a(int paramInt1, int paramInt2)
  {
    int i1 = this.r.o();
    if ((paramInt2 & 0x4) != 0)
      this.x = true;
    this.r.c(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }

  private void a(View paramView)
  {
    this.p = ((ActionBarOverlayLayout)paramView.findViewById(g.decor_content_parent));
    if (this.p != null)
      this.p.setActionBarVisibilityCallback(this);
    Object localObject = paramView.findViewById(g.action_bar);
    if ((localObject instanceof bu));
    for (localObject = (bu)localObject; ; localObject = ((Toolbar)localObject).getWrapper())
    {
      this.r = ((bu)localObject);
      this.s = ((ActionBarContextView)paramView.findViewById(g.action_context_bar));
      this.q = ((ActionBarContainer)paramView.findViewById(g.action_bar_container));
      if ((this.r != null) && (this.s != null) && (this.q != null))
        break label206;
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
      if (!(localObject instanceof Toolbar))
        break;
    }
    if ("Can't make a decor toolbar out of " + localObject != null);
    for (paramView = localObject.getClass().getSimpleName(); ; paramView = "null")
      throw new IllegalStateException(paramView);
    label206: this.l = this.r.b();
    if ((this.r.o() & 0x4) != 0);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        this.x = true;
      paramView = android.support.v7.view.a.a(this.l);
      i1 = paramView.a.getApplicationInfo().targetSdkVersion;
      f(paramView.a());
      paramView = this.l.obtainStyledAttributes(null, android.support.v7.b.l.ActionBar, android.support.v7.b.b.actionBarStyle, 0);
      if (!paramView.getBoolean(android.support.v7.b.l.ActionBar_hideOnContentScroll, false))
        break label337;
      if (this.p.a)
        break;
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    this.d = true;
    this.p.setHideOnContentScrollEnabled(true);
    label337: i1 = paramView.getDimensionPixelSize(android.support.v7.b.l.ActionBar_elevation, 0);
    if (i1 != 0)
    {
      float f1 = i1;
      bl.d(this.q, f1);
    }
    paramView.recycle();
  }

  private static boolean a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3);
    while ((!paramBoolean1) && (!paramBoolean2))
      return true;
    return false;
  }

  private void f(boolean paramBoolean)
  {
    boolean bool = true;
    this.A = paramBoolean;
    int i1;
    label50: label83: Object localObject;
    if (!this.A)
    {
      this.r.a(null);
      this.q.setTabContainer(this.u);
      if (this.r.p() != 2)
        break label160;
      i1 = 1;
      if (this.u != null)
      {
        if (i1 == 0)
          break label165;
        this.u.setVisibility(0);
        if (this.p != null)
          bl.q(this.p);
      }
      localObject = this.r;
      if ((this.A) || (i1 == 0))
        break label177;
      paramBoolean = true;
      label102: ((bu)localObject).a(paramBoolean);
      localObject = this.p;
      if ((this.A) || (i1 == 0))
        break label182;
    }
    label160: label165: label177: label182: for (paramBoolean = bool; ; paramBoolean = false)
    {
      ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
      return;
      this.q.setTabContainer(null);
      this.r.a(this.u);
      break;
      i1 = 0;
      break label50;
      this.u.setVisibility(8);
      break label83;
      paramBoolean = false;
      break label102;
    }
  }

  private void g(boolean paramBoolean)
  {
    float f2;
    float f1;
    Object localObject1;
    Object localObject2;
    if (a(this.D, this.E, this.F))
      if (!this.G)
      {
        this.G = true;
        if (this.H != null)
          this.H.b();
        this.q.setVisibility(0);
        if ((this.B != 0) || (!k) || ((!this.I) && (!paramBoolean)))
          break label271;
        bl.b(this.q, 0.0F);
        f2 = -this.q.getHeight();
        f1 = f2;
        if (paramBoolean)
        {
          localObject1 = new int[2];
          Object tmp107_105 = localObject1;
          tmp107_105[0] = 0;
          Object tmp111_107 = tmp107_105;
          tmp111_107[1] = 0;
          tmp111_107;
          this.q.getLocationInWindow((int[])localObject1);
          f1 = f2 - localObject1[1];
        }
        bl.b(this.q, f1);
        localObject1 = new android.support.v7.view.l();
        localObject2 = bl.o(this.q).c(0.0F);
        ((dd)localObject2).a(this.g);
        ((android.support.v7.view.l)localObject1).a((dd)localObject2);
        if ((this.C) && (this.t != null))
        {
          bl.b(this.t, f1);
          ((android.support.v7.view.l)localObject1).a(bl.o(this.t).c(0.0F));
        }
        ((android.support.v7.view.l)localObject1).a(j);
        ((android.support.v7.view.l)localObject1).c();
        ((android.support.v7.view.l)localObject1).a(this.f);
        this.H = ((android.support.v7.view.l)localObject1);
        ((android.support.v7.view.l)localObject1).a();
        if (this.p != null)
          bl.q(this.p);
      }
    label271: 
    while (!this.G)
      while (true)
      {
        return;
        bl.c(this.q, 1.0F);
        bl.b(this.q, 0.0F);
        if ((this.C) && (this.t != null))
          bl.b(this.t, 0.0F);
        this.f.b(null);
      }
    this.G = false;
    if (this.H != null)
      this.H.b();
    if ((this.B == 0) && (k) && ((this.I) || (paramBoolean)))
    {
      bl.c(this.q, 1.0F);
      this.q.setTransitioning(true);
      localObject1 = new android.support.v7.view.l();
      f2 = -this.q.getHeight();
      f1 = f2;
      if (paramBoolean)
      {
        localObject2 = new int[2];
        Object tmp420_418 = localObject2;
        tmp420_418[0] = 0;
        Object tmp424_420 = tmp420_418;
        tmp424_420[1] = 0;
        tmp424_420;
        this.q.getLocationInWindow((int[])localObject2);
        f1 = f2 - localObject2[1];
      }
      localObject2 = bl.o(this.q).c(f1);
      ((dd)localObject2).a(this.g);
      ((android.support.v7.view.l)localObject1).a((dd)localObject2);
      if ((this.C) && (this.t != null))
        ((android.support.v7.view.l)localObject1).a(bl.o(this.t).c(f1));
      ((android.support.v7.view.l)localObject1).a(i);
      ((android.support.v7.view.l)localObject1).c();
      ((android.support.v7.view.l)localObject1).a(this.e);
      this.H = ((android.support.v7.view.l)localObject1);
      ((android.support.v7.view.l)localObject1).a();
      return;
    }
    this.e.b(null);
  }

  public final android.support.v7.view.b a(c paramc)
  {
    if (this.a != null)
      this.a.c();
    this.p.setHideOnContentScrollEnabled(false);
    this.s.b();
    paramc = new bh(this, this.s.getContext(), paramc);
    if (paramc.e())
    {
      paramc.d();
      this.s.a(paramc);
      e(true);
      this.s.sendAccessibilityEvent(32);
      this.a = paramc;
      return paramc;
    }
    return null;
  }

  public final void a()
  {
    a(0, 8);
  }

  public final void a(int paramInt)
  {
    this.B = paramInt;
  }

  public final void a(Configuration paramConfiguration)
  {
    f(android.support.v7.view.a.a(this.l).a());
  }

  public final void a(View paramView, b paramb)
  {
    paramView.setLayoutParams(paramb);
    this.r.a(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.r.a(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    if (!this.x)
      if (!paramBoolean)
        break label20;
    label20: for (int i1 = 4; ; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }

  public final void b()
  {
    a(16, 16);
  }

  public final void b(boolean paramBoolean)
  {
    this.I = paramBoolean;
    if ((!paramBoolean) && (this.H != null))
      this.H.b();
  }

  public final View c()
  {
    return this.r.q();
  }

  public final void c(boolean paramBoolean)
  {
    if (paramBoolean == this.y);
    while (true)
    {
      return;
      this.y = paramBoolean;
      int i2 = this.z.size();
      int i1 = 0;
      while (i1 < i2)
      {
        this.z.get(i1);
        i1 += 1;
      }
    }
  }

  public final int d()
  {
    return this.r.o();
  }

  public final void d(boolean paramBoolean)
  {
    this.C = paramBoolean;
  }

  public final void e(boolean paramBoolean)
  {
    Object localObject;
    dd localdd;
    label68: android.support.v7.view.l locall;
    if (paramBoolean)
    {
      if (!this.F)
      {
        this.F = true;
        if (this.p != null)
          this.p.setShowingForActionMode(true);
        g(false);
      }
      if (!paramBoolean)
        break label198;
      localObject = this.r.a(4, 100L);
      localdd = this.s.a(0, 200L);
      locall = new android.support.v7.view.l();
      locall.a.add(localObject);
      localObject = (View)((dd)localObject).a.get();
      if (localObject == null)
        break label230;
    }
    label198: label230: for (long l1 = dd.b.a((View)localObject); ; l1 = 0L)
    {
      localObject = (View)localdd.a.get();
      if (localObject != null)
        dd.b.b((View)localObject, l1);
      locall.a.add(localdd);
      locall.a();
      return;
      if (!this.F)
        break;
      this.F = false;
      if (this.p != null)
        this.p.setShowingForActionMode(false);
      g(false);
      break;
      localdd = this.r.a(0, 200L);
      localObject = this.s.a(8, 100L);
      break label68;
    }
  }

  public final boolean e()
  {
    int i1 = this.q.getHeight();
    return (this.G) && ((i1 == 0) || (this.p.getActionBarHideOffset() < i1));
  }

  public final Context f()
  {
    int i1;
    if (this.m == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.l.getTheme().resolveAttribute(android.support.v7.b.b.actionBarWidgetTheme, localTypedValue, true);
      i1 = localTypedValue.resourceId;
      if (i1 == 0)
        break label61;
    }
    label61: for (this.m = new ContextThemeWrapper(this.l, i1); ; this.m = this.l)
      return this.m;
  }

  public final boolean h()
  {
    if ((this.r != null) && (this.r.c()))
    {
      this.r.d();
      return true;
    }
    return false;
  }

  public final boolean i()
  {
    ViewGroup localViewGroup = this.r.a();
    if ((localViewGroup != null) && (!localViewGroup.hasFocus()))
    {
      localViewGroup.requestFocus();
      return true;
    }
    return false;
  }

  public final void k()
  {
    if (this.E)
    {
      this.E = false;
      g(true);
    }
  }

  public final void l()
  {
    if (!this.E)
    {
      this.E = true;
      g(true);
    }
  }

  public final void m()
  {
    if (this.H != null)
    {
      this.H.b();
      this.H = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.bd
 * JD-Core Version:    0.6.2
 */