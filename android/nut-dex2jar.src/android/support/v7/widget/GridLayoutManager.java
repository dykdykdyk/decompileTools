package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.a.f;
import android.support.v4.view.a.q;
import android.support.v4.view.bl;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager
{
  boolean a = false;
  int b = -1;
  int[] c;
  View[] d;
  final SparseIntArray e = new SparseIntArray();
  final SparseIntArray f = new SparseIntArray();
  cm g = new ck();
  final Rect h = new Rect();

  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    j(paramInt);
  }

  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    j(paramInt1);
  }

  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    j(a(paramContext, paramAttributeSet, paramInt1, paramInt2).b);
  }

  private int a(ei paramei, eo parameo, int paramInt)
  {
    if (!parameo.g)
      return cm.c(paramInt, this.b);
    int i = paramei.a(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    }
    return cm.c(i, this.b);
  }

  private void a(ei paramei, eo parameo, int paramInt, boolean paramBoolean)
  {
    int j;
    int i;
    int k;
    int m;
    label47: cl localcl;
    if (paramBoolean)
    {
      j = 1;
      i = 0;
      k = paramInt;
      paramInt = i;
      if ((this.i != 1) || (!g()))
        break label153;
      i = this.b;
      m = -1;
      i -= 1;
      if (paramInt == k)
        return;
      View localView = this.d[paramInt];
      localcl = (cl)localView.getLayoutParams();
      cl.a(localcl, c(paramei, parameo, a(localView)));
      if ((m != -1) || (cl.b(localcl) <= 1))
        break label162;
      cl.b(localcl, i - (cl.b(localcl) - 1));
    }
    while (true)
    {
      i += cl.b(localcl) * m;
      paramInt += j;
      break label47;
      paramInt -= 1;
      j = -1;
      k = -1;
      break;
      label153: m = 1;
      i = 0;
      break label47;
      label162: cl.b(localcl, i);
    }
  }

  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramView, this.h);
    ee localee = (ee)paramView.getLayoutParams();
    int i;
    if (!paramBoolean1)
    {
      i = paramInt1;
      if (this.i != 1);
    }
    else
    {
      i = c(paramInt1, localee.leftMargin + this.h.left, localee.rightMargin + this.h.right);
    }
    if (!paramBoolean1)
    {
      paramInt1 = paramInt2;
      if (this.i != 0);
    }
    else
    {
      paramInt1 = c(paramInt2, localee.topMargin + this.h.top, localee.bottomMargin + this.h.bottom);
    }
    if (paramBoolean2)
      if ((!this.w) || (!ec.b(paramView.getMeasuredWidth(), i, localee.width)) || (!ec.b(paramView.getMeasuredHeight(), paramInt1, localee.height)))
        paramBoolean1 = true;
    while (true)
    {
      if (paramBoolean1)
        paramView.measure(i, paramInt1);
      return;
      paramBoolean1 = false;
      continue;
      paramBoolean1 = a(paramView, i, paramInt1, localee);
    }
  }

  private int b(ei paramei, eo parameo, int paramInt)
  {
    if (!parameo.g)
      i = this.g.b(paramInt, this.b);
    int j;
    do
    {
      return i;
      j = this.f.get(paramInt, -1);
      i = j;
    }
    while (j != -1);
    int i = paramei.a(paramInt);
    if (i == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 0;
    }
    return this.g.b(i, this.b);
  }

  private static int c(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0));
    int i;
    do
    {
      return paramInt1;
      i = View.MeasureSpec.getMode(paramInt1);
    }
    while ((i != -2147483648) && (i != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i);
  }

  private int c(ei paramei, eo parameo, int paramInt)
  {
    if (!parameo.g);
    do
    {
      return 1;
      int i = this.e.get(paramInt, -1);
      if (i != -1)
        return i;
    }
    while (paramei.a(paramInt) != -1);
    Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
    return 1;
  }

  private void i(int paramInt)
  {
    int k = 0;
    int[] arrayOfInt2 = this.c;
    int n = this.b;
    int[] arrayOfInt1;
    if ((arrayOfInt2 != null) && (arrayOfInt2.length == n + 1))
    {
      arrayOfInt1 = arrayOfInt2;
      if (arrayOfInt2[(arrayOfInt2.length - 1)] == paramInt);
    }
    else
    {
      arrayOfInt1 = new int[n + 1];
    }
    arrayOfInt1[0] = 0;
    int m = paramInt / n;
    int i1 = paramInt % n;
    int i = 1;
    int j = 0;
    paramInt = k;
    if (i <= n)
    {
      paramInt += i1;
      if ((paramInt <= 0) || (n - paramInt >= i1))
        break label137;
      k = m + 1;
      paramInt -= n;
    }
    while (true)
    {
      j += k;
      arrayOfInt1[i] = j;
      i += 1;
      break;
      this.c = arrayOfInt1;
      return;
      label137: k = m;
    }
  }

  private void j(int paramInt)
  {
    if (paramInt == this.b)
      return;
    this.a = true;
    if (paramInt <= 0)
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    this.b = paramInt;
    this.g.a.clear();
  }

  private void r()
  {
    if (this.i == 1);
    for (int i = this.z - o() - m(); ; i = this.A - p() - n())
    {
      i(i);
      return;
    }
  }

  private void s()
  {
    if ((this.d == null) || (this.d.length != this.b))
      this.d = new View[this.b];
  }

  public final int a(int paramInt, ei paramei, eo parameo)
  {
    r();
    s();
    return super.a(paramInt, paramei, parameo);
  }

  public final int a(ei paramei, eo parameo)
  {
    if (this.i == 0)
      return this.b;
    if (parameo.a() <= 0)
      return 0;
    return a(paramei, parameo, parameo.a() - 1) + 1;
  }

  public final ee a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new cl(paramContext, paramAttributeSet);
  }

  public final ee a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new cl((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new cl(paramLayoutParams);
  }

  final View a(ei paramei, eo parameo, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    h();
    int j = this.j.b();
    int k = this.j.c();
    int i;
    Object localObject2;
    label37: View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2)
        break label164;
      localView = e(paramInt1);
      int m = a(localView);
      if ((m < 0) || (m >= paramInt3) || (b(paramei, parameo, m) != 0))
        break label179;
      if (!((ee)localView.getLayoutParams()).c.m())
        break label120;
      if (localObject2 != null)
        break label179;
      localObject2 = localView;
    }
    label164: label176: label179: 
    while (true)
    {
      paramInt1 += i;
      break label37;
      i = -1;
      break;
      label120: Object localObject3;
      if (this.j.a(localView) < k)
      {
        localObject3 = localView;
        if (this.j.b(localView) >= j);
      }
      else
      {
        if (localObject1 != null)
          break label179;
        localObject1 = localView;
        continue;
        if (localObject1 == null)
          break label176;
        localObject3 = localObject1;
      }
      return localObject3;
      return localObject2;
    }
  }

  public final View a(View paramView, int paramInt, ei paramei, eo parameo)
  {
    View localView = b(paramView);
    if (localView == null)
      paramei = null;
    cl localcl;
    int i4;
    int i5;
    int i8;
    label83: int m;
    int k;
    label100: int n;
    label118: int i;
    int j;
    int i1;
    label129: int i6;
    int i7;
    do
    {
      return paramei;
      localcl = (cl)localView.getLayoutParams();
      i4 = cl.a(localcl);
      i5 = cl.a(localcl) + cl.b(localcl);
      if (super.a(paramView, paramInt, paramei, parameo) == null)
        return null;
      if (d(paramInt) != 1)
        break label258;
      i8 = 1;
      if (i8 == this.l)
        break label264;
      paramInt = 1;
      if (paramInt == 0)
        break label269;
      paramInt = l() - 1;
      m = -1;
      k = -1;
      if ((this.i != 1) || (!g()))
        break label283;
      n = 1;
      paramView = null;
      i = -1;
      j = 0;
      i1 = paramInt;
      if (i1 == k)
        break label361;
      parameo = e(i1);
      if (parameo == localView)
        break label361;
      if (!parameo.isFocusable())
        break label363;
      localcl = (cl)parameo.getLayoutParams();
      i6 = cl.a(localcl);
      i7 = cl.a(localcl) + cl.b(localcl);
      if (i6 != i4)
        break;
      paramei = parameo;
    }
    while (i7 == i5);
    int i3 = 0;
    if (paramView == null)
    {
      paramInt = 1;
      label215: if (paramInt == 0)
        break label363;
      i = cl.a(localcl);
      paramInt = Math.min(i7, i5) - Math.max(i6, i4);
      paramView = parameo;
    }
    while (true)
    {
      i1 += m;
      j = paramInt;
      break label129;
      label258: i8 = 0;
      break;
      label264: paramInt = 0;
      break label83;
      label269: k = l();
      paramInt = 0;
      m = 1;
      break label100;
      label283: n = 0;
      break label118;
      paramInt = Math.max(i6, i4);
      int i2 = Math.min(i7, i5) - paramInt;
      if (i2 > j)
      {
        paramInt = 1;
        break label215;
      }
      paramInt = i3;
      if (i2 != j)
        break label215;
      if (i6 > i);
      for (i2 = 1; ; i2 = 0)
      {
        paramInt = i3;
        if (n != i2)
          break;
        paramInt = 1;
        break;
      }
      label361: return paramView;
      label363: paramInt = j;
    }
  }

  public final void a()
  {
    this.g.a.clear();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.g.a.clear();
  }

  public final void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (this.c == null)
      super.a(paramRect, paramInt1, paramInt2);
    int i = m();
    int j = o() + i;
    int k = n() + p();
    if (this.i == 1)
    {
      i = a(paramInt2, k + paramRect.height(), bl.n(this.r));
      paramInt2 = a(paramInt1, j + this.c[(this.c.length - 1)], bl.m(this.r));
      paramInt1 = i;
    }
    while (true)
    {
      h(paramInt2, paramInt1);
      return;
      i = a(paramInt1, j + paramRect.width(), bl.m(this.r));
      paramInt1 = a(paramInt2, k + this.c[(this.c.length - 1)], bl.n(this.r));
      paramInt2 = i;
    }
  }

  final void a(ei paramei, eo parameo, cq paramcq, int paramInt)
  {
    int i = 1;
    super.a(paramei, parameo, paramcq, paramInt);
    r();
    if ((parameo.a() > 0) && (!parameo.g))
    {
      if (paramInt == 1);
      for (paramInt = i; ; paramInt = 0)
      {
        i = b(paramei, parameo, paramcq.a);
        if (paramInt == 0)
          break;
        while ((i > 0) && (paramcq.a > 0))
        {
          paramcq.a -= 1;
          i = b(paramei, parameo, paramcq.a);
        }
      }
      int k = parameo.a();
      paramInt = paramcq.a;
      while (paramInt < k - 1)
      {
        int j = b(paramei, parameo, paramInt + 1);
        if (j <= i)
          break;
        paramInt += 1;
        i = j;
      }
      paramcq.a = paramInt;
    }
    s();
  }

  final void a(ei paramei, eo parameo, cs paramcs, cr paramcr)
  {
    int i2 = this.j.h();
    int j;
    int k;
    label37: boolean bool1;
    label57: int i;
    int n;
    if (i2 != 1073741824)
    {
      j = 1;
      if (l() <= 0)
        break label203;
      k = this.c[this.b];
      if (j != 0)
        r();
      if (paramcs.e != 1)
        break label209;
      bool1 = true;
      i = this.b;
      if (bool1)
        break label1408;
      i = b(paramei, parameo, paramcs.d) + c(paramei, parameo, paramcs.d);
      n = 0;
    }
    while (true)
    {
      label203: label209: label370: label1399: if ((n < this.b) && (paramcs.a(parameo)) && (i > 0))
      {
        int m = paramcs.d;
        int i1 = c(paramei, parameo, m);
        if (i1 > this.b)
        {
          throw new IllegalArgumentException("Item at position " + m + " requires " + i1 + " spans but GridLayoutManager has only " + this.b + " spans.");
          j = 0;
          break;
          k = 0;
          break label37;
          bool1 = false;
          break label57;
        }
        i -= i1;
        float f1;
        int i3;
        int i4;
        int i5;
        boolean bool2;
        label760: label1405: if (i >= 0)
        {
          View localView = paramcs.a(paramei);
          if (localView != null)
          {
            this.d[n] = localView;
            n += 1;
            continue;
          }
        }
      }
      if (n == 0)
      {
        paramcr.b = true;
        return;
      }
      i = 0;
      f1 = 0.0F;
      a(paramei, parameo, n, bool1);
      m = 0;
      if (m < n)
      {
        paramei = this.d[m];
        if (paramcs.k == null)
          if (bool1)
          {
            super.a(paramei, -1, false);
            label322: parameo = (cl)paramei.getLayoutParams();
            i3 = this.c[(cl.a(parameo) + cl.b(parameo))];
            i4 = this.c[cl.a(parameo)];
            if (this.i != 0)
              break label558;
            i1 = parameo.height;
            i3 = a(i3 - i4, i2, 0, i1, false);
            i4 = this.j.e();
            i5 = this.j.g();
            if (this.i != 1)
              break label567;
            i1 = parameo.height;
            label418: i1 = a(i4, i5, 0, i1, true);
            if (this.i != 1)
              break label582;
            if (parameo.height != -1)
              break label576;
            bool2 = true;
            label450: a(paramei, i3, i1, bool2, false);
            i1 = this.j.c(paramei);
            if (i1 <= i)
              break label1405;
            i = i1;
          }
      }
      while (true)
      {
        float f2 = this.j.d(paramei) * 1.0F / cl.b(parameo);
        if (f2 > f1)
          f1 = f2;
        while (true)
        {
          m += 1;
          break;
          super.a(paramei, 0, false);
          break label322;
          if (bool1)
          {
            super.a(paramei, -1, true);
            break label322;
          }
          super.a(paramei, 0, true);
          break label322;
          label558: i1 = parameo.width;
          break label370;
          label567: i1 = parameo.width;
          break label418;
          label576: bool2 = false;
          break label450;
          label582: if (parameo.width == -1);
          for (bool2 = true; ; bool2 = false)
          {
            a(paramei, i1, i3, bool2, false);
            break;
          }
          if (j != 0)
          {
            i(Math.max(Math.round(this.b * f1), k));
            i = 0;
            k = 0;
            j = i;
            if (k >= n)
              break label858;
            paramei = this.d[k];
            parameo = (cl)paramei.getLayoutParams();
            m = this.c[(cl.a(parameo) + cl.b(parameo))];
            i1 = this.c[cl.a(parameo)];
            if (this.i == 0)
            {
              j = parameo.height;
              label712: m = a(m - i1, 1073741824, 0, j, false);
              i1 = this.j.e();
              i2 = this.j.g();
              if (this.i != 1)
                break label831;
              j = parameo.height;
              j = a(i1, i2, 0, j, true);
              if (this.i != 1)
                break label840;
              a(paramei, m, j, false, true);
              label792: j = this.j.c(paramei);
              if (j <= i)
                break label1399;
              i = j;
            }
          }
          while (true)
          {
            k += 1;
            break;
            j = parameo.width;
            break label712;
            label831: j = parameo.width;
            break label760;
            label840: a(paramei, j, m, false, true);
            break label792;
            j = i;
            label858: m = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
            i = 0;
            if (i < n)
            {
              paramei = this.d[i];
              if (this.j.c(paramei) != j)
              {
                parameo = (cl)paramei.getLayoutParams();
                i1 = this.c[(cl.a(parameo) + cl.b(parameo))];
                i2 = this.c[cl.a(parameo)];
                if (this.i != 0)
                  break label990;
                k = parameo.height;
                label946: k = a(i1 - i2, 1073741824, 0, k, false);
                if (this.i != 1)
                  break label999;
                a(paramei, k, m, true, true);
              }
              while (true)
              {
                i += 1;
                break;
                label990: k = parameo.width;
                break label946;
                label999: a(paramei, m, k, true, true);
              }
            }
            paramcr.a = j;
            m = 0;
            k = 0;
            i1 = 0;
            i = 0;
            if (this.i == 1)
              if (paramcs.f == -1)
              {
                i = paramcs.b;
                j = i - j;
                i4 = 0;
                i1 = k;
                i2 = j;
                i3 = i;
                k = i4;
                j = m;
                i = i1;
                m = i2;
                i1 = i3;
                label1096: if (k >= n)
                  break label1390;
                paramei = this.d[k];
                parameo = (cl)paramei.getLayoutParams();
                if (this.i != 1)
                  break label1354;
                if (!g())
                  break label1318;
                i = m() + this.c[(cl.a(parameo) + cl.b(parameo))];
                j = i - this.j.d(paramei);
              }
            while (true)
            {
              a(paramei, parameo.leftMargin + j, parameo.topMargin + m, i - parameo.rightMargin, i1 - parameo.bottomMargin);
              if ((parameo.c.m()) || (parameo.c.s()))
                paramcr.c = true;
              paramcr.d |= paramei.isFocusable();
              k += 1;
              break label1096;
              i1 = paramcs.b;
              i = i1 + j;
              j = i1;
              break;
              if (paramcs.f == -1)
              {
                k = paramcs.b;
                m = k - j;
                j = i1;
                break;
              }
              m = paramcs.b;
              k = m + j;
              j = i1;
              break;
              label1318: i = m();
              j = this.c[cl.a(parameo)] + i;
              i = this.j.d(paramei) + j;
              continue;
              label1354: m = n();
              m = this.c[cl.a(parameo)] + m;
              i1 = this.j.d(paramei) + m;
            }
            label1390: Arrays.fill(this.d, null);
            return;
          }
        }
      }
      label1408: n = 0;
    }
  }

  public final void a(ei paramei, eo parameo, View paramView, f paramf)
  {
    boolean bool2 = false;
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof cl))
    {
      super.a(paramView, paramf);
      return;
    }
    paramView = (cl)localLayoutParams;
    int i = a(paramei, parameo, paramView.c.c());
    if (this.i == 0)
    {
      j = paramView.a;
      k = paramView.b;
      if ((this.b > 1) && (paramView.b == this.b));
      for (bool1 = true; ; bool1 = false)
      {
        paramf.a(q.a(j, k, i, 1, bool1));
        return;
      }
    }
    int j = paramView.a;
    int k = paramView.b;
    boolean bool1 = bool2;
    if (this.b > 1)
    {
      bool1 = bool2;
      if (paramView.b == this.b)
        bool1 = true;
    }
    paramf.a(q.a(i, 1, j, k, bool1));
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    super.a(false);
  }

  public final boolean a(ee paramee)
  {
    return paramee instanceof cl;
  }

  public final int b(int paramInt, ei paramei, eo parameo)
  {
    r();
    s();
    return super.b(paramInt, paramei, parameo);
  }

  public final int b(ei paramei, eo parameo)
  {
    if (this.i == 1)
      return this.b;
    if (parameo.a() <= 0)
      return 0;
    return a(paramei, parameo, parameo.a() - 1) + 1;
  }

  public final ee b()
  {
    if (this.i == 0)
      return new cl(-2, -1);
    return new cl(-1, -2);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.g.a.clear();
  }

  public final void c(int paramInt1, int paramInt2)
  {
    this.g.a.clear();
  }

  public final void c(ei paramei, eo parameo)
  {
    if (parameo.g)
    {
      int j = l();
      int i = 0;
      while (i < j)
      {
        cl localcl = (cl)e(i).getLayoutParams();
        int k = localcl.c.c();
        this.e.put(k, localcl.b);
        this.f.put(k, localcl.a);
        i += 1;
      }
    }
    super.c(paramei, parameo);
    this.e.clear();
    this.f.clear();
    if (!parameo.g)
      this.a = false;
  }

  public final boolean c()
  {
    return (this.o == null) && (!this.a);
  }

  public final void d(int paramInt1, int paramInt2)
  {
    this.g.a.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * JD-Core Version:    0.6.2
 */