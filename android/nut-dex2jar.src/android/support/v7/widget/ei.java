package android.support.v7.widget;

import android.support.v4.os.e;
import android.support.v4.view.bl;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ei
{
  final ArrayList<er> a = new ArrayList();
  ArrayList<er> b = null;
  final ArrayList<er> c = new ArrayList();
  final List<er> d = Collections.unmodifiableList(this.a);
  int e = 2;
  eh f;
  ep g;

  public ei(RecyclerView paramRecyclerView)
  {
  }

  private er a(long paramLong)
  {
    int i = this.a.size() - 1;
    er localer;
    while (i >= 0)
    {
      localer = (er)this.a.get(i);
      if ((localer.d == paramLong) && (!localer.g()))
      {
        if (localer.e == 0)
        {
          localer.b(32);
          if ((localer.m()) && (!this.h.p.g))
            localer.a(2, 14);
          return localer;
        }
        this.a.remove(i);
        this.h.removeDetachedView(localer.a, false);
        b(localer.a);
      }
      i -= 1;
    }
    i = this.c.size() - 1;
    while (i >= 0)
    {
      localer = (er)this.c.get(i);
      if (localer.d == paramLong)
      {
        if (localer.e == 0)
        {
          this.c.remove(i);
          return localer;
        }
        c(i);
      }
      i -= 1;
    }
    return null;
  }

  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup))
        a((ViewGroup)localView, true);
      i -= 1;
    }
    if (!paramBoolean)
      return;
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }

  private void c(er paramer)
  {
    bl.a(paramer.a, null);
    if (RecyclerView.u(this.h) != null)
      RecyclerView.u(this.h);
    if (RecyclerView.h(this.h) != null)
      RecyclerView.h(this.h);
    if (this.h.p != null)
      this.h.e.d(paramer);
    paramer.k = null;
    eh localeh = c();
    int i = paramer.e;
    ArrayList localArrayList2 = (ArrayList)localeh.a.get(i);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      localeh.a.put(i, localArrayList2);
      localArrayList1 = localArrayList2;
      if (localeh.b.indexOfKey(i) < 0)
      {
        localeh.b.put(i, 5);
        localArrayList1 = localArrayList2;
      }
    }
    if (localeh.b.get(i) > localArrayList1.size())
    {
      paramer.q();
      localArrayList1.add(paramer);
    }
  }

  private er d(int paramInt)
  {
    int j = 0;
    int k;
    if (this.b != null)
    {
      k = this.b.size();
      if (k != 0);
    }
    else
    {
      return null;
    }
    int i = 0;
    er localer;
    while (i < k)
    {
      localer = (er)this.b.get(i);
      if ((!localer.g()) && (localer.c() == paramInt))
      {
        localer.b(32);
        return localer;
      }
      i += 1;
    }
    if (RecyclerView.h(this.h).b)
    {
      paramInt = this.h.c.a(paramInt, 0);
      if ((paramInt > 0) && (paramInt < RecyclerView.h(this.h).b()))
      {
        long l = RecyclerView.h(this.h).a(paramInt);
        paramInt = j;
        while (paramInt < k)
        {
          localer = (er)this.b.get(paramInt);
          if ((!localer.g()) && (localer.d == l))
          {
            localer.b(32);
            return localer;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }

  private er e(int paramInt)
  {
    int j = 0;
    int k = this.a.size();
    int i = 0;
    Object localObject1;
    while (i < k)
    {
      localObject1 = (er)this.a.get(i);
      if ((!((er)localObject1).g()) && (((er)localObject1).c() == paramInt) && (!((er)localObject1).j()) && ((this.h.p.g) || (!((er)localObject1).m())))
      {
        ((er)localObject1).b(32);
        return localObject1;
      }
      i += 1;
    }
    Object localObject2 = this.h.d;
    k = ((bp)localObject2).c.size();
    i = 0;
    Object localObject3;
    if (i < k)
    {
      localObject1 = (View)((bp)localObject2).c.get(i);
      localObject3 = ((bp)localObject2).a.b((View)localObject1);
      if ((((er)localObject3).c() != paramInt) || (((er)localObject3).j()) || (((er)localObject3).m()));
    }
    while (true)
      if (localObject1 != null)
      {
        localObject2 = RecyclerView.b((View)localObject1);
        localObject3 = this.h.d;
        paramInt = ((bp)localObject3).a.a((View)localObject1);
        if (paramInt < 0)
        {
          throw new IllegalArgumentException("view is not a child, cannot hide " + localObject1);
          i += 1;
          break;
          localObject1 = null;
          continue;
        }
        if (!((bp)localObject3).b.c(paramInt))
          throw new RuntimeException("trying to unhide a view that was not hidden" + localObject1);
        ((bp)localObject3).b.b(paramInt);
        ((bp)localObject3).b((View)localObject1);
        paramInt = this.h.d.c((View)localObject1);
        if (paramInt == -1)
          throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + localObject2);
        this.h.d.d(paramInt);
        c((View)localObject1);
        ((er)localObject2).b(8224);
        return localObject2;
      }
    k = this.c.size();
    i = j;
    while (i < k)
    {
      localObject1 = (er)this.c.get(i);
      if ((!((er)localObject1).j()) && (((er)localObject1).c() == paramInt))
      {
        this.c.remove(i);
        return localObject1;
      }
      i += 1;
    }
    return null;
  }

  public final int a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.h.p.a()))
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + this.h.p.a());
    if (!this.h.p.g)
      return paramInt;
    return this.h.c.b(paramInt);
  }

  public final void a()
  {
    this.a.clear();
    b();
  }

  final void a(er paramer)
  {
    boolean bool = true;
    int j = 0;
    if ((paramer.e()) || (paramer.a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramer.e()).append(" isAttached:");
      if (paramer.a.getParent() != null);
      while (true)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (paramer.n())
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramer);
    if (paramer.b())
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    bool = er.c(paramer);
    if ((RecyclerView.h(this.h) != null) && (bool))
      RecyclerView.h(this.h);
    int i;
    if (paramer.r())
      if (!paramer.a(14))
      {
        i = this.c.size();
        if ((i == this.e) && (i > 0))
          c(0);
        if (i < this.e)
        {
          this.c.add(paramer);
          i = 1;
          if (i == 0)
          {
            c(paramer);
            j = 1;
          }
        }
      }
    while (true)
    {
      this.h.e.d(paramer);
      if ((i == 0) && (j == 0) && (bool))
        paramer.k = null;
      return;
      continue;
      i = 0;
      break;
      i = 0;
    }
  }

  public final void a(View paramView)
  {
    er localer = RecyclerView.b(paramView);
    if (localer.n())
      this.h.removeDetachedView(paramView, false);
    if (localer.e())
      localer.f();
    while (true)
    {
      a(localer);
      return;
      if (localer.g())
        localer.h();
    }
  }

  public final View b(int paramInt)
  {
    boolean bool2 = true;
    if ((paramInt < 0) || (paramInt >= this.h.p.a()))
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + this.h.p.a());
    Object localObject2;
    int i;
    if (this.h.p.g)
    {
      localObject2 = d(paramInt);
      if (localObject2 != null)
        i = 1;
    }
    for (int j = i; ; j = 0)
    {
      Object localObject1 = localObject2;
      i = j;
      boolean bool1;
      if (localObject2 == null)
      {
        localObject2 = e(paramInt);
        localObject1 = localObject2;
        i = j;
        if (localObject2 != null)
        {
          if (!((er)localObject2).m())
            break label295;
          bool1 = this.h.p.g;
          label153: if (bool1)
            break label453;
          ((er)localObject2).b(4);
          if (!((er)localObject2).e())
            break label437;
          this.h.removeDetachedView(((er)localObject2).a, false);
          ((er)localObject2).f();
          label190: a((er)localObject2);
          localObject1 = null;
          i = j;
        }
      }
      while (true)
        if (localObject1 == null)
        {
          j = this.h.c.b(paramInt);
          if ((j < 0) || (j >= RecyclerView.h(this.h).b()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + this.h.p.a());
            i = 0;
            break;
            label295: if ((((er)localObject2).b < 0) || (((er)localObject2).b >= RecyclerView.h(this.h).b()))
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
            if (!this.h.p.g)
            {
              RecyclerView.h(this.h);
              i = ((er)localObject2).b;
              if (((er)localObject2).e != 0)
              {
                bool1 = false;
                break label153;
              }
            }
            if ((RecyclerView.h(this.h).b) && (((er)localObject2).d != RecyclerView.h(this.h).a(((er)localObject2).b)))
            {
              bool1 = false;
              break label153;
            }
            bool1 = true;
            break label153;
            label437: if (!((er)localObject2).g())
              break label190;
            ((er)localObject2).h();
            break label190;
            label453: i = 1;
            localObject1 = localObject2;
            continue;
          }
          RecyclerView.h(this.h);
          if (RecyclerView.h(this.h).b)
          {
            localObject2 = a(RecyclerView.h(this.h).a(j));
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              ((er)localObject2).b = j;
              i = 1;
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (this.g != null)
                {
                  View localView = this.g.a();
                  localObject1 = localObject2;
                  if (localView != null)
                  {
                    localObject2 = this.h.a(localView);
                    if (localObject2 == null)
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    localObject1 = localObject2;
                    if (((er)localObject2).b())
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject2 = (ArrayList)c().a.get(0);
                if ((localObject2 != null) && (!((ArrayList)localObject2).isEmpty()))
                {
                  j = ((ArrayList)localObject2).size() - 1;
                  localObject1 = (er)((ArrayList)localObject2).get(j);
                  ((ArrayList)localObject2).remove(j);
                  if (localObject1 != null)
                  {
                    ((er)localObject1).q();
                    if ((RecyclerView.i()) && ((((er)localObject1).a instanceof ViewGroup)))
                      a((ViewGroup)((er)localObject1).a, false);
                  }
                  localObject2 = localObject1;
                }
              }
              else
              {
                if (localObject2 != null)
                  break label1220;
                localObject1 = RecyclerView.h(this.h);
                localObject2 = this.h;
                e.a("RV CreateView");
                localObject1 = ((dt)localObject1).a((ViewGroup)localObject2);
                ((er)localObject1).e = 0;
                e.a();
              }
            }
          }
        }
      while (true)
      {
        if ((i != 0) && (!this.h.p.g) && (((er)localObject1).a(8192)))
        {
          ((er)localObject1).a(0, 8192);
          if (this.h.p.h)
          {
            dx.d((er)localObject1);
            localObject2 = this.h.n;
            localObject2 = this.h.p;
            ((er)localObject1).p();
            localObject2 = new dz().a((er)localObject1);
            RecyclerView.a(this.h, (er)localObject1, (dz)localObject2);
          }
        }
        if ((this.h.p.g) && (((er)localObject1).l()))
        {
          ((er)localObject1).f = paramInt;
          paramInt = 0;
        }
        while (true)
        {
          label891: localObject2 = ((er)localObject1).a.getLayoutParams();
          if (localObject2 == null)
          {
            localObject2 = (ee)this.h.generateDefaultLayoutParams();
            ((er)localObject1).a.setLayoutParams((ViewGroup.LayoutParams)localObject2);
            label928: ((ee)localObject2).c = ((er)localObject1);
            if ((i == 0) || (paramInt == 0))
              break label1209;
          }
          label1209: for (bool1 = bool2; ; bool1 = false)
          {
            ((ee)localObject2).f = bool1;
            return ((er)localObject1).a;
            localObject1 = null;
            break;
            if ((((er)localObject1).l()) && (!((er)localObject1).k()) && (!((er)localObject1).j()))
              break label1215;
            j = this.h.c.b(paramInt);
            ((er)localObject1).k = this.h;
            localObject2 = RecyclerView.h(this.h);
            ((er)localObject1).b = j;
            if (((dt)localObject2).b)
              ((er)localObject1).d = ((dt)localObject2).a(j);
            ((er)localObject1).a(1, 519);
            e.a("RV OnBindView");
            ((er)localObject1).p();
            ((dt)localObject2).a((er)localObject1, j);
            ((er)localObject1).o();
            e.a();
            localObject2 = ((er)localObject1).a;
            if (this.h.f())
            {
              if (bl.e((View)localObject2) == 0)
                bl.c((View)localObject2, 1);
              if (!bl.b((View)localObject2))
                bl.a((View)localObject2, RecyclerView.t(this.h).c);
            }
            if (this.h.p.g)
              ((er)localObject1).f = paramInt;
            paramInt = 1;
            break label891;
            if (!this.h.checkLayoutParams((ViewGroup.LayoutParams)localObject2))
            {
              localObject2 = (ee)this.h.generateLayoutParams((ViewGroup.LayoutParams)localObject2);
              ((er)localObject1).a.setLayoutParams((ViewGroup.LayoutParams)localObject2);
              break label928;
            }
            localObject2 = (ee)localObject2;
            break label928;
          }
          label1215: paramInt = 0;
        }
        label1220: localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        break;
      }
      localObject2 = null;
    }
  }

  final void b()
  {
    int i = this.c.size() - 1;
    while (i >= 0)
    {
      c(i);
      i -= 1;
    }
    this.c.clear();
  }

  final void b(er paramer)
  {
    if (er.f(paramer))
      this.b.remove(paramer);
    while (true)
    {
      er.d(paramer);
      er.e(paramer);
      paramer.h();
      return;
      this.a.remove(paramer);
    }
  }

  final void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    er.d(paramView);
    er.e(paramView);
    paramView.h();
    a(paramView);
  }

  final eh c()
  {
    if (this.f == null)
      this.f = new eh();
    return this.f;
  }

  final void c(int paramInt)
  {
    c((er)this.c.get(paramInt));
    this.c.remove(paramInt);
  }

  final void c(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    if ((paramView.a(12)) || (!paramView.s()) || (RecyclerView.a(this.h, paramView)))
    {
      if ((paramView.j()) && (!paramView.m()) && (!RecyclerView.h(this.h).b))
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
      paramView.a(this, false);
      this.a.add(paramView);
      return;
    }
    if (this.b == null)
      this.b = new ArrayList();
    paramView.a(this, true);
    this.b.add(paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ei
 * JD-Core Version:    0.6.2
 */