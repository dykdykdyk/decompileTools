package com.amap.api.mapcore2d;

import android.content.Context;
import com.amap.api.maps2d.AMapException;
import java.util.ArrayList;
import java.util.List;

class cg extends j<cc, cc>
  implements co
{
  private Context d;
  private at e;
  private bk f;
  private as g = new as();

  public cg(bk parambk, Context paramContext, at paramat)
  {
    super(parambk, paramContext);
    this.e = paramat;
    this.d = paramContext;
    this.a = new cb();
    parambk.c.a(this);
    this.f = parambk;
    a();
  }

  private ArrayList<cc> a(ArrayList<cc> paramArrayList, at paramat, float paramFloat, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayList == null) || (paramat == null));
    int j;
    do
    {
      do
      {
        do
          return null;
        while ((!paramat.a()) || (paramat.p == null));
        paramat.p.clear();
      }
      while ((paramFloat > paramat.c) || (paramFloat < paramat.d));
      j = paramArrayList.size();
    }
    while (j <= 0);
    int i = 0;
    while (i < j)
    {
      cc localcc = (cc)paramArrayList.get(i);
      if (localcc != null)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append(localcc.b);
        ((StringBuilder)localObject).append("-");
        ((StringBuilder)localObject).append(localcc.c);
        ((StringBuilder)localObject).append("-");
        ((StringBuilder)localObject).append(localcc.d);
        int k = paramat.n.a(((StringBuilder)localObject).toString());
        localObject = new cc(localcc.b, localcc.c, localcc.d, paramat.l);
        ((cc)localObject).g = k;
        ((cc)localObject).f = localcc.f;
        paramat.p.add(localObject);
        if ((a((cc)localObject)) && (!paramBoolean) && (!this.g.contains(localObject)))
        {
          if (!paramat.f)
            ((cc)localObject).a = -1;
          localArrayList.add(localObject);
        }
      }
      i += 1;
    }
    return localArrayList;
  }

  private void a(ArrayList<cc> paramArrayList, boolean paramBoolean)
  {
    if ((this.a == null) || (paramArrayList == null));
    while (paramArrayList.size() == 0)
      return;
    this.a.a(paramArrayList, paramBoolean);
  }

  private boolean a(cc paramcc)
  {
    return (paramcc == null) || (paramcc.g < 0);
  }

  private void c(ArrayList<cc> paramArrayList)
  {
    if ((paramArrayList == null) || (this.g == null));
    while (true)
    {
      return;
      int j = paramArrayList.size();
      if (j != 0)
      {
        int i = 0;
        while (i < j)
        {
          this.g.a((cc)paramArrayList.get(i));
          i += 1;
        }
      }
    }
  }

  private boolean j()
  {
    if ((this.b == null) || (this.b.e == null));
    while ((this.b.e.a == null) || (this.b.e.a.size() <= 0))
      return false;
    return this.e.a();
  }

  protected ArrayList<cc> a(ArrayList<cc> paramArrayList)
    throws AMapException
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    do
    {
      do
        return null;
      while ((this.b == null) || (this.b.e == null) || (this.b.e.a == null));
      a(paramArrayList);
    }
    while (paramArrayList.size() == 0);
    ArrayList localArrayList;
    if ((this.e.j != null) || (this.e.k != null))
    {
      ch localch = new ch(this.d, paramArrayList, this.e.k);
      localch.a(this.e);
      localArrayList = (ArrayList)localch.a();
      localch.a(null);
    }
    while (true)
    {
      c(paramArrayList);
      if ((this.b == null) || (this.b.e == null))
        return localArrayList;
      this.b.e.b();
      return localArrayList;
      localArrayList = null;
    }
  }

  public void a(List<cc> paramList)
  {
    if (paramList == null);
    int i;
    do
    {
      return;
      i = paramList.size();
    }
    while (i == 0);
    int j = 0;
    label18: if (j < i)
    {
      if (this.g.b((cc)paramList.get(j)))
        break label66;
      paramList.remove(j);
      j -= 1;
      i -= 1;
    }
    label66: 
    while (true)
    {
      j += 1;
      break label18;
      break;
    }
  }

  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!j());
    ArrayList localArrayList1;
    do
    {
      return;
      localArrayList1 = this.b.i.a(this.b.i.l, this.b.i.b(), this.b.c.c(), this.b.c.d());
    }
    while ((localArrayList1 == null) || (localArrayList1.size() <= 0));
    ArrayList localArrayList2 = a(localArrayList1, this.e, this.b.c.e(), paramBoolean2);
    if (localArrayList2 != null)
    {
      a(localArrayList2, true);
      localArrayList2.clear();
    }
    localArrayList1.clear();
    this.b.c.g().invalidate();
  }

  protected ArrayList<cc> b(ArrayList<cc> paramArrayList)
  {
    if (paramArrayList == null)
      localObject = null;
    int j;
    int i;
    ArrayList localArrayList;
    do
    {
      return localObject;
      j = paramArrayList.size();
      if (j == 0)
        return null;
      i = 0;
      localArrayList = null;
      localObject = localArrayList;
    }
    while (i >= j);
    Object localObject = (cc)paramArrayList.get(i);
    int m = i;
    int k = j;
    if (localObject != null)
    {
      if ((this.b == null) || (this.b.e == null) || (this.b.e.a == null))
        return null;
      this.b.e.a.size();
      m = i;
      k = j;
      if (this.e.f)
      {
        int n = this.e.o.a((cc)localObject);
        if (n >= 0)
        {
          paramArrayList.remove(i);
          j -= 1;
          i -= 1;
          bx localbx = this.e.p;
          m = i;
          k = j;
          if (localbx == null)
            break label326;
          m = localbx.size();
          k = 0;
          label181: if (k < m)
          {
            cc localcc = (cc)localbx.get(k);
            if ((localcc != null) && (localcc.equals(localObject)))
            {
              localcc.g = n;
              this.b.e.b();
              k = i;
              i = j;
              j = k;
            }
          }
        }
      }
    }
    while (true)
    {
      k = j + 1;
      j = i;
      i = k;
      break;
      k += 1;
      break label181;
      k = j;
      j = i;
      i = k;
      continue;
      if (localArrayList == null)
        localArrayList = new ArrayList();
      while (true)
      {
        localObject = new cc((cc)localObject);
        ((cc)localObject).a = -1;
        localArrayList.add(localObject);
        k = j;
        j = i;
        i = k;
        break;
      }
      label326: j = m;
      i = k;
    }
  }

  public void b()
  {
    super.b();
    this.g.clear();
    if ((this.f != null) && (this.f.c != null))
      this.f.c.b(this);
  }

  protected int f()
  {
    return 4;
  }

  protected int g()
  {
    return 1;
  }

  public void i()
  {
    a(false, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cg
 * JD-Core Version:    0.6.2
 */