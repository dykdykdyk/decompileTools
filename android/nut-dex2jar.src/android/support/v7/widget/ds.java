package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

final class ds
  implements ag
{
  ds(RecyclerView paramRecyclerView)
  {
  }

  private void c(ah paramah)
  {
    switch (paramah.a)
    {
    case 3:
    case 5:
    case 6:
    case 7:
    default:
      return;
    case 1:
      this.a.f.a(paramah.b, paramah.d);
      return;
    case 2:
      this.a.f.b(paramah.b, paramah.d);
      return;
    case 4:
      this.a.f.c(paramah.b, paramah.d);
      return;
    case 8:
    }
    this.a.f.d(paramah.b, paramah.d);
  }

  public final er a(int paramInt)
  {
    RecyclerView localRecyclerView = this.a;
    int j = localRecyclerView.d.b();
    int i = 0;
    er localer;
    if (i < j)
    {
      localer = RecyclerView.b(localRecyclerView.d.c(i));
      if ((localer != null) && (!localer.m()) && (localer.b == paramInt))
        label58: if (localer != null)
          break label78;
    }
    label78: 
    while (this.a.d.d(localer.a))
    {
      return null;
      i += 1;
      break;
      localer = null;
      break label58;
    }
    return localer;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, true);
    this.a.q = true;
    eo localeo = this.a.p;
    localeo.e += paramInt2;
  }

  public final void a(int paramInt1, int paramInt2, Object paramObject)
  {
    Object localObject = this.a;
    int j = ((RecyclerView)localObject).d.b();
    int i = 0;
    while (i < j)
    {
      View localView = ((RecyclerView)localObject).d.c(i);
      er localer = RecyclerView.b(localView);
      if ((localer != null) && (!localer.b()) && (localer.b >= paramInt1) && (localer.b < paramInt1 + paramInt2))
      {
        localer.b(2);
        localer.a(paramObject);
        ((ee)localView.getLayoutParams()).e = true;
      }
      i += 1;
    }
    paramObject = ((RecyclerView)localObject).b;
    i = paramObject.c.size() - 1;
    while (i >= 0)
    {
      localObject = (er)paramObject.c.get(i);
      if (localObject != null)
      {
        j = ((er)localObject).c();
        if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
        {
          ((er)localObject).b(2);
          paramObject.c(i);
        }
      }
      i -= 1;
    }
    this.a.r = true;
  }

  public final void a(ah paramah)
  {
    c(paramah);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, false);
    this.a.q = true;
  }

  public final void b(ah paramah)
  {
    c(paramah);
  }

  public final void c(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = this.a;
    int j = localRecyclerView.d.b();
    int i = 0;
    while (i < j)
    {
      localObject = RecyclerView.b(localRecyclerView.d.c(i));
      if ((localObject != null) && (!((er)localObject).b()) && (((er)localObject).b >= paramInt1))
      {
        ((er)localObject).a(paramInt2, false);
        localRecyclerView.p.f = true;
      }
      i += 1;
    }
    Object localObject = localRecyclerView.b;
    j = ((ei)localObject).c.size();
    i = 0;
    while (i < j)
    {
      er localer = (er)((ei)localObject).c.get(i);
      if ((localer != null) && (localer.b >= paramInt1))
        localer.a(paramInt2, true);
      i += 1;
    }
    localRecyclerView.requestLayout();
    this.a.q = true;
  }

  public final void d(int paramInt1, int paramInt2)
  {
    int n = -1;
    RecyclerView localRecyclerView = this.a;
    int i1 = localRecyclerView.d.b();
    int i;
    int j;
    int k;
    int m;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      m = 0;
      label35: if (m >= i1)
        break label139;
      localObject = RecyclerView.b(localRecyclerView.d.c(m));
      if ((localObject != null) && (((er)localObject).b >= k) && (((er)localObject).b <= j))
      {
        if (((er)localObject).b != paramInt1)
          break label129;
        ((er)localObject).a(paramInt2 - paramInt1, false);
      }
    }
    while (true)
    {
      localRecyclerView.p.f = true;
      m += 1;
      break label35;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label129: ((er)localObject).a(i, false);
    }
    label139: Object localObject = localRecyclerView.b;
    label173: er localer;
    if (paramInt1 < paramInt2)
    {
      j = paramInt2;
      k = paramInt1;
      i = n;
      n = ((ei)localObject).c.size();
      m = 0;
      if (m >= n)
        break label268;
      localer = (er)((ei)localObject).c.get(m);
      if ((localer != null) && (localer.b >= k) && (localer.b <= j))
      {
        if (localer.b != paramInt1)
          break label258;
        localer.a(paramInt2 - paramInt1, false);
      }
    }
    while (true)
    {
      m += 1;
      break label173;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label258: localer.a(i, false);
    }
    label268: localRecyclerView.requestLayout();
    this.a.q = true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ds
 * JD-Core Version:    0.6.2
 */