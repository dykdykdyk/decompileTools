package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.v7.a.d;
import android.support.v7.a.j;
import android.support.v7.a.k;
import android.support.v7.a.n;
import android.support.v7.a.p;
import android.support.v7.a.q;
import android.support.v7.a.r;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;

public final class g
  implements x, AdapterView.OnItemClickListener
{
  Context a;
  LayoutInflater b;
  i c;
  ExpandedMenuView d;
  int e;
  int f;
  public y g;
  h h;
  private int i;

  private g(int paramInt)
  {
    this.f = paramInt;
    this.e = 0;
  }

  public g(Context paramContext, int paramInt)
  {
    this(paramInt);
    this.a = paramContext;
    this.b = LayoutInflater.from(this.a);
  }

  public final z a(ViewGroup paramViewGroup)
  {
    if (this.d == null)
    {
      this.d = ((ExpandedMenuView)this.b.inflate(android.support.v7.b.i.abc_expanded_menu_layout, paramViewGroup, false));
      if (this.h == null)
        this.h = new h(this);
      this.d.setAdapter(this.h);
      this.d.setOnItemClickListener(this);
    }
    return this.d;
  }

  public final void a(Context paramContext, i parami)
  {
    if (this.e != 0)
    {
      this.a = new ContextThemeWrapper(paramContext, this.e);
      this.b = LayoutInflater.from(this.a);
    }
    while (true)
    {
      this.c = parami;
      if (this.h != null)
        this.h.notifyDataSetChanged();
      return;
      if (this.a != null)
      {
        this.a = paramContext;
        if (this.b == null)
          this.b = LayoutInflater.from(this.a);
      }
    }
  }

  public final void a(i parami, boolean paramBoolean)
  {
    if (this.g != null)
      this.g.a(parami, paramBoolean);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(ad paramad)
  {
    if (!paramad.hasVisibleItems())
      return false;
    l locall = new l(paramad);
    Object localObject1 = locall.a;
    r localr = new r(((i)localObject1).a);
    locall.c = new g(localr.a.a, android.support.v7.b.i.abc_list_menu_item_layout);
    locall.c.g = locall;
    locall.a.a(locall.c);
    Object localObject2 = locall.c.b();
    localr.a.t = ((ListAdapter)localObject2);
    localr.a.u = locall;
    localObject2 = ((i)localObject1).h;
    j localj;
    d locald;
    ListView localListView;
    label406: label447: label479: int j;
    if (localObject2 != null)
    {
      localr.a.g = ((View)localObject2);
      localr.a.r = locall;
      localObject2 = new q(localr.a.a, localr.b);
      localj = localr.a;
      locald = q.a((q)localObject2);
      if (localj.g == null)
        break label777;
      locald.C = localj.g;
      if (localj.h != null)
      {
        localObject1 = localj.h;
        locald.e = ((CharSequence)localObject1);
        if (locald.B != null)
          locald.B.setText((CharSequence)localObject1);
      }
      if (localj.i != null)
        locald.a(-1, localj.i, localj.j, null);
      if (localj.k != null)
        locald.a(-2, localj.k, localj.l, null);
      if (localj.m != null)
        locald.a(-3, localj.m, localj.n, null);
      if ((localj.s != null) || (localj.H != null) || (localj.t != null))
      {
        localListView = (ListView)localj.b.inflate(locald.H, null);
        if (!localj.D)
          break label966;
        if (localj.H != null)
          break label938;
        localObject1 = new k(localj, localj.a, locald.I, localj.s, localListView);
        locald.D = ((ListAdapter)localObject1);
        locald.E = localj.F;
        if (localj.u == null)
          break label1082;
        localListView.setOnItemClickListener(new android.support.v7.a.m(localj, locald));
        if (localj.K != null)
          localListView.setOnItemSelectedListener(localj.K);
        if (!localj.E)
          break label1111;
        localListView.setChoiceMode(1);
        locald.f = localListView;
      }
      if (localj.w == null)
        break label1153;
      if (!localj.B)
        break label1128;
      localObject1 = localj.w;
      j = localj.x;
      int k = localj.y;
      int m = localj.z;
      int n = localj.A;
      locald.g = ((View)localObject1);
      locald.h = 0;
      locald.m = true;
      locald.i = j;
      locald.j = k;
      locald.k = m;
      locald.l = n;
    }
    while (true)
    {
      ((q)localObject2).setCancelable(localr.a.o);
      if (localr.a.o)
        ((q)localObject2).setCanceledOnTouchOutside(true);
      ((q)localObject2).setOnCancelListener(localr.a.p);
      ((q)localObject2).setOnDismissListener(localr.a.q);
      if (localr.a.r != null)
        ((q)localObject2).setOnKeyListener(localr.a.r);
      locall.b = ((q)localObject2);
      locall.b.setOnDismissListener(locall);
      localObject1 = locall.b.getWindow().getAttributes();
      ((WindowManager.LayoutParams)localObject1).type = 1003;
      ((WindowManager.LayoutParams)localObject1).flags |= 131072;
      locall.b.show();
      if (this.g != null)
        this.g.a(paramad);
      return true;
      localObject2 = ((i)localObject1).g;
      localr.a.d = ((Drawable)localObject2);
      localObject1 = ((i)localObject1).f;
      localr.a.f = ((CharSequence)localObject1);
      break;
      label777: if (localj.f != null)
        locald.a(localj.f);
      if (localj.d != null)
      {
        localObject1 = localj.d;
        locald.y = ((Drawable)localObject1);
        locald.x = 0;
        if (locald.z != null)
        {
          if (localObject1 == null)
            break label925;
          locald.z.setVisibility(0);
          locald.z.setImageDrawable((Drawable)localObject1);
        }
      }
      while (true)
      {
        if (localj.c != 0)
          locald.a(localj.c);
        if (localj.e == 0)
          break;
        j = localj.e;
        localObject1 = new TypedValue();
        locald.a.getTheme().resolveAttribute(j, (TypedValue)localObject1, true);
        locald.a(((TypedValue)localObject1).resourceId);
        break;
        label925: locald.z.setVisibility(8);
      }
      label938: localObject1 = new android.support.v7.a.l(localj, localj.a, localj.H, localListView, locald);
      break label406;
      label966: if (localj.E);
      for (j = locald.J; ; j = locald.K)
      {
        if (localj.H == null)
          break label1041;
        localObject1 = new SimpleCursorAdapter(localj.a, j, localj.H, new String[] { localj.I }, new int[] { 16908308 });
        break;
      }
      label1041: if (localj.t != null)
      {
        localObject1 = localj.t;
        break label406;
      }
      localObject1 = new p(localj.a, j, localj.s);
      break label406;
      label1082: if (localj.G == null)
        break label447;
      localListView.setOnItemClickListener(new n(localj, localListView, locald));
      break label447;
      label1111: if (!localj.D)
        break label479;
      localListView.setChoiceMode(2);
      break label479;
      label1128: locald.g = localj.w;
      locald.h = 0;
      locald.m = false;
      continue;
      label1153: if (localj.v != 0)
      {
        j = localj.v;
        locald.g = null;
        locald.h = j;
        locald.m = false;
      }
    }
  }

  public final ListAdapter b()
  {
    if (this.h == null)
      this.h = new h(this);
    return this.h;
  }

  public final void b(boolean paramBoolean)
  {
    if (this.h != null)
      this.h.notifyDataSetChanged();
  }

  public final boolean b(m paramm)
  {
    return false;
  }

  public final boolean c(m paramm)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.c.a(this.h.a(paramInt), this, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.g
 * JD-Core Version:    0.6.2
 */