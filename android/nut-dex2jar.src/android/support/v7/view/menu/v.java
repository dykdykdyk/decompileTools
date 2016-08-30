package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.b.b;
import android.support.v7.b.e;
import android.support.v7.widget.cu;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public class v
  implements x, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int a = android.support.v7.b.i.abc_popup_menu_item_layout;
  public View b;
  public cu c;
  public y d;
  public boolean e;
  public int f = 0;
  private final Context g;
  private final LayoutInflater h;
  private final i i;
  private final w j;
  private final boolean k;
  private final int l;
  private final int m;
  private final int n;
  private ViewTreeObserver o;
  private ViewGroup p;
  private boolean q;
  private int r;

  private v(Context paramContext, i parami, View paramView)
  {
    this(paramContext, parami, paramView, false, b.popupMenuStyle);
  }

  public v(Context paramContext, i parami, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, parami, paramView, paramBoolean, paramInt, (byte)0);
  }

  private v(Context paramContext, i parami, View paramView, boolean paramBoolean, int paramInt, byte paramByte)
  {
    this.g = paramContext;
    this.h = LayoutInflater.from(paramContext);
    this.i = parami;
    this.j = new w(this, this.i);
    this.k = paramBoolean;
    this.m = paramInt;
    this.n = 0;
    Resources localResources = paramContext.getResources();
    this.l = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(e.abc_config_prefDialogWidth));
    this.b = paramView;
    parami.a(this, paramContext);
  }

  public final void a(Context paramContext, i parami)
  {
  }

  public final void a(i parami, boolean paramBoolean)
  {
    if (parami != this.i);
    do
    {
      return;
      c();
    }
    while (this.d == null);
    this.d.a(parami, paramBoolean);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(ad paramad)
  {
    v localv;
    int i1;
    if (paramad.hasVisibleItems())
    {
      localv = new v(this.g, paramad, this.b);
      localv.d = this.d;
      int i2 = paramad.size();
      i1 = 0;
      if (i1 >= i2)
        break label120;
      MenuItem localMenuItem = paramad.getItem(i1);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null));
    }
    label120: for (boolean bool = true; ; bool = false)
    {
      localv.e = bool;
      if (localv.b())
      {
        if (this.d != null)
          this.d.a(paramad);
        return true;
        i1 += 1;
        break;
      }
      return false;
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.q = false;
    if (this.j != null)
      this.j.notifyDataSetChanged();
  }

  public final boolean b()
  {
    int i4 = 0;
    this.c = new cu(this.g, null, this.m, this.n);
    this.c.a(this);
    this.c.m = this;
    this.c.a(this.j);
    this.c.c();
    View localView = this.b;
    int i1;
    int i2;
    if (localView != null)
    {
      if (this.o == null);
      for (i1 = 1; ; i1 = 0)
      {
        this.o = localView.getViewTreeObserver();
        if (i1 != 0)
          this.o.addOnGlobalLayoutListener(this);
        this.c.l = localView;
        this.c.i = this.f;
        if (!this.q)
        {
          w localw = this.j;
          int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i6 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i7 = localw.getCount();
          i2 = 0;
          int i3 = 0;
          localView = null;
          i1 = i4;
          i4 = i1;
          if (i2 < i7)
          {
            i4 = localw.getItemViewType(i2);
            if (i4 == i3)
              break label340;
            i3 = i4;
            localView = null;
            label199: if (this.p == null)
              this.p = new FrameLayout(this.g);
            localView = localw.getView(i2, localView, this.p);
            localView.measure(i5, i6);
            i4 = localView.getMeasuredWidth();
            if (i4 < this.l)
              break;
            i4 = this.l;
          }
          this.r = i4;
          this.q = true;
        }
        this.c.a(this.r);
        this.c.e();
        this.c.b();
        this.c.d.setOnKeyListener(this);
        return true;
      }
    }
    return false;
    if (i4 > i1)
      i1 = i4;
    while (true)
    {
      i2 += 1;
      break;
      label340: break label199;
    }
  }

  public final boolean b(m paramm)
  {
    return false;
  }

  public final void c()
  {
    if (d())
      this.c.d();
  }

  public final boolean c(m paramm)
  {
    return false;
  }

  public final boolean d()
  {
    return (this.c != null) && (this.c.c.isShowing());
  }

  public void onDismiss()
  {
    this.c = null;
    this.i.close();
    if (this.o != null)
    {
      if (!this.o.isAlive())
        this.o = this.b.getViewTreeObserver();
      this.o.removeGlobalOnLayoutListener(this);
      this.o = null;
    }
  }

  public void onGlobalLayout()
  {
    if (d())
    {
      View localView = this.b;
      if ((localView != null) && (localView.isShown()))
        break label28;
      c();
    }
    label28: 
    while (!d())
      return;
    this.c.b();
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = this.j;
    w.a(paramAdapterView).a(paramAdapterView.a(paramInt), null, 0);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      c();
      return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.v
 * JD-Core Version:    0.6.2
 */