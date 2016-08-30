package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.a.a;
import android.support.v4.view.a.ae;
import android.support.v4.view.a.f;
import android.support.v4.view.a.q;
import android.support.v4.view.bl;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.BitSet;

public class StaggeredGridLayoutManager extends ec
{
  private StaggeredGridLayoutManager.SavedState B;
  private int C;
  private final Rect D = new Rect();
  private final fi E = new fi(this, (byte)0);
  private boolean F = false;
  private boolean G = true;
  private final Runnable H = new fh(this);
  dk a;
  dk b;
  boolean c = false;
  int d = -1;
  int e = -2147483648;
  StaggeredGridLayoutManager.LazySpanLookup f = new StaggeredGridLayoutManager.LazySpanLookup();
  private int g = -1;
  private fm[] h;
  private int i;
  private int j;
  private final cn k;
  private boolean l = false;
  private BitSet m;
  private int n = 2;
  private boolean o;
  private boolean p;

  public StaggeredGridLayoutManager(int paramInt1, int paramInt2)
  {
    this.i = paramInt2;
    a(paramInt1);
    if (this.n != 0);
    while (true)
    {
      this.v = bool;
      this.k = new cn();
      g();
      return;
      bool = false;
    }
  }

  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramInt1 = paramContext.a;
    if ((paramInt1 != 0) && (paramInt1 != 1))
      throw new IllegalArgumentException("invalid orientation.");
    a(null);
    if (paramInt1 != this.i)
    {
      this.i = paramInt1;
      paramAttributeSet = this.a;
      this.a = this.b;
      this.b = paramAttributeSet;
      j();
    }
    a(paramContext.b);
    a(paramContext.c);
    if (this.n != 0);
    while (true)
    {
      this.v = bool;
      this.k = new cn();
      g();
      return;
      bool = false;
    }
  }

  private int a(ei paramei, cn paramcn, eo parameo)
  {
    this.m.set(0, this.g, true);
    int i1;
    int i5;
    label61: int i2;
    int i3;
    label85: View localView;
    fj localfj;
    int i9;
    label181: int i6;
    if (this.k.i)
      if (paramcn.e == 1)
      {
        i1 = 2147483647;
        i(paramcn.e, i1);
        if (!this.c)
          break label462;
        i5 = this.a.c();
        i2 = 0;
        if ((paramcn.c < 0) || (paramcn.c >= parameo.a()))
          break label474;
        i3 = 1;
        if ((i3 == 0) || ((!this.k.i) && (this.m.isEmpty())))
          break label1649;
        localView = paramei.b(paramcn.c);
        paramcn.c += paramcn.d;
        localfj = (fj)localView.getLayoutParams();
        i9 = localfj.c.c();
        localObject1 = this.f;
        if ((((StaggeredGridLayoutManager.LazySpanLookup)localObject1).a != null) && (i9 < ((StaggeredGridLayoutManager.LazySpanLookup)localObject1).a.length))
          break label480;
        i2 = -1;
        if (i2 != -1)
          break label493;
        i6 = 1;
        label190: if (i6 == 0)
          break label703;
        if (!localfj.b)
          break label499;
        localObject1 = this.h[0];
      }
    label211: Object localObject2;
    label237: int i4;
    label260: label304: label328: label462: label474: label480: label493: label499: int i10;
    label524: int i7;
    label556: 
    do
    {
      localObject2 = this.f;
      ((StaggeredGridLayoutManager.LazySpanLookup)localObject2).c(i9);
      ((StaggeredGridLayoutManager.LazySpanLookup)localObject2).a[i9] = ((fm)localObject1).e;
      localfj.a = ((fm)localObject1);
      if (paramcn.e != 1)
        break label715;
      super.a(localView, -1, false);
      if (!localfj.b)
        break label757;
      if (this.i != 1)
        break label726;
      a(localView, this.C, a(this.A, this.y, 0, localfj.height, true));
      if (paramcn.e != 1)
        break label1057;
      if (!localfj.b)
        break label855;
      i2 = k(i5);
      i3 = i2 + this.a.c(localView);
      if ((i6 == 0) || (!localfj.b))
        break label1740;
      localObject2 = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
      ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).c = new int[this.g];
      i4 = 0;
      while (i4 < this.g)
      {
        ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).c[i4] = (i2 - this.h[i4].b(i2));
        i4 += 1;
      }
      i1 = -2147483648;
      break;
      if (paramcn.e == 1)
      {
        i1 = paramcn.g + paramcn.b;
        break;
      }
      i1 = paramcn.f - paramcn.b;
      break;
      i5 = this.a.b();
      break label61;
      i3 = 0;
      break label85;
      i2 = localObject1.a[i9];
      break label181;
      i6 = 0;
      break label190;
      if (!l(paramcn.e))
        break label610;
      i2 = this.g - 1;
      i4 = -1;
      i3 = -1;
      if (paramcn.e != 1)
        break label625;
      localObject2 = null;
      i8 = 2147483647;
      i10 = this.a.b();
      i7 = i2;
      i2 = i8;
      localObject1 = localObject2;
    }
    while (i7 == i4);
    Object localObject1 = this.h[i7];
    int i8 = ((fm)localObject1).b(i10);
    if (i8 < i2)
      i2 = i8;
    while (true)
    {
      i7 += i3;
      localObject2 = localObject1;
      break label556;
      label610: i2 = 0;
      i4 = this.g;
      i3 = 1;
      break label524;
      label625: localObject2 = null;
      i8 = -2147483648;
      i10 = this.a.c();
      i7 = i2;
      i2 = i8;
      label649: localObject1 = localObject2;
      if (i7 == i4)
        break label211;
      localObject1 = this.h[i7];
      i8 = ((fm)localObject1).a(i10);
      if (i8 > i2)
        i2 = i8;
      while (true)
      {
        i7 += i3;
        localObject2 = localObject1;
        break label649;
        label703: localObject1 = this.h[i2];
        break label237;
        label715: super.a(localView, 0, false);
        break label260;
        label726: a(localView, a(this.z, this.x, 0, localfj.width, true), this.C);
        break label304;
        label757: if (this.i == 1)
        {
          a(localView, a(this.j, this.x, 0, localfj.width, false), a(this.A, this.y, 0, localfj.height, true));
          break label304;
        }
        a(localView, a(this.z, this.x, 0, localfj.width, true), a(this.j, this.y, 0, localfj.height, false));
        break label304;
        label855: i2 = ((fm)localObject1).b(i5);
        break label328;
        ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).b = -1;
        ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).a = i9;
        this.f.a((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2);
        i4 = i2;
        while (true)
        {
          if ((localfj.b) && (paramcn.d == -1))
            if (i6 == 0)
            {
              if (paramcn.e != 1)
                break label1226;
              i6 = this.h[0].b(-2147483648);
              i2 = 1;
              label938: if (i2 >= this.g)
                break label1214;
              if (this.h[i2].b(-2147483648) == i6)
                break label1205;
              i2 = 0;
              label967: if (i2 != 0)
                break label1220;
              i2 = 1;
            }
          while (true)
          {
            if (i2 != 0)
            {
              localObject2 = this.f.d(i9);
              if (localObject2 != null)
                ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).d = true;
              this.F = true;
            }
            if (paramcn.e != 1)
              break label1457;
            if (!localfj.b)
              break label1303;
            i2 = this.g - 1;
            while (i2 >= 0)
            {
              this.h[i2].b(localView);
              i2 -= 1;
            }
            label1057: if (localfj.b);
            for (i3 = j(i5); ; i3 = ((fm)localObject1).a(i5))
            {
              i4 = this.a.c(localView);
              if ((i6 == 0) || (!localfj.b))
                break label1195;
              localObject2 = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
              ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).c = new int[this.g];
              i2 = 0;
              while (i2 < this.g)
              {
                ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).c[i2] = (this.h[i2].a(i3) - i3);
                i2 += 1;
              }
            }
            ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).b = 1;
            ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2).a = i9;
            this.f.a((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2);
            label1195: i4 = i3 - i4;
            break;
            label1205: i2 += 1;
            break label938;
            label1214: i2 = 1;
            break label967;
            label1220: i2 = 0;
            continue;
            label1226: i6 = this.h[0].a(-2147483648);
            i2 = 1;
            label1242: if (i2 < this.g)
              if (this.h[i2].a(-2147483648) == i6);
            for (i2 = 0; ; i2 = 1)
            {
              if (i2 != 0)
                break label1297;
              i2 = 1;
              break;
              i2 += 1;
              break label1242;
            }
            label1297: i2 = 0;
          }
          label1303: localfj.a.b(localView);
          label1313: if ((t()) && (this.i == 1))
            if (localfj.b)
            {
              i2 = this.b.c();
              label1345: i7 = this.b.c(localView);
              i6 = i2;
              i2 -= i7;
              if (this.i != 1)
                break label1599;
              b(localView, i2, i4, i6, i3);
              label1388: if (!localfj.b)
                break label1615;
              i(this.k.e, i1);
              a(paramei, this.k);
              if ((this.k.h) && (localView.isFocusable()))
              {
                if (!localfj.b)
                  break label1633;
                this.m.clear();
              }
            }
          while (true)
          {
            label1409: i2 = 1;
            break;
            label1457: if (localfj.b)
            {
              i2 = this.g - 1;
              while (i2 >= 0)
              {
                this.h[i2].a(localView);
                i2 -= 1;
              }
              break label1313;
            }
            localfj.a.a(localView);
            break label1313;
            i2 = this.b.c() - (this.g - 1 - ((fm)localObject1).e) * this.j;
            break label1345;
            if (localfj.b);
            for (i2 = this.b.b(); ; i2 = ((fm)localObject1).e * this.j + this.b.b())
            {
              i6 = this.b.c(localView) + i2;
              break;
            }
            label1599: b(localView, i4, i2, i3, i6);
            break label1388;
            label1615: a((fm)localObject1, this.k.e, i1);
            break label1409;
            label1633: this.m.set(((fm)localObject1).e, false);
          }
          label1649: if (i2 == 0)
            a(paramei, this.k);
          if (this.k.e == -1)
            i1 = j(this.a.b());
          for (i1 = this.a.b() - i1; i1 > 0; i1 = k(this.a.c()) - this.a.c())
            return Math.min(paramcn.b, i1);
          return 0;
          label1740: i4 = i2;
        }
        localObject1 = localObject2;
      }
      localObject1 = localObject2;
    }
  }

  private void a(int paramInt)
  {
    a(null);
    if (paramInt != this.g)
    {
      this.f.a();
      j();
      this.g = paramInt;
      this.m = new BitSet(this.g);
      this.h = new fm[this.g];
      paramInt = 0;
      while (paramInt < this.g)
      {
        this.h[paramInt] = new fm(this, paramInt, 0);
        paramInt += 1;
      }
      j();
    }
  }

  private void a(int paramInt, eo parameo)
  {
    boolean bool2 = false;
    this.k.b = 0;
    this.k.c = paramInt;
    int i1;
    boolean bool1;
    if (k())
    {
      i1 = parameo.a;
      if (i1 != -1)
      {
        boolean bool3 = this.c;
        if (i1 < paramInt)
        {
          bool1 = true;
          if (bool3 != bool1)
            break label189;
          paramInt = this.a.e();
          i1 = 0;
        }
      }
    }
    while (true)
    {
      label67: int i2;
      if ((this.r != null) && (RecyclerView.w(this.r)))
      {
        i2 = 1;
        label87: if (i2 == 0)
          break label208;
        this.k.f = (this.a.b() - i1);
        this.k.g = (paramInt + this.a.c());
      }
      while (true)
      {
        this.k.h = false;
        this.k.a = true;
        parameo = this.k;
        bool1 = bool2;
        if (this.a.g() == 0)
        {
          bool1 = bool2;
          if (this.a.d() == 0)
            bool1 = true;
        }
        parameo.i = bool1;
        return;
        bool1 = false;
        break;
        label189: i1 = this.a.e();
        paramInt = 0;
        break label67;
        i2 = 0;
        break label87;
        label208: this.k.g = (paramInt + this.a.d());
        this.k.f = (-i1);
      }
      paramInt = 0;
      i1 = 0;
    }
  }

  private void a(ei paramei, int paramInt)
  {
    while (true)
    {
      View localView;
      fj localfj;
      if (l() > 0)
      {
        localView = e(0);
        if (this.a.b(localView) <= paramInt)
        {
          localfj = (fj)localView.getLayoutParams();
          if (!localfj.b)
            break label105;
          i1 = 0;
          if (i1 >= this.g)
            break label79;
          if (this.h[i1].a.size() != 1)
            break label72;
        }
      }
      label72: label79: label105: 
      while (localfj.a.a.size() == 1)
      {
        while (true)
        {
          return;
          i1 += 1;
        }
        int i1 = 0;
        while (i1 < this.g)
        {
          this.h[i1].e();
          i1 += 1;
        }
      }
      localfj.a.e();
      a(localView, paramei);
    }
  }

  private void a(ei paramei, cn paramcn)
  {
    int i3 = 1;
    int i1 = 1;
    if ((!paramcn.a) || (paramcn.i))
      return;
    if (paramcn.b == 0)
    {
      if (paramcn.e == -1)
      {
        b(paramei, paramcn.g);
        return;
      }
      a(paramei, paramcn.f);
      return;
    }
    int i4;
    if (paramcn.e == -1)
    {
      i5 = paramcn.f;
      int i6 = paramcn.f;
      for (i2 = this.h[0].a(i6); i1 < this.g; i2 = i3)
      {
        i4 = this.h[i1].a(i6);
        i3 = i2;
        if (i4 > i2)
          i3 = i4;
        i1 += 1;
      }
      i1 = i5 - i2;
      if (i1 < 0);
      for (i1 = paramcn.g; ; i1 = paramcn.g - Math.min(i1, paramcn.b))
      {
        b(paramei, i1);
        return;
      }
    }
    int i5 = paramcn.g;
    int i2 = this.h[0].b(i5);
    i1 = i3;
    while (i1 < this.g)
    {
      i4 = this.h[i1].b(i5);
      i3 = i2;
      if (i4 < i2)
        i3 = i4;
      i1 += 1;
      i2 = i3;
    }
    i1 = i2 - paramcn.g;
    if (i1 < 0);
    for (i1 = paramcn.f; ; i1 = Math.min(i1, paramcn.b) + i2)
    {
      a(paramei, i1);
      return;
      i2 = paramcn.f;
    }
  }

  private void a(ei paramei, eo parameo, boolean paramBoolean)
  {
    int i1 = k(-2147483648);
    if (i1 == -2147483648);
    do
    {
      do
      {
        return;
        i1 = this.a.c() - i1;
      }
      while (i1 <= 0);
      i1 -= -c(-i1, paramei, parameo);
    }
    while ((!paramBoolean) || (i1 <= 0));
    this.a.a(i1);
  }

  private void a(fm paramfm, int paramInt1, int paramInt2)
  {
    int i1 = paramfm.d;
    if (paramInt1 == -1)
      if (i1 + paramfm.a() <= paramInt2)
        this.m.set(paramfm.e, false);
    while (paramfm.b() - i1 < paramInt2)
      return;
    this.m.set(paramfm.e, false);
  }

  private void a(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView, this.D);
    fj localfj = (fj)paramView.getLayoutParams();
    paramInt1 = c(paramInt1, localfj.leftMargin + this.D.left, localfj.rightMargin + this.D.right);
    paramInt2 = c(paramInt2, localfj.topMargin + this.D.top, localfj.bottomMargin + this.D.bottom);
    if (a(paramView, paramInt1, paramInt2, localfj))
      paramView.measure(paramInt1, paramInt2);
  }

  private void a(boolean paramBoolean)
  {
    a(null);
    if ((this.B != null) && (this.B.h != paramBoolean))
      this.B.h = paramBoolean;
    this.l = paramBoolean;
    j();
  }

  private View b(boolean paramBoolean)
  {
    int i2 = this.a.b();
    int i3 = this.a.c();
    int i4 = l();
    Object localObject = null;
    int i1 = 0;
    if (i1 < i4)
    {
      View localView = e(i1);
      int i5 = this.a.a(localView);
      if ((this.a.b(localView) <= i2) || (i5 >= i3))
        break label104;
      if ((i5 >= i2) || (!paramBoolean))
        return localView;
      if (localObject != null)
        break label104;
      localObject = localView;
    }
    label104: 
    while (true)
    {
      i1 += 1;
      break;
      return localObject;
    }
  }

  private void b(ei paramei, int paramInt)
  {
    int i1 = l() - 1;
    while (true)
    {
      View localView;
      fj localfj;
      if (i1 >= 0)
      {
        localView = e(i1);
        if (this.a.a(localView) >= paramInt)
        {
          localfj = (fj)localView.getLayoutParams();
          if (!localfj.b)
            break label119;
          i2 = 0;
          if (i2 >= this.g)
            break label88;
          if (this.h[i2].a.size() != 1)
            break label79;
        }
      }
      label79: label88: label119: 
      while (localfj.a.a.size() == 1)
      {
        while (true)
        {
          return;
          i2 += 1;
        }
        int i2 = 0;
        while (i2 < this.g)
        {
          this.h[i2].d();
          i2 += 1;
        }
      }
      localfj.a.d();
      a(localView, paramei);
      i1 -= 1;
    }
  }

  private void b(ei paramei, eo parameo, boolean paramBoolean)
  {
    int i1 = j(2147483647);
    if (i1 == 2147483647);
    do
    {
      do
      {
        return;
        i1 -= this.a.b();
      }
      while (i1 <= 0);
      i1 -= c(i1, paramei, parameo);
    }
    while ((!paramBoolean) || (i1 <= 0));
    this.a.a(-i1);
  }

  private static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    fj localfj = (fj)paramView.getLayoutParams();
    a(paramView, localfj.leftMargin + paramInt1, localfj.topMargin + paramInt2, paramInt3 - localfj.rightMargin, paramInt4 - localfj.bottomMargin);
  }

  private static int c(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0));
    int i1;
    do
    {
      return paramInt1;
      i1 = View.MeasureSpec.getMode(paramInt1);
    }
    while ((i1 != -2147483648) && (i1 != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i1);
  }

  private int c(int paramInt, ei paramei, eo parameo)
  {
    int i2;
    if (paramInt > 0)
    {
      i2 = u();
      i1 = 1;
      this.k.a = true;
      a(i2, parameo);
      i(i1);
      this.k.c = (this.k.d + i2);
      int i3 = Math.abs(paramInt);
      this.k.b = i3;
      i2 = a(paramei, this.k, parameo);
      i1 = paramInt;
      if (i3 >= i2)
        if (paramInt >= 0)
          break label130;
    }
    label130: for (int i1 = -i2; ; i1 = i2)
    {
      this.a.a(-i1);
      this.o = this.c;
      return i1;
      i1 = -1;
      i2 = v();
      break;
    }
  }

  private View c(boolean paramBoolean)
  {
    int i2 = this.a.b();
    int i3 = this.a.c();
    Object localObject = null;
    int i1 = l() - 1;
    if (i1 >= 0)
    {
      View localView = e(i1);
      int i4 = this.a.a(localView);
      int i5 = this.a.b(localView);
      if ((i5 <= i2) || (i4 >= i3))
        break label106;
      if ((i5 <= i3) || (!paramBoolean))
        return localView;
      if (localObject != null)
        break label106;
      localObject = localView;
    }
    label106: 
    while (true)
    {
      i1 -= 1;
      break;
      return localObject;
    }
  }

  private void d(int paramInt)
  {
    this.j = (paramInt / this.g);
    this.C = View.MeasureSpec.makeMeasureSpec(paramInt, this.b.g());
  }

  private void d(int paramInt1, int paramInt2, int paramInt3)
  {
    int i3;
    int i2;
    int i1;
    if (this.c)
    {
      i3 = u();
      if (paramInt3 != 8)
        break label104;
      if (paramInt1 >= paramInt2)
        break label93;
      i2 = paramInt2 + 1;
      i1 = paramInt1;
      label32: this.f.b(i1);
      switch (paramInt3)
      {
      default:
        label76: if (i2 > i3)
          break;
      case 1:
      case 2:
      case 8:
      }
    }
    while (true)
    {
      return;
      i3 = v();
      break;
      label93: i2 = paramInt1 + 1;
      i1 = paramInt2;
      break label32;
      label104: i2 = paramInt1 + paramInt2;
      i1 = paramInt1;
      break label32;
      this.f.b(paramInt1, paramInt2);
      break label76;
      this.f.a(paramInt1, paramInt2);
      break label76;
      this.f.a(paramInt1, 1);
      this.f.b(paramInt2, 1);
      break label76;
      if (this.c);
      for (paramInt1 = v(); i1 <= paramInt1; paramInt1 = u())
      {
        j();
        return;
      }
    }
  }

  private int g(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    dk localdk = this.a;
    View localView;
    if (!this.G)
    {
      bool1 = true;
      localView = b(bool1);
      if (this.G)
        break label70;
    }
    label70: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.a(parameo, localdk, localView, c(bool1), this, this.G, this.c);
      bool1 = false;
      break;
    }
  }

  private void g()
  {
    this.a = dk.a(this, this.i);
    this.b = dk.a(this, 1 - this.i);
  }

  private int h(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    dk localdk = this.a;
    View localView;
    if (!this.G)
    {
      bool1 = true;
      localView = b(bool1);
      if (this.G)
        break label66;
    }
    label66: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.a(parameo, localdk, localView, c(bool1), this, this.G);
      bool1 = false;
      break;
    }
  }

  private boolean h()
  {
    if ((l() == 0) || (this.n == 0) || (!this.u))
      return false;
    int i2;
    if (this.c)
      i2 = u();
    for (int i1 = v(); (i2 == 0) && (r() != null); i1 = u())
    {
      this.f.a();
      this.t = true;
      j();
      return true;
      i2 = v();
    }
    if (!this.F)
      return false;
    if (this.c);
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem1;
    for (int i3 = -1; ; i3 = 1)
    {
      localFullSpanItem1 = this.f.a(i2, i1 + 1, i3);
      if (localFullSpanItem1 != null)
        break;
      this.F = false;
      this.f.a(i1 + 1);
      return false;
    }
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem2 = this.f.a(i2, localFullSpanItem1.a, i3 * -1);
    if (localFullSpanItem2 == null)
      this.f.a(localFullSpanItem1.a);
    while (true)
    {
      this.t = true;
      j();
      return true;
      this.f.a(localFullSpanItem2.a + 1);
    }
  }

  private int i(eo parameo)
  {
    boolean bool2 = true;
    if (l() == 0)
      return 0;
    dk localdk = this.a;
    View localView;
    if (!this.G)
    {
      bool1 = true;
      localView = b(bool1);
      if (this.G)
        break label66;
    }
    label66: for (boolean bool1 = bool2; ; bool1 = false)
    {
      return ew.b(parameo, localdk, localView, c(bool1), this, this.G);
      bool1 = false;
      break;
    }
  }

  private void i(int paramInt)
  {
    int i1 = 1;
    this.k.e = paramInt;
    cn localcn = this.k;
    boolean bool2 = this.c;
    boolean bool1;
    if (paramInt == -1)
    {
      bool1 = true;
      if (bool2 != bool1)
        break label49;
    }
    label49: for (paramInt = i1; ; paramInt = -1)
    {
      localcn.d = paramInt;
      return;
      bool1 = false;
      break;
    }
  }

  private void i(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    while (i1 < this.g)
    {
      if (!this.h[i1].a.isEmpty())
        a(this.h[i1], paramInt1, paramInt2);
      i1 += 1;
    }
  }

  private int j(int paramInt)
  {
    int i2 = this.h[0].a(paramInt);
    int i1 = 1;
    while (i1 < this.g)
    {
      int i4 = this.h[i1].a(paramInt);
      int i3 = i2;
      if (i4 < i2)
        i3 = i4;
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }

  private int k(int paramInt)
  {
    int i2 = this.h[0].b(paramInt);
    int i1 = 1;
    while (i1 < this.g)
    {
      int i4 = this.h[i1].b(paramInt);
      int i3 = i2;
      if (i4 > i2)
        i3 = i4;
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }

  private boolean l(int paramInt)
  {
    int i1;
    if (this.i == 0)
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 == this.c)
          break label29;
      }
    label29: label63: label66: 
    while (true)
    {
      return true;
      i1 = 0;
      break;
      return false;
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 != this.c)
          break label63;
      }
      for (i1 = 1; ; i1 = 0)
      {
        if (i1 == t())
          break label66;
        return false;
        i1 = 0;
        break;
      }
    }
  }

  private View r()
  {
    int i1 = l() - 1;
    BitSet localBitSet = new BitSet(this.g);
    localBitSet.set(0, this.g, true);
    int i2;
    int i3;
    label57: int i4;
    label65: int i5;
    View localView;
    fj localfj;
    Object localObject;
    if ((this.i == 1) && (t()))
    {
      i2 = 1;
      if (!this.c)
        break label184;
      i3 = -1;
      if (i1 >= i3)
        break label193;
      i4 = 1;
      i5 = i1;
      if (i5 == i3)
        break label458;
      localView = e(i5);
      localfj = (fj)localView.getLayoutParams();
      if (!localBitSet.get(localfj.a.e))
        break label271;
      localObject = localfj.a;
      if (!this.c)
        break label204;
      if (((fm)localObject).b() >= this.a.c())
        break label253;
      if (((fj)((View)((fm)localObject).a.get(((fm)localObject).a.size() - 1)).getLayoutParams()).b)
        break label199;
      i1 = 1;
    }
    while (true)
    {
      if (i1 == 0)
        break label258;
      return localView;
      i2 = -1;
      break;
      label184: i3 = i1 + 1;
      i1 = 0;
      break label57;
      label193: i4 = -1;
      break label65;
      label199: i1 = 0;
      continue;
      label204: if (((fm)localObject).a() > this.a.b())
      {
        if (!((fj)((View)((fm)localObject).a.get(0)).getLayoutParams()).b)
          i1 = 1;
        else
          i1 = 0;
      }
      else
        label253: i1 = 0;
    }
    label258: localBitSet.clear(localfj.a.e);
    label271: int i6;
    if ((!localfj.b) && (i5 + i4 != i3))
    {
      localObject = e(i5 + i4);
      if (this.c)
      {
        i1 = this.a.b(localView);
        i6 = this.a.b((View)localObject);
        if (i1 < i6)
          return localView;
        if (i1 != i6)
          break label460;
        i1 = 1;
      }
    }
    while (true)
    {
      if (i1 != 0)
      {
        localObject = (fj)((View)localObject).getLayoutParams();
        if (localfj.a.e - ((fj)localObject).a.e < 0)
        {
          i1 = 1;
          label380: if (i2 >= 0)
            break label442;
        }
        label442: for (i6 = 1; ; i6 = 0)
        {
          if (i1 == i6)
            break label448;
          return localView;
          i1 = this.a.a(localView);
          i6 = this.a.a((View)localObject);
          if (i1 > i6)
            return localView;
          if (i1 != i6)
            break label460;
          i1 = 1;
          break;
          i1 = 0;
          break label380;
        }
      }
      label448: i5 += i4;
      break;
      label458: return null;
      label460: i1 = 0;
    }
  }

  private void s()
  {
    boolean bool = true;
    if ((this.i == 1) || (!t()))
      bool = this.l;
    while (true)
    {
      this.c = bool;
      return;
      if (this.l)
        bool = false;
    }
  }

  private boolean t()
  {
    return bl.h(this.r) == 1;
  }

  private int u()
  {
    int i1 = l();
    if (i1 == 0)
      return 0;
    return a(e(i1 - 1));
  }

  private int v()
  {
    if (l() == 0)
      return 0;
    return a(e(0));
  }

  public final int a(int paramInt, ei paramei, eo parameo)
  {
    return c(paramInt, paramei, parameo);
  }

  public final int a(ei paramei, eo parameo)
  {
    if (this.i == 0)
      return this.g;
    return super.a(paramei, parameo);
  }

  public final int a(eo parameo)
  {
    return g(parameo);
  }

  public final ee a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new fj(paramContext, paramAttributeSet);
  }

  public final ee a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new fj((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new fj(paramLayoutParams);
  }

  public final View a(View paramView, int paramInt, ei paramei, eo parameo)
  {
    int i2 = 0;
    if (l() == 0)
      return null;
    paramView = b(paramView);
    if (paramView == null)
      return null;
    s();
    switch (paramInt)
    {
    default:
      paramInt = -2147483648;
    case 1:
    case 2:
    case 33:
    case 130:
    case 17:
    case 66:
    }
    while (paramInt == -2147483648)
    {
      return null;
      paramInt = -1;
      continue;
      paramInt = 1;
      continue;
      if (this.i == 1)
      {
        paramInt = -1;
      }
      else
      {
        paramInt = -2147483648;
        continue;
        if (this.i == 1)
        {
          paramInt = 1;
        }
        else
        {
          paramInt = -2147483648;
          continue;
          if (this.i == 0)
          {
            paramInt = -1;
          }
          else
          {
            paramInt = -2147483648;
            continue;
            if (this.i == 0)
              paramInt = 1;
            else
              paramInt = -2147483648;
          }
        }
      }
    }
    Object localObject = (fj)paramView.getLayoutParams();
    boolean bool = ((fj)localObject).b;
    localObject = ((fj)localObject).a;
    if (paramInt == 1);
    for (int i1 = u(); ; i1 = v())
    {
      a(i1, parameo);
      i(paramInt);
      this.k.c = (this.k.d + i1);
      this.k.b = ((int)(0.3333333F * this.a.e()));
      this.k.h = true;
      this.k.a = false;
      a(paramei, this.k, parameo);
      this.o = this.c;
      if (bool)
        break;
      paramei = ((fm)localObject).a(i1, paramInt);
      if ((paramei == null) || (paramei == paramView))
        break;
      return paramei;
    }
    if (l(paramInt))
    {
      i2 = this.g - 1;
      while (i2 >= 0)
      {
        paramei = this.h[i2].a(i1, paramInt);
        if ((paramei != null) && (paramei != paramView))
          return paramei;
        i2 -= 1;
      }
    }
    do
    {
      i2 += 1;
      if (i2 >= this.g)
        break;
      paramei = this.h[i2].a(i1, paramInt);
    }
    while ((paramei == null) || (paramei == paramView));
    return paramei;
    return null;
  }

  public final void a()
  {
    this.f.a();
    j();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    d(paramInt1, paramInt2, 1);
  }

  public final void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i1 = m();
    int i2 = o() + i1;
    int i3 = n() + p();
    if (this.i == 1)
    {
      i1 = a(paramInt2, i3 + paramRect.height(), bl.n(this.r));
      paramInt2 = a(paramInt1, i2 + this.j * this.g, bl.m(this.r));
      paramInt1 = i1;
    }
    while (true)
    {
      h(paramInt2, paramInt1);
      return;
      i1 = a(paramInt1, i2 + paramRect.width(), bl.m(this.r));
      paramInt1 = a(paramInt2, i3 + this.j * this.g, bl.n(this.r));
      paramInt2 = i1;
    }
  }

  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof StaggeredGridLayoutManager.SavedState))
    {
      this.B = ((StaggeredGridLayoutManager.SavedState)paramParcelable);
      j();
    }
  }

  public final void a(RecyclerView paramRecyclerView, ei paramei)
  {
    a(this.H);
    int i1 = 0;
    while (i1 < this.g)
    {
      this.h[i1].c();
      i1 += 1;
    }
  }

  public final void a(ei paramei, eo parameo, View paramView, f paramf)
  {
    int i3 = 1;
    int i1 = 1;
    int i2 = -1;
    paramei = paramView.getLayoutParams();
    if (!(paramei instanceof fj))
    {
      super.a(paramView, paramf);
      return;
    }
    paramei = (fj)paramei;
    int i4;
    int i5;
    if (this.i == 0)
    {
      i4 = paramei.a();
      if (paramei.b)
        i1 = this.g;
      i5 = -1;
      i3 = i1;
      i1 = i5;
    }
    while (true)
    {
      paramf.a(q.a(i4, i3, i2, i1, paramei.b));
      return;
      i1 = paramei.a();
      if (paramei.b)
      {
        i5 = this.g;
        i4 = -1;
        i2 = i1;
        i3 = -1;
        i1 = i5;
      }
      else
      {
        i4 = -1;
        i2 = i1;
        i5 = -1;
        i1 = i3;
        i3 = i5;
      }
    }
  }

  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (l() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      localView1 = b(false);
      localView2 = c(false);
      if ((localView1 != null) && (localView2 != null));
    }
    else
    {
      return;
    }
    int i1 = a(localView1);
    int i2 = a(localView2);
    if (i1 < i2)
    {
      paramAccessibilityEvent.b(i1);
      paramAccessibilityEvent.c(i2);
      return;
    }
    paramAccessibilityEvent.b(i2);
    paramAccessibilityEvent.c(i1);
  }

  public final void a(String paramString)
  {
    if (this.B == null)
      super.a(paramString);
  }

  public final boolean a(ee paramee)
  {
    return paramee instanceof fj;
  }

  public final int b(int paramInt, ei paramei, eo parameo)
  {
    return c(paramInt, paramei, parameo);
  }

  public final int b(ei paramei, eo parameo)
  {
    if (this.i == 1)
      return this.g;
    return super.b(paramei, parameo);
  }

  public final int b(eo parameo)
  {
    return g(parameo);
  }

  public final ee b()
  {
    if (this.i == 0)
      return new fj(-2, -1);
    return new fj(-1, -2);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    d(paramInt1, paramInt2, 2);
  }

  public final int c(eo parameo)
  {
    return h(parameo);
  }

  public final void c(int paramInt)
  {
    if ((this.B != null) && (this.B.a != paramInt))
    {
      StaggeredGridLayoutManager.SavedState localSavedState = this.B;
      localSavedState.d = null;
      localSavedState.c = 0;
      localSavedState.a = -1;
      localSavedState.b = -1;
    }
    this.d = paramInt;
    this.e = -2147483648;
    j();
  }

  public final void c(int paramInt1, int paramInt2)
  {
    d(paramInt1, paramInt2, 4);
  }

  public final void c(ei paramei, eo parameo)
  {
    int i2 = 1;
    fi localfi = this.E;
    localfi.a = -1;
    localfi.b = -2147483648;
    localfi.c = false;
    localfi.d = false;
    if (((this.B != null) || (this.d != -1)) && (parameo.a() == 0))
    {
      c(paramei);
      label61: return;
    }
    int i4;
    int i1;
    label181: Object localObject;
    if (this.B != null)
    {
      if (this.B.c > 0)
        if (this.B.c == this.g)
        {
          i3 = 0;
          if (i3 < this.g)
          {
            this.h[i3].c();
            i4 = this.B.d[i3];
            i1 = i4;
            if (i4 != -2147483648)
              if (!this.B.i)
                break label181;
            for (i1 = i4 + this.a.c(); ; i1 = i4 + this.a.b())
            {
              this.h[i3].c(i1);
              i3 += 1;
              break;
            }
          }
        }
        else
        {
          localObject = this.B;
          ((StaggeredGridLayoutManager.SavedState)localObject).d = null;
          ((StaggeredGridLayoutManager.SavedState)localObject).c = 0;
          ((StaggeredGridLayoutManager.SavedState)localObject).e = 0;
          ((StaggeredGridLayoutManager.SavedState)localObject).f = null;
          ((StaggeredGridLayoutManager.SavedState)localObject).g = null;
          this.B.a = this.B.b;
        }
      this.p = this.B.j;
      a(this.B.h);
      s();
      label389: if (this.B.a != -1)
      {
        this.d = this.B.a;
        localfi.c = this.B.i;
        if (this.B.e > 1)
        {
          this.f.a = this.B.f;
          this.f.b = this.B.g;
        }
        label345: if ((!parameo.g) && (this.d != -1))
          break label594;
        i1 = 0;
        label363: if (i1 == 0)
        {
          if (!this.o)
            break label1169;
          i4 = parameo.a();
          i1 = l() - 1;
          if (i1 < 0)
            break label1163;
          i3 = a(e(i1));
          if ((i3 < 0) || (i3 >= i4))
            break label1154;
          i1 = i3;
        }
      }
    }
    label594: label751: boolean bool;
    label685: label817: label963: label972: label1000: int i5;
    label781: label1049: label1055: label1061: int i6;
    while (true)
    {
      localfi.a = i1;
      localfi.b = -2147483648;
      if ((this.B == null) && ((localfi.c != this.o) || (t() != this.p)))
      {
        this.f.a();
        localfi.d = true;
      }
      if ((l() <= 0) || ((this.B != null) && (this.B.c > 0)))
        break label1391;
      if (!localfi.d)
        break label1233;
      i1 = 0;
      while (i1 < this.g)
      {
        this.h[i1].c();
        if (localfi.b != -2147483648)
          this.h[i1].c(localfi.b);
        i1 += 1;
      }
      localfi.c = this.c;
      break;
      s();
      localfi.c = this.c;
      break label345;
      if ((this.d < 0) || (this.d >= parameo.a()))
      {
        this.d = -1;
        this.e = -2147483648;
        i1 = 0;
        break label363;
      }
      if ((this.B == null) || (this.B.a == -1) || (this.B.c <= 0))
      {
        localObject = b(this.d);
        if (localObject != null)
        {
          if (this.c)
          {
            i1 = u();
            localfi.a = i1;
            if (this.e == -2147483648)
              break label781;
            if (!localfi.c)
              break label751;
          }
          for (localfi.b = (this.a.c() - this.e - this.a.b((View)localObject)); ; localfi.b = (this.a.b() + this.e - this.a.a((View)localObject)))
          {
            i1 = 1;
            break;
            i1 = v();
            break label685;
          }
          if (this.a.c((View)localObject) > this.a.e())
            if (localfi.c)
            {
              i1 = this.a.c();
              localfi.b = i1;
            }
        }
      }
      while (true)
      {
        i1 = 1;
        break;
        i1 = this.a.b();
        break label817;
        i1 = this.a.a((View)localObject) - this.a.b();
        if (i1 < 0)
        {
          localfi.b = (-i1);
        }
        else
        {
          i1 = this.a.c() - this.a.b((View)localObject);
          if (i1 < 0)
          {
            localfi.b = i1;
          }
          else
          {
            localfi.b = -2147483648;
            continue;
            localfi.a = this.d;
            if (this.e == -2147483648)
            {
              i1 = localfi.a;
              if (l() == 0)
              {
                if (this.c)
                  break label1049;
                i1 = -1;
                if (i1 != 1)
                  break label1055;
                bool = true;
                localfi.c = bool;
                if (!localfi.c)
                  break label1061;
                i1 = localfi.e.a.c();
                localfi.b = i1;
              }
            }
            while (true)
            {
              localfi.d = true;
              break;
              if (i1 < v());
              for (bool = true; ; bool = false)
              {
                if (bool == this.c)
                  break label1049;
                i1 = -1;
                break;
              }
              i1 = 1;
              break label963;
              bool = false;
              break label972;
              i1 = localfi.e.a.b();
              break label1000;
              i1 = this.e;
              if (localfi.c)
                localfi.b = (localfi.e.a.c() - i1);
              else
                localfi.b = (i1 + localfi.e.a.b());
            }
            localfi.b = -2147483648;
            localfi.a = this.d;
          }
        }
      }
      label1154: i1 -= 1;
      break label389;
      label1163: i1 = 0;
      continue;
      label1169: i5 = parameo.a();
      i6 = l();
      i3 = 0;
      while (true)
      {
        if (i3 >= i6)
          break label1227;
        i4 = a(e(i3));
        if (i4 >= 0)
        {
          i1 = i4;
          if (i4 < i5)
            break;
        }
        i3 += 1;
      }
      label1227: i1 = 0;
    }
    label1233: int i3 = 0;
    if (i3 < this.g)
    {
      localObject = this.h[i3];
      bool = this.c;
      i5 = localfi.b;
      if (bool)
      {
        i1 = ((fm)localObject).b(-2147483648);
        label1281: ((fm)localObject).c();
        if ((i1 != -2147483648) && ((!bool) || (i1 >= ((fm)localObject).f.a.c())) && ((bool) || (i1 <= ((fm)localObject).f.a.b())))
          break label1356;
      }
      while (true)
      {
        i3 += 1;
        break;
        i1 = ((fm)localObject).a(-2147483648);
        break label1281;
        label1356: i4 = i1;
        if (i5 != -2147483648)
          i4 = i1 + i5;
        ((fm)localObject).c = i4;
        ((fm)localObject).b = i4;
      }
    }
    label1391: a(paramei);
    this.k.a = false;
    this.F = false;
    d(this.b.e());
    a(localfi.a, parameo);
    label1490: float f1;
    label1514: float f2;
    if (localfi.c)
    {
      i(-1);
      a(paramei, this.k, parameo);
      i(1);
      this.k.c = (localfi.a + this.k.d);
      a(paramei, this.k, parameo);
      if (this.b.g() == 1073741824)
        break label1876;
      f1 = 0.0F;
      i4 = l();
      i1 = 0;
      if (i1 >= i4)
        break label1645;
      localObject = e(i1);
      f2 = this.b.c((View)localObject);
      if (f2 < f1)
        break label2060;
      if (!((fj)((View)localObject).getLayoutParams()).b)
        break label2063;
      f2 = 1.0F * f2 / this.g;
    }
    label2054: label2060: label2063: 
    while (true)
    {
      f1 = Math.max(f1, f2);
      while (true)
      {
        i1 += 1;
        break label1514;
        i(1);
        a(paramei, this.k, parameo);
        i(-1);
        this.k.c = (localfi.a + this.k.d);
        a(paramei, this.k, parameo);
        break label1490;
        label1645: i5 = this.j;
        i3 = Math.round(this.g * f1);
        i1 = i3;
        if (this.b.g() == -2147483648)
          i1 = Math.min(i3, this.b.e());
        d(i1);
        if (this.j != i5)
        {
          i1 = 0;
          if (i1 < i4)
          {
            localObject = e(i1);
            fj localfj = (fj)((View)localObject).getLayoutParams();
            if (!localfj.b)
            {
              if ((!t()) || (this.i != 1))
                break label1814;
              ((View)localObject).offsetLeftAndRight(-(this.g - 1 - localfj.a.e) * this.j - -(this.g - 1 - localfj.a.e) * i5);
            }
            while (true)
            {
              i1 += 1;
              break;
              label1814: i3 = localfj.a.e * this.j;
              i6 = localfj.a.e * i5;
              if (this.i == 1)
                ((View)localObject).offsetLeftAndRight(i3 - i6);
              else
                ((View)localObject).offsetTopAndBottom(i3 - i6);
            }
          }
        }
        label1876: if (l() > 0)
        {
          if (this.c)
          {
            a(paramei, parameo, true);
            b(paramei, parameo, false);
          }
        }
        else
        {
          label1904: i4 = 0;
          i3 = 0;
          i1 = i4;
          if (i2 != 0)
          {
            i1 = i4;
            if (!parameo.g)
              if ((this.n == 0) || (l() <= 0) || ((!this.F) && (r() == null)))
                break label2054;
          }
        }
        for (i2 = 1; ; i2 = 0)
        {
          i1 = i3;
          if (i2 != 0)
          {
            a(this.H);
            i1 = i3;
            if (h())
              i1 = 1;
          }
          this.d = -1;
          this.e = -2147483648;
          this.o = localfi.c;
          this.p = t();
          this.B = null;
          if (i1 == 0)
            break label61;
          i2 = 0;
          break;
          b(paramei, parameo, true);
          a(paramei, parameo, false);
          break label1904;
        }
      }
    }
  }

  public final boolean c()
  {
    return this.B == null;
  }

  public final int d(eo parameo)
  {
    return h(parameo);
  }

  public final Parcelable d()
  {
    if (this.B != null)
      return new StaggeredGridLayoutManager.SavedState(this.B);
    StaggeredGridLayoutManager.SavedState localSavedState = new StaggeredGridLayoutManager.SavedState();
    localSavedState.h = this.l;
    localSavedState.i = this.o;
    localSavedState.j = this.p;
    int i1;
    label126: View localView;
    label146: label153: int i2;
    label181: int i3;
    if ((this.f != null) && (this.f.a != null))
    {
      localSavedState.f = this.f.a;
      localSavedState.e = localSavedState.f.length;
      localSavedState.g = this.f.b;
      if (l() <= 0)
        break label310;
      if (!this.o)
        break label250;
      i1 = u();
      localSavedState.a = i1;
      if (!this.c)
        break label258;
      localView = c(true);
      if (localView != null)
        break label268;
      i1 = -1;
      localSavedState.b = i1;
      localSavedState.c = this.g;
      localSavedState.d = new int[this.g];
      i2 = 0;
      if (i2 >= this.g)
        break label328;
      if (!this.o)
        break label277;
      i3 = this.h[i2].b(-2147483648);
      i1 = i3;
      if (i3 != -2147483648)
        i1 = i3 - this.a.c();
    }
    while (true)
    {
      localSavedState.d[i2] = i1;
      i2 += 1;
      break label181;
      localSavedState.e = 0;
      break;
      label250: i1 = v();
      break label126;
      label258: localView = b(true);
      break label146;
      label268: i1 = a(localView);
      break label153;
      label277: i3 = this.h[i2].a(-2147483648);
      i1 = i3;
      if (i3 != -2147483648)
        i1 = i3 - this.a.b();
    }
    label310: localSavedState.a = -1;
    localSavedState.b = -1;
    localSavedState.c = 0;
    label328: return localSavedState;
  }

  public final void d(int paramInt1, int paramInt2)
  {
    d(paramInt1, paramInt2, 8);
  }

  public final int e(eo parameo)
  {
    return i(parameo);
  }

  public final boolean e()
  {
    return this.i == 0;
  }

  public final int f(eo parameo)
  {
    return i(parameo);
  }

  public final void f(int paramInt)
  {
    super.f(paramInt);
    int i1 = 0;
    while (i1 < this.g)
    {
      this.h[i1].d(paramInt);
      i1 += 1;
    }
  }

  public final boolean f()
  {
    return this.i == 1;
  }

  public final void g(int paramInt)
  {
    super.g(paramInt);
    int i1 = 0;
    while (i1 < this.g)
    {
      this.h[i1].d(paramInt);
      i1 += 1;
    }
  }

  public final void h(int paramInt)
  {
    if (paramInt == 0)
      h();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * JD-Core Version:    0.6.2
 */