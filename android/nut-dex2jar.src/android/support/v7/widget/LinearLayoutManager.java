package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.a.a;
import android.support.v4.view.a.ae;
import android.support.v4.view.bl;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager extends ec
{
  private cs a;
  private boolean b;
  private boolean c = false;
  private boolean d = true;
  private boolean e;
  public int i;
  dk j;
  public boolean k = false;
  boolean l = false;
  int m = -1;
  int n = -2147483648;
  LinearLayoutManager.SavedState o = null;
  final cq p = new cq(this);

  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }

  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    a(paramInt);
    b(paramBoolean);
    this.v = true;
  }

  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext.a);
    b(paramContext.c);
    a(paramContext.d);
    this.v = true;
  }

  private int a(int paramInt, ei paramei, eo parameo, boolean paramBoolean)
  {
    int i1 = this.j.c() - paramInt;
    if (i1 > 0)
    {
      int i2 = -c(-i1, paramei, parameo);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = this.j.c() - (paramInt + i2);
        i1 = i2;
        if (paramInt > 0)
        {
          this.j.a(paramInt);
          i1 = i2 + paramInt;
        }
      }
      return i1;
    }
    return 0;
  }

  private int a(ei paramei, cs paramcs, eo parameo, boolean paramBoolean)
  {
    int i3 = paramcs.c;
    if (paramcs.g != -2147483648)
    {
      if (paramcs.c < 0)
        paramcs.g += paramcs.c;
      a(paramei, paramcs);
    }
    int i1 = paramcs.c + paramcs.h;
    cr localcr = new cr();
    do
    {
      int i2;
      do
      {
        if (((!paramcs.l) && (i1 <= 0)) || (!paramcs.a(parameo)))
          break;
        localcr.a = 0;
        localcr.b = false;
        localcr.c = false;
        localcr.d = false;
        a(paramei, parameo, paramcs, localcr);
        if (localcr.b)
          break;
        paramcs.b += localcr.a * paramcs.f;
        if ((localcr.c) && (this.a.k == null))
        {
          i2 = i1;
          if (parameo.g);
        }
        else
        {
          paramcs.c -= localcr.a;
          i2 = i1 - localcr.a;
        }
        if (paramcs.g != -2147483648)
        {
          paramcs.g += localcr.a;
          if (paramcs.c < 0)
            paramcs.g += paramcs.c;
          a(paramei, paramcs);
        }
        i1 = i2;
      }
      while (!paramBoolean);
      i1 = i2;
    }
    while (!localcr.d);
    return i3 - paramcs.c;
  }

  private View a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    h();
    int i2 = this.j.b();
    int i3 = this.j.c();
    if (paramInt2 > paramInt1);
    Object localObject;
    View localView;
    for (int i1 = 1; ; i1 = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2)
        break label125;
      localView = e(paramInt1);
      int i4 = this.j.a(localView);
      int i5 = this.j.b(localView);
      if ((i4 >= i3) || (i5 <= i2))
        break label128;
      if ((paramBoolean) && ((i4 < i2) || (i5 > i3)))
        break;
      return localView;
    }
    if (localObject == null)
      localObject = localView;
    label128: 
    while (true)
    {
      paramInt1 += i1;
      break;
      label125: return localObject;
    }
  }

  private void a(int paramInt1, int paramInt2, boolean paramBoolean, eo parameo)
  {
    int i1 = -1;
    int i2 = 1;
    this.a.l = s();
    this.a.h = g(parameo);
    this.a.f = paramInt1;
    if (paramInt1 == 1)
    {
      parameo = this.a;
      parameo.h += this.j.f();
      parameo = u();
      localcs = this.a;
      if (this.l);
      for (paramInt1 = i1; ; paramInt1 = 1)
      {
        localcs.e = paramInt1;
        this.a.d = (a(parameo) + this.a.e);
        this.a.b = this.j.b(parameo);
        paramInt1 = this.j.b(parameo) - this.j.c();
        this.a.c = paramInt2;
        if (paramBoolean)
        {
          parameo = this.a;
          parameo.c -= paramInt1;
        }
        this.a.g = paramInt1;
        return;
      }
    }
    parameo = t();
    cs localcs = this.a;
    localcs.h += this.j.b();
    localcs = this.a;
    if (this.l);
    for (paramInt1 = i2; ; paramInt1 = -1)
    {
      localcs.e = paramInt1;
      this.a.d = (a(parameo) + this.a.e);
      this.a.b = this.j.a(parameo);
      paramInt1 = -this.j.a(parameo) + this.j.b();
      break;
    }
  }

  private void a(cq paramcq)
  {
    i(paramcq.a, paramcq.b);
  }

  private void a(ei paramei, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2);
    while (true)
    {
      return;
      int i1 = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramei);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i1 > paramInt2)
        {
          a(i1, paramei);
          i1 -= 1;
        }
      }
    }
  }

  private void a(ei paramei, cs paramcs)
  {
    if ((!paramcs.a) || (paramcs.l));
    while (true)
    {
      return;
      int i1;
      int i2;
      int i3;
      if (paramcs.f == -1)
      {
        i1 = paramcs.g;
        i2 = l();
        if (i1 >= 0)
        {
          i3 = this.j.d() - i1;
          if (this.l)
          {
            i1 = 0;
            while (i1 < i2)
            {
              paramcs = e(i1);
              if (this.j.a(paramcs) < i3)
              {
                a(paramei, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
          else
          {
            i1 = i2 - 1;
            while (i1 >= 0)
            {
              paramcs = e(i1);
              if (this.j.a(paramcs) < i3)
              {
                a(paramei, i2 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
        }
      }
      else
      {
        i2 = paramcs.g;
        if (i2 >= 0)
        {
          i3 = l();
          if (this.l)
          {
            i1 = i3 - 1;
            while (i1 >= 0)
            {
              paramcs = e(i1);
              if (this.j.b(paramcs) > i2)
              {
                a(paramei, i3 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
          else
          {
            i1 = 0;
            while (i1 < i3)
            {
              paramcs = e(i1);
              if (this.j.b(paramcs) > i2)
              {
                a(paramei, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
        }
      }
    }
  }

  private int b(int paramInt, ei paramei, eo parameo, boolean paramBoolean)
  {
    int i1 = paramInt - this.j.b();
    if (i1 > 0)
    {
      int i2 = -c(i1, paramei, parameo);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = paramInt + i2 - this.j.b();
        i1 = i2;
        if (paramInt > 0)
        {
          this.j.a(-paramInt);
          i1 = i2 - paramInt;
        }
      }
      return i1;
    }
    return 0;
  }

  private void b(cq paramcq)
  {
    j(paramcq.a, paramcq.b);
  }

  private void b(boolean paramBoolean)
  {
    a(null);
    if (paramBoolean == this.k)
      return;
    this.k = paramBoolean;
    j();
  }

  private int c(int paramInt, ei paramei, eo parameo)
  {
    if ((l() == 0) || (paramInt == 0))
      return 0;
    this.a.a = true;
    h();
    if (paramInt > 0);
    int i2;
    int i3;
    for (int i1 = 1; ; i1 = -1)
    {
      i2 = Math.abs(paramInt);
      a(i1, i2, true, parameo);
      i3 = this.a.g + a(paramei, this.a, parameo, false);
      if (i3 >= 0)
        break;
      return 0;
    }
    if (i2 > i3)
      paramInt = i1 * i3;
    this.j.a(-paramInt);
    this.a.j = paramInt;
    return paramInt;
  }

  private View c(boolean paramBoolean)
  {
    if (this.l)
      return a(l() - 1, -1, paramBoolean);
    return a(0, l(), paramBoolean);
  }

  private View d(ei paramei, eo parameo)
  {
    if (this.l)
      return f(paramei, parameo);
    return g(paramei, parameo);
  }

  private View d(boolean paramBoolean)
  {
    if (this.l)
      return a(0, l(), paramBoolean);
    return a(l() - 1, -1, paramBoolean);
  }

  private View e(ei paramei, eo parameo)
  {
    if (this.l)
      return g(paramei, parameo);
    return f(paramei, parameo);
  }

  private View f(ei paramei, eo parameo)
  {
    return a(paramei, parameo, 0, l(), parameo.a());
  }

  private int g(eo parameo)
  {
    int i2 = 0;
    if (parameo.a != -1);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        i2 = this.j.e();
      return i2;
    }
  }

  private View g(ei paramei, eo parameo)
  {
    return a(paramei, parameo, l() - 1, -1, parameo.a());
  }

  private int h(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    h();
    dk localdk = this.j;
    View localView;
    if (!this.d)
    {
      bool1 = true;
      localView = c(bool1);
      if (this.d)
        break label74;
    }
    label74: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.a(parameo, localdk, localView, d(bool1), this, this.d, this.l);
      bool1 = false;
      break;
    }
  }

  private int i(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    h();
    dk localdk = this.j;
    View localView;
    if (!this.d)
    {
      bool1 = true;
      localView = c(bool1);
      if (this.d)
        break label70;
    }
    label70: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.a(parameo, localdk, localView, d(bool1), this, this.d);
      bool1 = false;
      break;
    }
  }

  private void i(int paramInt1, int paramInt2)
  {
    this.a.c = (this.j.c() - paramInt2);
    cs localcs = this.a;
    if (this.l);
    for (int i1 = -1; ; i1 = 1)
    {
      localcs.e = i1;
      this.a.d = paramInt1;
      this.a.f = 1;
      this.a.b = paramInt2;
      this.a.g = -2147483648;
      return;
    }
  }

  private int j(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    h();
    dk localdk = this.j;
    View localView;
    if (!this.d)
    {
      bool1 = true;
      localView = c(bool1);
      if (this.d)
        break label70;
    }
    label70: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.b(parameo, localdk, localView, d(bool1), this, this.d);
      bool1 = false;
      break;
    }
  }

  private void j(int paramInt1, int paramInt2)
  {
    this.a.c = (paramInt2 - this.j.b());
    this.a.d = paramInt1;
    cs localcs = this.a;
    if (this.l);
    for (paramInt1 = 1; ; paramInt1 = -1)
    {
      localcs.e = paramInt1;
      this.a.f = -1;
      this.a.b = paramInt2;
      this.a.g = -2147483648;
      return;
    }
  }

  private void r()
  {
    boolean bool = true;
    if ((this.i == 1) || (!g()))
      bool = this.k;
    while (true)
    {
      this.l = bool;
      return;
      if (this.k)
        bool = false;
    }
  }

  private boolean s()
  {
    return (this.j.g() == 0) && (this.j.d() == 0);
  }

  private View t()
  {
    if (this.l);
    for (int i1 = l() - 1; ; i1 = 0)
      return e(i1);
  }

  private View u()
  {
    if (this.l);
    for (int i1 = 0; ; i1 = l() - 1)
      return e(i1);
  }

  public int a(int paramInt, ei paramei, eo parameo)
  {
    if (this.i == 1)
      return 0;
    return c(paramInt, paramei, parameo);
  }

  public final int a(eo parameo)
  {
    return h(parameo);
  }

  View a(ei paramei, eo parameo, int paramInt1, int paramInt2, int paramInt3)
  {
    paramei = null;
    h();
    int i2 = this.j.b();
    int i3 = this.j.c();
    int i1;
    label35: View localView;
    if (paramInt2 > paramInt1)
    {
      i1 = 1;
      parameo = null;
      if (paramInt1 == paramInt2)
        break label147;
      localView = e(paramInt1);
      int i4 = a(localView);
      if ((i4 < 0) || (i4 >= paramInt3))
        break label159;
      if (!((ee)localView.getLayoutParams()).c.m())
        break label105;
      if (parameo != null)
        break label159;
      parameo = localView;
    }
    label147: label157: label159: 
    while (true)
    {
      paramInt1 += i1;
      break label35;
      i1 = -1;
      break;
      label105: Object localObject;
      if (this.j.a(localView) < i3)
      {
        localObject = localView;
        if (this.j.b(localView) >= i2);
      }
      else
      {
        if (paramei != null)
          break label159;
        paramei = localView;
        continue;
        if (paramei == null)
          break label157;
        localObject = paramei;
      }
      return localObject;
      return parameo;
    }
  }

  public View a(View paramView, int paramInt, ei paramei, eo parameo)
  {
    r();
    if (l() == 0);
    label134: label136: label142: 
    while (true)
    {
      return null;
      paramInt = d(paramInt);
      if (paramInt != -2147483648)
      {
        h();
        if (paramInt == -1)
        {
          paramView = e(paramei, parameo);
          label42: if (paramView == null)
            break label134;
          h();
          a(paramInt, (int)(0.3333333F * this.j.e()), false, parameo);
          this.a.g = -2147483648;
          this.a.a = false;
          a(paramei, this.a, parameo, true);
          if (paramInt != -1)
            break label136;
        }
        for (paramei = t(); ; paramei = u())
        {
          if ((paramei == paramView) || (!paramei.isFocusable()))
            break label142;
          return paramei;
          paramView = d(paramei, parameo);
          break label42;
          break;
        }
      }
    }
  }

  public final void a(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    a(null);
    if (paramInt == this.i)
      return;
    this.i = paramInt;
    this.j = null;
    j();
  }

  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof LinearLayoutManager.SavedState))
    {
      this.o = ((LinearLayoutManager.SavedState)paramParcelable);
      j();
    }
  }

  public final void a(RecyclerView paramRecyclerView, ei paramei)
  {
    super.a(paramRecyclerView, paramei);
    if (this.e)
    {
      c(paramei);
      paramei.a();
    }
  }

  void a(ei paramei, eo parameo, cq paramcq, int paramInt)
  {
  }

  void a(ei paramei, eo parameo, cs paramcs, cr paramcr)
  {
    paramei = paramcs.a(paramei);
    if (paramei == null)
    {
      paramcr.b = true;
      return;
    }
    parameo = (ee)paramei.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label63: int i3;
    int i4;
    int i1;
    int i2;
    if (paramcs.k == null)
    {
      bool2 = this.l;
      if (paramcs.f == -1)
      {
        bool1 = true;
        if (bool2 != bool1)
          break label386;
        super.a(paramei, -1, false);
        ee localee = (ee)paramei.getLayoutParams();
        Rect localRect = this.r.e(paramei);
        i3 = localRect.left;
        i4 = localRect.right;
        i1 = localRect.top;
        i2 = localRect.bottom;
        i3 = ec.a(this.z, this.x, i3 + i4 + 0 + (m() + o() + localee.leftMargin + localee.rightMargin), localee.width, e());
        i1 = ec.a(this.A, this.y, i2 + i1 + 0 + (n() + p() + localee.topMargin + localee.bottomMargin), localee.height, f());
        if (a(paramei, i3, i1, localee))
          paramei.measure(i3, i1);
        paramcr.a = this.j.c(paramei);
        if (this.i != 1)
          break label497;
        if (!g())
          break label446;
        i1 = this.z - o();
        i2 = i1 - this.j.d(paramei);
        label286: if (paramcs.f != -1)
          break label468;
        i3 = paramcs.b;
        i4 = paramcs.b - paramcr.a;
      }
    }
    while (true)
    {
      a(paramei, i2 + parameo.leftMargin, i4 + parameo.topMargin, i1 - parameo.rightMargin, i3 - parameo.bottomMargin);
      if ((parameo.c.m()) || (parameo.c.s()))
        paramcr.c = true;
      paramcr.d = paramei.isFocusable();
      return;
      bool1 = false;
      break;
      label386: super.a(paramei, 0, false);
      break label63;
      bool2 = this.l;
      if (paramcs.f == -1);
      for (bool1 = true; ; bool1 = false)
      {
        if (bool2 != bool1)
          break label436;
        super.a(paramei, -1, true);
        break;
      }
      label436: super.a(paramei, 0, true);
      break label63;
      label446: i2 = m();
      i1 = this.j.d(paramei) + i2;
      break label286;
      label468: i4 = paramcs.b;
      i3 = paramcs.b;
      int i5 = paramcr.a;
      i3 += i5;
      continue;
      label497: i4 = n();
      i3 = this.j.d(paramei) + i4;
      if (paramcs.f == -1)
      {
        i1 = paramcs.b;
        i2 = paramcs.b - paramcr.a;
      }
      else
      {
        i2 = paramcs.b;
        i1 = paramcs.b + paramcr.a;
      }
    }
  }

  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int i2 = -1;
    super.a(paramAccessibilityEvent);
    View localView;
    if (l() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      localView = a(0, l(), false);
      if (localView != null)
        break label70;
      i1 = -1;
      paramAccessibilityEvent.b(i1);
      localView = a(l() - 1, -1, false);
      if (localView != null)
        break label79;
    }
    label70: label79: for (int i1 = i2; ; i1 = a(localView))
    {
      paramAccessibilityEvent.c(i1);
      return;
      i1 = a(localView);
      break;
    }
  }

  public final void a(String paramString)
  {
    if (this.o == null)
      super.a(paramString);
  }

  public void a(boolean paramBoolean)
  {
    a(null);
    if (this.c == paramBoolean)
      return;
    this.c = paramBoolean;
    j();
  }

  public int b(int paramInt, ei paramei, eo parameo)
  {
    if (this.i == 0)
      return 0;
    return c(paramInt, paramei, parameo);
  }

  public final int b(eo parameo)
  {
    return h(parameo);
  }

  public ee b()
  {
    return new ee(-2, -2);
  }

  public final View b(int paramInt)
  {
    int i1 = l();
    Object localObject;
    if (i1 == 0)
      localObject = null;
    View localView;
    do
    {
      return localObject;
      int i2 = paramInt - a(e(0));
      if ((i2 < 0) || (i2 >= i1))
        break;
      localView = e(i2);
      localObject = localView;
    }
    while (a(localView) == paramInt);
    return super.b(paramInt);
  }

  public final int c(eo parameo)
  {
    return i(parameo);
  }

  public final void c(int paramInt)
  {
    this.m = paramInt;
    this.n = -2147483648;
    if (this.o != null)
      this.o.a = -1;
    j();
  }

  public void c(ei paramei, eo parameo)
  {
    if (((this.o != null) || (this.m != -1)) && (parameo.a() == 0))
    {
      c(paramei);
      return;
    }
    if ((this.o != null) && (this.o.a()))
      this.m = this.o.a;
    h();
    this.a.a = false;
    r();
    Object localObject1 = this.p;
    ((cq)localObject1).a = -1;
    ((cq)localObject1).b = -2147483648;
    ((cq)localObject1).c = false;
    this.p.c = (this.l ^ this.c);
    Object localObject2 = this.p;
    label157: label211: int i2;
    label240: label242: int i4;
    label265: label290: int i5;
    int i3;
    if ((parameo.g) || (this.m == -1))
    {
      i1 = 0;
      if (i1 == 0)
      {
        if (l() == 0)
          break label1756;
        if (this.r != null)
          break label1258;
        localObject1 = null;
        if (localObject1 == null)
          break label1605;
        ee localee = (ee)((View)localObject1).getLayoutParams();
        if ((localee.c.m()) || (localee.c.c() < 0) || (localee.c.c() >= parameo.a()))
          break label1293;
        i1 = 1;
        if (i1 == 0)
          break label1605;
        i2 = ((cq)localObject2).d.j.a();
        if (i2 < 0)
          break label1298;
        ((cq)localObject2).a((View)localObject1);
        i1 = 1;
        if (i1 == 0)
        {
          ((cq)localObject2).a();
          if (!this.c)
            break label1761;
          i1 = parameo.a() - 1;
          ((cq)localObject2).a = i1;
        }
      }
      i1 = g(parameo);
      if (this.a.j < 0)
        break label1766;
      i2 = 0;
      i4 = i2 + this.j.b();
      i5 = i1 + this.j.f();
      i2 = i5;
      i3 = i4;
      if (parameo.g)
      {
        i2 = i5;
        i3 = i4;
        if (this.m != -1)
        {
          i2 = i5;
          i3 = i4;
          if (this.n != -2147483648)
          {
            localObject1 = b(this.m);
            i2 = i5;
            i3 = i4;
            if (localObject1 != null)
            {
              if (!this.l)
                break label1774;
              i1 = this.j.c() - this.j.b((View)localObject1) - this.n;
              label414: if (i1 <= 0)
                break label1806;
              i3 = i4 + i1;
              i2 = i5;
            }
          }
        }
      }
      label428: if (!this.p.c)
        break label1824;
      if (!this.l)
        break label1819;
      i1 = 1;
      label447: a(paramei, parameo, this.p, i1);
      a(paramei);
      this.a.l = s();
      this.a.i = parameo.g;
      if (!this.p.c)
        break label1841;
      b(this.p);
      this.a.h = i3;
      a(paramei, this.a, parameo, false);
      i4 = this.a.b;
      i5 = this.a.d;
      i1 = i2;
      if (this.a.c > 0)
        i1 = i2 + this.a.c;
      a(this.p);
      this.a.h = i1;
      localObject1 = this.a;
      ((cs)localObject1).d += this.a.e;
      a(paramei, this.a, parameo, false);
      i3 = this.a.b;
      if (this.a.c <= 0)
        break label2410;
      i1 = this.a.c;
      j(i5, i4);
      this.a.h = i1;
      a(paramei, this.a, parameo, false);
    }
    label687: label1605: label1632: label1761: label1766: label2410: for (int i1 = this.a.b; ; i1 = i4)
    {
      i2 = i1;
      i1 = i3;
      if (l() > 0)
        if ((this.l ^ this.c))
        {
          i3 = a(i1, paramei, parameo, true);
          i4 = i2 + i3;
          i2 = b(i4, paramei, parameo, false);
          i4 += i2;
          i3 = i1 + i3 + i2;
        }
      while (true)
      {
        boolean bool;
        label1258: int i6;
        if ((!parameo.i) || (l() == 0) || (parameo.g) || (!c()))
        {
          if (!parameo.g)
          {
            this.m = -1;
            this.n = -2147483648;
            paramei = this.j;
            paramei.b = paramei.e();
          }
          this.b = this.c;
          this.o = null;
          return;
          if ((this.m < 0) || (this.m >= parameo.a()))
          {
            this.m = -1;
            this.n = -2147483648;
            i1 = 0;
            break;
          }
          ((cq)localObject2).a = this.m;
          if ((this.o != null) && (this.o.a()))
          {
            ((cq)localObject2).c = this.o.c;
            if (((cq)localObject2).c);
            for (((cq)localObject2).b = (this.j.c() - this.o.b); ; ((cq)localObject2).b = (this.j.b() + this.o.b))
            {
              i1 = 1;
              break;
            }
          }
          if (this.n == -2147483648)
          {
            localObject1 = b(this.m);
            if (localObject1 != null)
              if (this.j.c((View)localObject1) > this.j.e())
                ((cq)localObject2).a();
          }
          while (true)
          {
            i1 = 1;
            break;
            if (this.j.a((View)localObject1) - this.j.b() < 0)
            {
              ((cq)localObject2).b = this.j.b();
              ((cq)localObject2).c = false;
            }
            else if (this.j.c() - this.j.b((View)localObject1) < 0)
            {
              ((cq)localObject2).b = this.j.c();
              ((cq)localObject2).c = true;
            }
            else
            {
              if (((cq)localObject2).c);
              for (i1 = this.j.b((View)localObject1) + this.j.a(); ; i1 = this.j.a((View)localObject1))
              {
                ((cq)localObject2).b = i1;
                i1 = 1;
                break;
              }
              if (l() > 0)
              {
                i1 = a(e(0));
                if (this.m >= i1)
                  break label1190;
                bool = true;
                if (bool != this.l)
                  break label1196;
              }
              for (bool = true; ; bool = false)
              {
                ((cq)localObject2).c = bool;
                ((cq)localObject2).a();
                break;
                bool = false;
                break label1163;
              }
              ((cq)localObject2).c = this.l;
              if (this.l)
                ((cq)localObject2).b = (this.j.c() - this.n);
              else
                ((cq)localObject2).b = (this.j.b() + this.n);
            }
          }
          localObject1 = this.r.getFocusedChild();
          if ((localObject1 == null) || (this.q.d((View)localObject1)))
          {
            localObject1 = null;
            break label157;
          }
          break label157;
          i1 = 0;
          break label211;
          ((cq)localObject2).a = a((View)localObject1);
          if (((cq)localObject2).c)
          {
            i1 = ((cq)localObject2).d.j.c() - i2 - ((cq)localObject2).d.j.b((View)localObject1);
            ((cq)localObject2).b = (((cq)localObject2).d.j.c() - i1);
            if (i1 <= 0)
              break label240;
            i2 = ((cq)localObject2).d.j.c((View)localObject1);
            i3 = ((cq)localObject2).b;
            i4 = ((cq)localObject2).d.j.b();
            i2 = i3 - i2 - (Math.min(((cq)localObject2).d.j.a((View)localObject1) - i4, 0) + i4);
            if (i2 >= 0)
              break label240;
            i3 = ((cq)localObject2).b;
            ((cq)localObject2).b = (Math.min(i1, -i2) + i3);
            break label240;
          }
          i3 = ((cq)localObject2).d.j.a((View)localObject1);
          i1 = i3 - ((cq)localObject2).d.j.b();
          ((cq)localObject2).b = i3;
          if (i1 <= 0)
            break label240;
          i4 = ((cq)localObject2).d.j.c((View)localObject1);
          i5 = ((cq)localObject2).d.j.c();
          i6 = ((cq)localObject2).d.j.b((View)localObject1);
          i2 = ((cq)localObject2).d.j.c() - Math.min(0, i5 - i2 - i6) - (i3 + i4);
          if (i2 >= 0)
            break label240;
          ((cq)localObject2).b -= Math.min(i1, -i2);
          break label240;
          if (this.b == this.c)
          {
            if (((cq)localObject2).c)
            {
              localObject1 = d(paramei, parameo);
              if (localObject1 == null)
                break label1756;
              ((cq)localObject2).a((View)localObject1);
              if ((!parameo.g) && (c()))
              {
                if ((this.j.a((View)localObject1) < this.j.c()) && (this.j.b((View)localObject1) >= this.j.b()))
                  break label1740;
                i1 = 1;
                if (i1 != 0)
                  if (!((cq)localObject2).c)
                    break label1745;
              }
            }
            for (i1 = this.j.c(); ; i1 = this.j.b())
            {
              ((cq)localObject2).b = i1;
              i1 = 1;
              break;
              localObject1 = e(paramei, parameo);
              break label1632;
              i1 = 0;
              break label1698;
            }
          }
          i1 = 0;
          break label242;
          i1 = 0;
          break label265;
          i2 = i1;
          i1 = 0;
          break label290;
          label1774: i1 = this.j.a((View)localObject1);
          i2 = this.j.b();
          i1 = this.n - (i1 - i2);
          break label414;
          i2 = i5 - i1;
          i3 = i4;
          break label428;
          i1 = -1;
          break label447;
          if (this.l)
          {
            i1 = -1;
            break label447;
          }
          i1 = 1;
          break label447;
          a(this.p);
          this.a.h = i2;
          a(paramei, this.a, parameo, false);
          i4 = this.a.b;
          i5 = this.a.d;
          i1 = i3;
          if (this.a.c > 0)
            i1 = i3 + this.a.c;
          b(this.p);
          this.a.h = i1;
          localObject1 = this.a;
          ((cs)localObject1).d += this.a.e;
          a(paramei, this.a, parameo, false);
          i3 = this.a.b;
          i1 = i4;
          i2 = i3;
          if (this.a.c <= 0)
            break label687;
          i1 = this.a.c;
          i(i5, i4);
          this.a.h = i1;
          a(paramei, this.a, parameo, false);
          i1 = this.a.b;
          i2 = i3;
          break label687;
          i3 = b(i2, paramei, parameo, true);
          i1 += i3;
          i5 = a(i1, paramei, parameo, false);
          i4 = i2 + i3 + i5;
          i3 = i1 + i5;
          continue;
        }
        i1 = 0;
        i2 = 0;
        localObject1 = paramei.d;
        int i7 = ((List)localObject1).size();
        int i8 = a(e(0));
        i5 = 0;
        if (i5 < i7)
        {
          localObject2 = (er)((List)localObject1).get(i5);
          if (((er)localObject2).m())
            break label2387;
          if (((er)localObject2).c() < i8)
          {
            bool = true;
            label2161: if (bool == this.l)
              break label2227;
            i6 = -1;
            label2173: if (i6 != -1)
              break label2233;
            i6 = this.j.c(((er)localObject2).a) + i1;
            i1 = i2;
            i2 = i6;
          }
        }
        while (true)
        {
          i6 = i2;
          i5 += 1;
          i2 = i1;
          i1 = i6;
          break label2119;
          bool = false;
          break label2161;
          i6 = 1;
          break label2173;
          i6 = this.j.c(((er)localObject2).a) + i2;
          i2 = i1;
          i1 = i6;
          continue;
          this.a.k = ((List)localObject1);
          if (i1 > 0)
          {
            j(a(t()), i4);
            this.a.h = i1;
            this.a.c = 0;
            this.a.a(null);
            a(paramei, this.a, parameo, false);
          }
          if (i2 > 0)
          {
            i(a(u()), i3);
            this.a.h = i2;
            this.a.c = 0;
            this.a.a(null);
            a(paramei, this.a, parameo, false);
          }
          this.a.k = null;
          break;
          i6 = i1;
          i1 = i2;
          i2 = i6;
        }
        i3 = i1;
        i4 = i2;
      }
    }
  }

  public boolean c()
  {
    return (this.o == null) && (this.b == this.c);
  }

  final int d(int paramInt)
  {
    int i2 = -1;
    int i1 = i2;
    switch (paramInt)
    {
    default:
      i1 = -2147483648;
    case 1:
    case 2:
    case 33:
    case 130:
    case 17:
      do
      {
        do
        {
          return i1;
          return 1;
          i1 = i2;
        }
        while (this.i == 1);
        return -2147483648;
        if (this.i == 1)
          return 1;
        return -2147483648;
        i1 = i2;
      }
      while (this.i == 0);
      return -2147483648;
    case 66:
    }
    if (this.i == 0)
      return 1;
    return -2147483648;
  }

  public final int d(eo parameo)
  {
    return i(parameo);
  }

  public final Parcelable d()
  {
    if (this.o != null)
      return new LinearLayoutManager.SavedState(this.o);
    LinearLayoutManager.SavedState localSavedState = new LinearLayoutManager.SavedState();
    if (l() > 0)
    {
      h();
      boolean bool = this.b ^ this.l;
      localSavedState.c = bool;
      if (bool)
      {
        localView = u();
        localSavedState.b = (this.j.c() - this.j.b(localView));
        localSavedState.a = a(localView);
        return localSavedState;
      }
      View localView = t();
      localSavedState.a = a(localView);
      localSavedState.b = (this.j.a(localView) - this.j.b());
      return localSavedState;
    }
    localSavedState.a = -1;
    return localSavedState;
  }

  public final int e(eo parameo)
  {
    return j(parameo);
  }

  public final boolean e()
  {
    return this.i == 0;
  }

  public final int f(eo parameo)
  {
    return j(parameo);
  }

  public final boolean f()
  {
    return this.i == 1;
  }

  protected final boolean g()
  {
    return bl.h(this.r) == 1;
  }

  final void h()
  {
    if (this.a == null)
      this.a = new cs();
    if (this.j == null)
      this.j = dk.a(this, this.i);
  }

  final boolean i()
  {
    if ((this.y != 1073741824) && (this.x != 1073741824))
    {
      int i2 = l();
      int i1 = 0;
      if (i1 < i2)
      {
        ViewGroup.LayoutParams localLayoutParams = e(i1).getLayoutParams();
        if ((localLayoutParams.width >= 0) || (localLayoutParams.height >= 0));
      }
      for (i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label75;
        return true;
        i1 += 1;
        break;
      }
    }
    label75: return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * JD-Core Version:    0.6.2
 */