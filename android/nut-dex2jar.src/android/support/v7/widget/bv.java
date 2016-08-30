package android.support.v7.widget;

import android.support.v4.a.a;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bv extends fg
{
  ArrayList<ArrayList<er>> a = new ArrayList();
  ArrayList<ArrayList<cf>> b = new ArrayList();
  ArrayList<ArrayList<ce>> c = new ArrayList();
  ArrayList<er> d = new ArrayList();
  ArrayList<er> e = new ArrayList();
  ArrayList<er> f = new ArrayList();
  ArrayList<er> g = new ArrayList();
  private ArrayList<er> n = new ArrayList();
  private ArrayList<er> o = new ArrayList();
  private ArrayList<cf> p = new ArrayList();
  private ArrayList<ce> q = new ArrayList();

  private void a(ce paramce)
  {
    if (paramce.a != null)
      a(paramce, paramce.a);
    if (paramce.b != null)
      a(paramce, paramce.b);
  }

  private static void a(List<er> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      bl.o(((er)paramList.get(i)).a).a();
      i -= 1;
    }
  }

  private void a(List<ce> paramList, er paramer)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ce localce = (ce)paramList.get(i);
      if ((a(localce, paramer)) && (localce.a == null) && (localce.b == null))
        paramList.remove(localce);
      i -= 1;
    }
  }

  private boolean a(ce paramce, er paramer)
  {
    if (paramce.b == paramer)
      paramce.b = null;
    while (true)
    {
      bl.c(paramer.a, 1.0F);
      bl.a(paramer.a, 0.0F);
      bl.b(paramer.a, 0.0F);
      e(paramer);
      return true;
      if (paramce.a != paramer)
        break;
      paramce.a = null;
    }
    return false;
  }

  private void g(er paramer)
  {
    a.a(paramer.a);
    c(paramer);
  }

  public final void a()
  {
    int i;
    int j;
    label24: int k;
    if (!this.n.isEmpty())
    {
      i = 1;
      if (this.p.isEmpty())
        break label72;
      j = 1;
      if (this.q.isEmpty())
        break label77;
      k = 1;
      label36: if (this.o.isEmpty())
        break label82;
    }
    label72: label77: label82: for (int m = 1; ; m = 0)
    {
      if ((i != 0) || (j != 0) || (m != 0) || (k != 0))
        break label88;
      return;
      i = 0;
      break;
      j = 0;
      break label24;
      k = 0;
      break label36;
    }
    label88: Object localObject1 = this.n.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (er)((Iterator)localObject1).next();
      dd localdd = bl.o(((er)localObject2).a);
      this.f.add(localObject2);
      localdd.a(this.j).a(0.0F).a(new bz(this, (er)localObject2, localdd)).b();
    }
    this.n.clear();
    label260: label340: long l1;
    label415: long l2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.p);
      this.b.add(localObject1);
      this.p.clear();
      localObject2 = new bw(this, (ArrayList)localObject1);
      if (i != 0)
        bl.a(((cf)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, this.j);
    }
    else
    {
      if (k != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(this.q);
        this.c.add(localObject1);
        this.q.clear();
        localObject2 = new bx(this, (ArrayList)localObject1);
        if (i == 0)
          break label477;
        bl.a(((ce)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, this.j);
      }
      if (m == 0)
        break label485;
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.o);
      this.a.add(localObject1);
      this.o.clear();
      localObject2 = new by(this, (ArrayList)localObject1);
      if ((i == 0) && (j == 0) && (k == 0))
        break label505;
      if (i == 0)
        break label487;
      l1 = this.j;
      if (j == 0)
        break label493;
      l2 = this.k;
      label425: if (k == 0)
        break label499;
    }
    label477: label485: label487: label493: label499: for (long l3 = this.l; ; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      bl.a(((er)((ArrayList)localObject1).get(0)).a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label260;
      ((Runnable)localObject2).run();
      break label340;
      break;
      l1 = 0L;
      break label415;
      l2 = 0L;
      break label425;
    }
    label505: ((Runnable)localObject2).run();
  }

  public final boolean a(er paramer)
  {
    g(paramer);
    this.n.add(paramer);
    return true;
  }

  public final boolean a(er paramer, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramer.a;
    paramInt1 = (int)(paramInt1 + bl.k(paramer.a));
    paramInt2 = (int)(paramInt2 + bl.l(paramer.a));
    g(paramer);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      e(paramer);
      return false;
    }
    if (i != 0)
      bl.a(localView, -i);
    if (j != 0)
      bl.b(localView, -j);
    this.p.add(new cf(paramer, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }

  public final boolean a(er paramer1, er paramer2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramer1 == paramer2)
      return a(paramer1, paramInt1, paramInt2, paramInt3, paramInt4);
    float f1 = bl.k(paramer1.a);
    float f2 = bl.l(paramer1.a);
    float f3 = bl.f(paramer1.a);
    g(paramer1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    bl.a(paramer1.a, f1);
    bl.b(paramer1.a, f2);
    bl.c(paramer1.a, f3);
    if (paramer2 != null)
    {
      g(paramer2);
      bl.a(paramer2.a, -i);
      bl.b(paramer2.a, -j);
      bl.c(paramer2.a, 0.0F);
    }
    this.q.add(new ce(paramer1, paramer2, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }

  public final boolean a(er paramer, List<Object> paramList)
  {
    return (!paramList.isEmpty()) || (super.a(paramer, paramList));
  }

  public final boolean b()
  {
    return (!this.o.isEmpty()) || (!this.q.isEmpty()) || (!this.p.isEmpty()) || (!this.n.isEmpty()) || (!this.e.isEmpty()) || (!this.f.isEmpty()) || (!this.d.isEmpty()) || (!this.g.isEmpty()) || (!this.b.isEmpty()) || (!this.a.isEmpty()) || (!this.c.isEmpty());
  }

  public final boolean b(er paramer)
  {
    g(paramer);
    bl.c(paramer.a, 0.0F);
    this.o.add(paramer);
    return true;
  }

  final void c()
  {
    if (!b())
      e();
  }

  public final void c(er paramer)
  {
    View localView = paramer.a;
    bl.o(localView).a();
    int i = this.p.size() - 1;
    while (i >= 0)
    {
      if (((cf)this.p.get(i)).a == paramer)
      {
        bl.b(localView, 0.0F);
        bl.a(localView, 0.0F);
        e(paramer);
        this.p.remove(i);
      }
      i -= 1;
    }
    a(this.q, paramer);
    if (this.n.remove(paramer))
    {
      bl.c(localView, 1.0F);
      e(paramer);
    }
    if (this.o.remove(paramer))
    {
      bl.c(localView, 1.0F);
      e(paramer);
    }
    i = this.c.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.c.get(i);
      a(localArrayList, paramer);
      if (localArrayList.isEmpty())
        this.c.remove(i);
      i -= 1;
    }
    i = this.b.size() - 1;
    if (i >= 0)
    {
      localArrayList = (ArrayList)this.b.get(i);
      int j = localArrayList.size() - 1;
      while (true)
      {
        if (j >= 0)
        {
          if (((cf)localArrayList.get(j)).a != paramer)
            break label293;
          bl.b(localView, 0.0F);
          bl.a(localView, 0.0F);
          e(paramer);
          localArrayList.remove(j);
          if (localArrayList.isEmpty())
            this.b.remove(i);
        }
        i -= 1;
        break;
        label293: j -= 1;
      }
    }
    i = this.a.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.a.get(i);
      if (localArrayList.remove(paramer))
      {
        bl.c(localView, 1.0F);
        e(paramer);
        if (localArrayList.isEmpty())
          this.a.remove(i);
      }
      i -= 1;
    }
    this.f.remove(paramer);
    this.d.remove(paramer);
    this.g.remove(paramer);
    this.e.remove(paramer);
    c();
  }

  public final void d()
  {
    int i = this.p.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (cf)this.p.get(i);
      localObject2 = ((cf)localObject1).a.a;
      bl.b((View)localObject2, 0.0F);
      bl.a((View)localObject2, 0.0F);
      e(((cf)localObject1).a);
      this.p.remove(i);
      i -= 1;
    }
    i = this.n.size() - 1;
    while (i >= 0)
    {
      e((er)this.n.get(i));
      this.n.remove(i);
      i -= 1;
    }
    i = this.o.size() - 1;
    while (i >= 0)
    {
      localObject1 = (er)this.o.get(i);
      bl.c(((er)localObject1).a, 1.0F);
      e((er)localObject1);
      this.o.remove(i);
      i -= 1;
    }
    i = this.q.size() - 1;
    while (i >= 0)
    {
      a((ce)this.q.get(i));
      i -= 1;
    }
    this.q.clear();
    if (!b())
      return;
    i = this.b.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.b.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (cf)((ArrayList)localObject1).get(j);
        View localView = ((cf)localObject2).a.a;
        bl.b(localView, 0.0F);
        bl.a(localView, 0.0F);
        e(((cf)localObject2).a);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty())
          this.b.remove(localObject1);
        j -= 1;
      }
      i -= 1;
    }
    i = this.a.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.a.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (er)((ArrayList)localObject1).get(j);
        bl.c(((er)localObject2).a, 1.0F);
        e((er)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty())
          this.a.remove(localObject1);
        j -= 1;
      }
      i -= 1;
    }
    i = this.c.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.c.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        a((ce)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty())
          this.c.remove(localObject1);
        j -= 1;
      }
      i -= 1;
    }
    a(this.f);
    a(this.e);
    a(this.d);
    a(this.g);
    e();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bv
 * JD-Core Version:    0.6.2
 */