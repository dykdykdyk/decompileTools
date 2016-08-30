package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.widget.o;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final cv ai = new cv();
  private static final Comparator<cn> c = new ci();
  private static final Interpolator d = new cj();
  private int A = 1;
  private boolean B;
  private boolean C;
  private int D;
  private int E;
  private int F;
  private float G;
  private float H;
  private float I;
  private float J;
  private int K = -1;
  private VelocityTracker L;
  private int M;
  private int N;
  private int O;
  private int P;
  private boolean Q;
  private o R;
  private o S;
  private boolean T = true;
  private boolean U = false;
  private boolean V;
  private int W;
  private List<cr> aa;
  private cr ab;
  private cr ac;
  private cq ad;
  private cs ae;
  private Method af;
  private int ag;
  private ArrayList<View> ah;
  private final Runnable aj = new ck(this);
  private int ak = 0;
  private int b;
  private final ArrayList<cn> e = new ArrayList();
  private final cn f = new cn();
  private final Rect g = new Rect();
  private be h;
  private int i;
  private int j = -1;
  private Parcelable k = null;
  private ClassLoader l = null;
  private Scroller m;
  private boolean n;
  private ct o;
  private int p;
  private Drawable q;
  private int r;
  private int s;
  private float t = -3.402824E+038F;
  private float u = 3.4028235E+38F;
  private int v;
  private int w;
  private boolean x;
  private boolean y;
  private boolean z;

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    d();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }

  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null)
      paramRect = new Rect();
    while (true)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      paramRect.left = paramView.getLeft();
      paramRect.right = paramView.getRight();
      paramRect.top = paramView.getTop();
      paramRect.bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        paramRect.left += paramView.getLeft();
        paramRect.right += paramView.getRight();
        paramRect.top += paramView.getTop();
        paramRect.bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }

  private cn a(int paramInt1, int paramInt2)
  {
    cn localcn = new cn();
    localcn.b = paramInt1;
    localcn.a = this.h.a(this, paramInt1);
    localcn.d = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= this.e.size()))
    {
      this.e.add(localcn);
      return localcn;
    }
    this.e.add(paramInt2, localcn);
    return localcn;
  }

  private cn a(View paramView)
  {
    int i1 = 0;
    while (i1 < this.e.size())
    {
      cn localcn = (cn)this.e.get(i1);
      if (this.h.a(paramView, localcn.a))
        return localcn;
      i1 += 1;
    }
    return null;
  }

  private void a(int paramInt)
  {
    Object localObject2;
    if (this.i != paramInt)
    {
      localObject2 = b(this.i);
      this.i = paramInt;
    }
    while (true)
    {
      if (this.h == null)
        e();
      do
      {
        return;
        if (this.z)
        {
          e();
          return;
        }
      }
      while (getWindowToken() == null);
      paramInt = this.A;
      int i7 = Math.max(0, this.i - paramInt);
      int i5 = this.h.a();
      int i6 = Math.min(i5 - 1, paramInt + this.i);
      Object localObject1;
      if (i5 != this.b)
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.b + ", found: " + i5 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + this.h.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          while (true)
            localObject1 = Integer.toHexString(getId());
        }
      paramInt = 0;
      if (paramInt < this.e.size())
      {
        localObject1 = (cn)this.e.get(paramInt);
        if (((cn)localObject1).b >= this.i)
          if (((cn)localObject1).b != this.i)
            break label1182;
      }
      while (true)
      {
        if ((localObject1 == null) && (i5 > 0));
        for (Object localObject3 = a(this.i, paramInt); ; localObject3 = localObject1)
        {
          label310: int i8;
          float f2;
          label323: int i1;
          float f3;
          int i2;
          label345: float f1;
          if (localObject3 != null)
          {
            int i4 = paramInt - 1;
            int i3;
            Object localObject4;
            if (i4 >= 0)
            {
              localObject1 = (cn)this.e.get(i4);
              i8 = getClientWidth();
              if (i8 > 0)
                break label502;
              f2 = 0.0F;
              i1 = this.i;
              f3 = 0.0F;
              i3 = i1 - 1;
              i2 = paramInt;
              localObject4 = localObject1;
              if (i3 < 0)
                break label652;
              if ((f3 < f2) || (i3 >= i7))
                break label532;
              if (localObject4 == null)
                break label652;
              localObject1 = localObject4;
              paramInt = i4;
              f1 = f3;
              i1 = i2;
              if (i3 == localObject4.b)
              {
                localObject1 = localObject4;
                paramInt = i4;
                f1 = f3;
                i1 = i2;
                if (!localObject4.c)
                {
                  this.e.remove(i4);
                  this.h.b(this, i3);
                  paramInt = i4 - 1;
                  i1 = i2 - 1;
                  if (paramInt < 0)
                    break label523;
                  localObject1 = (cn)this.e.get(paramInt);
                  f1 = f3;
                }
              }
            }
            while (true)
            {
              i3 -= 1;
              localObject4 = localObject1;
              i4 = paramInt;
              f3 = f1;
              i2 = i1;
              break label345;
              paramInt += 1;
              break;
              localObject1 = null;
              break label310;
              label502: f2 = 2.0F - ((cn)localObject3).d + getPaddingLeft() / i8;
              break label323;
              label523: localObject1 = null;
              f1 = f3;
              continue;
              label532: if ((localObject4 != null) && (i3 == localObject4.b))
              {
                f1 = f3 + localObject4.d;
                paramInt = i4 - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (cn)this.e.get(paramInt);
                  i1 = i2;
                }
                else
                {
                  localObject1 = null;
                  i1 = i2;
                }
              }
              else
              {
                f1 = f3 + a(i3, i4 + 1).d;
                i1 = i2 + 1;
                if (i4 >= 0)
                {
                  localObject1 = (cn)this.e.get(i4);
                  paramInt = i4;
                }
                else
                {
                  localObject1 = null;
                  paramInt = i4;
                }
              }
            }
            label652: f1 = ((cn)localObject3).d;
            paramInt = i2 + 1;
            if (f1 < 2.0F)
              if (paramInt < this.e.size())
              {
                localObject1 = (cn)this.e.get(paramInt);
                label693: if (i8 > 0)
                  break label813;
                f2 = 0.0F;
                label700: i1 = this.i;
                i1 += 1;
                label712: if (i1 >= i5)
                  break label956;
                if ((f1 < f2) || (i1 <= i6))
                  break label834;
                if (localObject1 == null)
                  break label956;
                if ((i1 != ((cn)localObject1).b) || (((cn)localObject1).c))
                  break label1172;
                this.e.remove(paramInt);
                this.h.b(this, i1);
                if (paramInt >= this.e.size())
                  break label828;
                localObject1 = (cn)this.e.get(paramInt);
              }
          }
          label1164: label1170: label1172: 
          while (true)
          {
            i1 += 1;
            break label712;
            localObject1 = null;
            break label693;
            label813: f2 = getPaddingRight() / i8 + 2.0F;
            break label700;
            label828: localObject1 = null;
            continue;
            label834: if ((localObject1 != null) && (i1 == ((cn)localObject1).b))
            {
              f3 = ((cn)localObject1).d;
              paramInt += 1;
              if (paramInt < this.e.size());
              for (localObject1 = (cn)this.e.get(paramInt); ; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = a(i1, paramInt);
            paramInt += 1;
            f3 = ((cn)localObject1).d;
            if (paramInt < this.e.size());
            for (localObject1 = (cn)this.e.get(paramInt); ; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            label956: a((cn)localObject3, i2, (cn)localObject2);
            i1 = getChildCount();
            paramInt = 0;
            while (paramInt < i1)
            {
              localObject2 = getChildAt(paramInt);
              localObject1 = (co)((View)localObject2).getLayoutParams();
              ((co)localObject1).f = paramInt;
              if ((!((co)localObject1).a) && (((co)localObject1).c == 0.0F))
              {
                localObject2 = a((View)localObject2);
                if (localObject2 != null)
                {
                  ((co)localObject1).c = ((cn)localObject2).d;
                  ((co)localObject1).e = ((cn)localObject2).b;
                }
              }
              paramInt += 1;
            }
            e();
            if (!hasFocus())
              break;
            localObject1 = findFocus();
            if (localObject1 != null);
            for (localObject1 = b((View)localObject1); ; localObject1 = null)
            {
              if ((localObject1 != null) && (((cn)localObject1).b == this.i))
                break label1170;
              paramInt = 0;
              while (true)
              {
                if (paramInt >= getChildCount())
                  break label1164;
                localObject1 = getChildAt(paramInt);
                localObject2 = a((View)localObject1);
                if ((localObject2 != null) && (((cn)localObject2).b == this.i) && (((View)localObject1).requestFocus(2)))
                  break;
                paramInt += 1;
              }
              break;
            }
            break;
          }
        }
        label1182: localObject1 = null;
      }
      localObject2 = null;
    }
  }

  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1;
    int i2;
    int i7;
    int i5;
    Object localObject;
    int i3;
    int i4;
    label132: int i9;
    if (this.W > 0)
    {
      int i6 = getScrollX();
      i1 = getPaddingLeft();
      i2 = getPaddingRight();
      i7 = getWidth();
      int i8 = getChildCount();
      i5 = 0;
      if (i5 < i8)
      {
        localObject = getChildAt(i5);
        co localco = (co)((View)localObject).getLayoutParams();
        if (!localco.a)
          break label464;
        switch (localco.b & 0x7)
        {
        case 2:
        case 4:
        default:
          i3 = i1;
          i4 = i2;
          i2 = i1;
          i1 = i4;
          i9 = i3 + i6 - ((View)localObject).getLeft();
          i3 = i1;
          i4 = i2;
          if (i9 != 0)
          {
            ((View)localObject).offsetLeftAndRight(i9);
            i4 = i2;
            i3 = i1;
          }
          break;
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i5 += 1;
      i1 = i4;
      i2 = i3;
      break;
      i3 = ((View)localObject).getWidth();
      i4 = i3 + i1;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = Math.max((i7 - ((View)localObject).getMeasuredWidth()) / 2, i1);
      i4 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = i7 - i2 - ((View)localObject).getMeasuredWidth();
      i9 = ((View)localObject).getMeasuredWidth();
      i4 = i1;
      i1 = i2 + i9;
      i2 = i4;
      break label132;
      if (this.ab != null)
        this.ab.a(paramInt1, paramFloat, paramInt2);
      if (this.aa != null)
      {
        i2 = this.aa.size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject = (cr)this.aa.get(i1);
          if (localObject != null)
            ((cr)localObject).a(paramInt1, paramFloat, paramInt2);
          i1 += 1;
        }
      }
      if (this.ac != null)
        this.ac.a(paramInt1, paramFloat, paramInt2);
      if (this.ae != null)
      {
        getScrollX();
        paramInt2 = getChildCount();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          localObject = getChildAt(paramInt1);
          if (!((co)((View)localObject).getLayoutParams()).a)
          {
            ((View)localObject).getLeft();
            getClientWidth();
          }
          paramInt1 += 1;
        }
      }
      this.V = true;
      return;
      label464: i3 = i2;
      i4 = i1;
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.e.isEmpty()))
    {
      if (!this.m.isFinished())
      {
        this.m.setFinalX(getCurrentItem() * getClientWidth());
        return;
      }
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      f1 = getScrollX() / (paramInt2 - i3 - i4 + paramInt4);
      scrollTo((int)((paramInt1 - i1 - i2 + paramInt3) * f1), getScrollY());
      return;
    }
    cn localcn = b(this.i);
    if (localcn != null);
    for (float f1 = Math.min(localcn.e, this.u); ; f1 = 0.0F)
    {
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX())
        break;
      a(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }

  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    cn localcn = b(paramInt1);
    if (localcn != null);
    for (int i2 = (int)(getClientWidth() * Math.max(this.t, Math.min(localcn.e, this.u))); ; i2 = 0)
    {
      if (paramBoolean1)
      {
        if (getChildCount() == 0)
        {
          setScrollingCacheEnabled(false);
          if (paramBoolean2)
            d(paramInt1);
          return;
        }
        int i1;
        if ((this.m != null) && (!this.m.isFinished()))
        {
          i1 = 1;
          label87: if (i1 == 0)
            break label184;
          if (!this.n)
            break label172;
          i1 = this.m.getCurrX();
          label108: this.m.abortAnimation();
          setScrollingCacheEnabled(false);
        }
        int i3;
        int i4;
        while (true)
        {
          i3 = getScrollY();
          i2 -= i1;
          i4 = 0 - i3;
          if ((i2 != 0) || (i4 != 0))
            break label193;
          a(false);
          b();
          setScrollState(0);
          break;
          i1 = 0;
          break label87;
          label172: i1 = this.m.getStartX();
          break label108;
          label184: i1 = getScrollX();
        }
        label193: setScrollingCacheEnabled(true);
        setScrollState(2);
        int i5 = getClientWidth();
        int i6 = i5 / 2;
        float f3 = Math.min(1.0F, 1.0F * Math.abs(i2) / i5);
        float f1 = i6;
        float f2 = i6;
        f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.47123891676382D));
        paramInt2 = Math.abs(paramInt2);
        if (paramInt2 > 0);
        for (paramInt2 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt2)) * 4; ; paramInt2 = (int)((Math.abs(i2) / (f1 * 1.0F + this.p) + 1.0F) * 100.0F))
        {
          paramInt2 = Math.min(paramInt2, 600);
          this.n = false;
          this.m.startScroll(i1, i3, i2, i4, paramInt2);
          bl.d(this);
          break;
          f1 = i5;
        }
      }
      if (paramBoolean2)
        d(paramInt1);
      a(false);
      scrollTo(i2, 0);
      c(i2);
      return;
    }
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((this.h == null) || (this.h.a() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.i == paramInt1) && (this.e.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1;
    if (paramInt1 < 0)
      i1 = 0;
    while (true)
    {
      paramInt1 = this.A;
      if ((i1 <= this.i + paramInt1) && (i1 >= this.i - paramInt1))
        break;
      paramInt1 = 0;
      while (paramInt1 < this.e.size())
      {
        ((cn)this.e.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i1 = paramInt1;
      if (paramInt1 >= this.h.a())
        i1 = this.h.a() - 1;
    }
    paramBoolean2 = bool;
    if (this.i != i1)
      paramBoolean2 = true;
    if (this.T)
    {
      this.i = i1;
      if (paramBoolean2)
        d(i1);
      requestLayout();
      return;
    }
    a(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }

  private void a(cn paramcn1, int paramInt, cn paramcn2)
  {
    int i3 = this.h.a();
    int i1 = getClientWidth();
    if (i1 > 0);
    float f1;
    int i2;
    for (float f2 = this.p / i1; ; f2 = 0.0F)
    {
      if (paramcn2 == null)
        break label365;
      i1 = paramcn2.b;
      if (i1 >= paramcn1.b)
        break;
      f1 = paramcn2.e + paramcn2.d + f2;
      i2 = 0;
      i1 += 1;
      if ((i1 > paramcn1.b) || (i2 >= this.e.size()))
        break label365;
      for (paramcn2 = (cn)this.e.get(i2); (i1 > paramcn2.b) && (i2 < this.e.size() - 1); paramcn2 = (cn)this.e.get(i2))
        i2 += 1;
    }
    while (true)
      if (i1 < paramcn2.b)
      {
        i1 += 1;
        f1 = 1.0F + f2 + f1;
      }
      else
      {
        paramcn2.e = f1;
        f1 += paramcn2.d + f2;
        i1 += 1;
        break;
        if (i1 > paramcn1.b)
        {
          i2 = this.e.size();
          f1 = paramcn2.e;
          i2 -= 1;
          i1 -= 1;
          if ((i1 >= paramcn1.b) && (i2 >= 0))
            for (paramcn2 = (cn)this.e.get(i2); (i1 < paramcn2.b) && (i2 > 0); paramcn2 = (cn)this.e.get(i2))
              i2 -= 1;
        }
        while (true)
          if (i1 > paramcn2.b)
          {
            i1 -= 1;
            f1 -= 1.0F + f2;
          }
          else
          {
            f1 -= paramcn2.d + f2;
            paramcn2.e = f1;
            i1 -= 1;
            break;
            label365: int i4 = this.e.size();
            float f3 = paramcn1.e;
            i1 = paramcn1.b - 1;
            if (paramcn1.b == 0)
            {
              f1 = paramcn1.e;
              this.t = f1;
              if (paramcn1.b != i3 - 1)
                break label498;
              f1 = paramcn1.e + paramcn1.d - 1.0F;
              label431: this.u = f1;
              i2 = paramInt - 1;
              f1 = f3;
            }
            while (true)
            {
              if (i2 < 0)
                break label551;
              paramcn2 = (cn)this.e.get(i2);
              while (true)
                if (i1 > paramcn2.b)
                {
                  i1 -= 1;
                  f1 -= 1.0F + f2;
                  continue;
                  f1 = -3.402824E+038F;
                  break;
                  label498: f1 = 3.4028235E+38F;
                  break label431;
                }
              f1 -= paramcn2.d + f2;
              paramcn2.e = f1;
              if (paramcn2.b == 0)
                this.t = f1;
              i1 -= 1;
              i2 -= 1;
            }
            label551: f1 = paramcn1.e + paramcn1.d + f2;
            i2 = paramcn1.b + 1;
            i1 = paramInt + 1;
            paramInt = i2;
            while (i1 < i4)
            {
              paramcn1 = (cn)this.e.get(i1);
              while (paramInt < paramcn1.b)
              {
                paramInt += 1;
                f1 += 1.0F + f2;
              }
              if (paramcn1.b == i3 - 1)
                this.u = (paramcn1.d + f1 - 1.0F);
              paramcn1.e = f1;
              f1 += paramcn1.d + f2;
              paramInt += 1;
              i1 += 1;
            }
            this.U = false;
            return;
          }
      }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i1) == this.K)
      if (i1 != 0)
        break label56;
    label56: for (i1 = 1; ; i1 = 0)
    {
      this.G = at.c(paramMotionEvent, i1);
      this.K = at.b(paramMotionEvent, i1);
      if (this.L != null)
        this.L.clear();
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    int i1;
    if (this.ak == 2)
    {
      i1 = 1;
      if (i1 != 0)
      {
        setScrollingCacheEnabled(false);
        if (this.m.isFinished())
          break label170;
      }
    }
    label170: for (int i2 = 1; ; i2 = 0)
    {
      if (i2 != 0)
      {
        this.m.abortAnimation();
        i2 = getScrollX();
        i3 = getScrollY();
        int i4 = this.m.getCurrX();
        int i5 = this.m.getCurrY();
        if ((i2 != i4) || (i3 != i5))
        {
          scrollTo(i4, i5);
          if (i4 != i2)
            c(i4);
        }
      }
      this.z = false;
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < this.e.size())
      {
        cn localcn = (cn)this.e.get(i1);
        if (localcn.c)
        {
          localcn.c = false;
          i2 = 1;
        }
        i1 += 1;
      }
      i1 = 0;
      break;
    }
    if (i2 != 0)
    {
      if (paramBoolean)
        bl.a(this, this.aj);
    }
    else
      return;
    this.aj.run();
  }

  private boolean a(float paramFloat)
  {
    int i2 = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = this.G;
    this.G = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int i3 = getClientWidth();
    paramFloat = i3 * this.t;
    f1 = i3;
    float f3 = this.u;
    cn localcn1 = (cn)this.e.get(0);
    cn localcn2 = (cn)this.e.get(this.e.size() - 1);
    if (localcn1.b != 0)
      paramFloat = localcn1.e * i3;
    for (int i1 = 0; ; i1 = 1)
    {
      if (localcn2.b != this.h.a() - 1)
      {
        f1 = localcn2.e * i3;
        i2 = 0;
      }
      while (true)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i1 != 0)
          {
            bool1 = this.R.a(Math.abs(paramFloat - f2) / i3);
            f1 = paramFloat;
          }
        }
        while (true)
        {
          this.G += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          c((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (i2 != 0)
              bool1 = this.S.a(Math.abs(f2 - f1) / i3);
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }

  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      i1 = localViewGroup.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = localViewGroup.getChildAt(i1);
        if ((paramInt2 + i2 < localView.getLeft()) || (paramInt2 + i2 >= localView.getRight()) || (paramInt3 + i3 < localView.getTop()) || (paramInt3 + i3 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i2 - localView.getLeft(), paramInt3 + i3 - localView.getTop())));
      }
    }
    while ((paramBoolean) && (bl.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }

  private cn b(int paramInt)
  {
    int i1 = 0;
    while (i1 < this.e.size())
    {
      cn localcn = (cn)this.e.get(i1);
      if (localcn.b == paramInt)
        return localcn;
      i1 += 1;
    }
    return null;
  }

  private cn b(View paramView)
  {
    while (true)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this)
        break;
      if ((localViewParent == null) || (!(localViewParent instanceof View)))
        return null;
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }

  private boolean c(int paramInt)
  {
    if (this.e.size() == 0)
    {
      if (this.T);
      do
      {
        return false;
        this.V = false;
        a(0, 0.0F, 0);
      }
      while (this.V);
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    cn localcn = h();
    int i2 = getClientWidth();
    int i3 = this.p;
    float f1 = this.p / i2;
    int i1 = localcn.b;
    f1 = (paramInt / i2 - localcn.e) / (localcn.d + f1);
    paramInt = (int)((i3 + i2) * f1);
    this.V = false;
    a(i1, f1, paramInt);
    if (!this.V)
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    return true;
  }

  private void d()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.m = new Scroller(localContext, d);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f1 = localContext.getResources().getDisplayMetrics().density;
    this.F = cc.a(localViewConfiguration);
    this.M = ((int)(400.0F * f1));
    this.N = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.R = new o(localContext);
    this.S = new o(localContext);
    this.O = ((int)(25.0F * f1));
    this.P = ((int)(2.0F * f1));
    this.D = ((int)(16.0F * f1));
    bl.a(this, new cp(this));
    if (bl.e(this) == 0)
      bl.c(this, 1);
    bl.a(this, new cl(this));
  }

  private void d(int paramInt)
  {
    if (this.ab != null)
      this.ab.a(paramInt);
    if (this.aa != null)
    {
      int i2 = this.aa.size();
      int i1 = 0;
      while (i1 < i2)
      {
        cr localcr = (cr)this.aa.get(i1);
        if (localcr != null)
          localcr.a(paramInt);
        i1 += 1;
      }
    }
    if (this.ac != null)
      this.ac.a(paramInt);
  }

  private void e()
  {
    if (this.ag != 0)
    {
      if (this.ah == null)
        this.ah = new ArrayList();
      while (true)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          this.ah.add(localView);
          i1 += 1;
        }
        this.ah.clear();
      }
      Collections.sort(this.ah, ai);
    }
  }

  private boolean e(int paramInt)
  {
    boolean bool = false;
    View localView = findFocus();
    Object localObject;
    int i2;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject))
        break label320;
      if (paramInt != 17)
        break label266;
      i1 = a(this.g, localView).left;
      i2 = a(this.g, (View)localObject).left;
      if ((localObject != null) && (i1 >= i2))
      {
        bool = i();
        label92: if (bool)
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        return bool;
      }
    }
    else
    {
      if (localView == null)
        break label396;
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup))
        break label403;
      if (localObject != this);
    }
    label266: label396: label403: for (int i1 = 1; ; i1 = 0)
    {
      if (i1 == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        while (true)
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label92;
        if (paramInt != 66)
          break label92;
        i1 = a(this.g, localView).left;
        i2 = a(this.g, (View)localObject).left;
        if ((localObject == null) || (i1 > i2))
        {
          bool = localView.requestFocus();
          break label92;
          label320: if ((paramInt == 17) || (paramInt == 1))
          {
            bool = i();
            break label92;
          }
          if ((paramInt != 66) && (paramInt != 2))
            break label92;
        }
        if ((this.h != null) && (this.i < this.h.a() - 1))
        {
          setCurrentItem$2563266(this.i + 1);
          bool = true;
          break label92;
        }
        bool = false;
        break label92;
      }
      localObject = localView;
      break;
    }
  }

  private boolean f()
  {
    this.K = -1;
    this.B = false;
    this.C = false;
    if (this.L != null)
    {
      this.L.recycle();
      this.L = null;
    }
    return this.R.c() | this.S.c();
  }

  private void g()
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null)
      localViewParent.requestDisallowInterceptTouchEvent(true);
  }

  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }

  private cn h()
  {
    int i1 = getClientWidth();
    float f1;
    float f2;
    label36: float f4;
    float f3;
    int i3;
    int i2;
    Object localObject1;
    label53: Object localObject2;
    cn localcn;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0)
        break label203;
      f2 = this.p / i1;
      f4 = 0.0F;
      f3 = 0.0F;
      i3 = -1;
      i1 = 0;
      i2 = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i1 < this.e.size())
      {
        localcn = (cn)this.e.get(i1);
        if ((i2 != 0) || (localcn.b == i3 + 1))
          break label238;
        localcn = this.f;
        localcn.e = (f4 + f3 + f2);
        localcn.b = (i3 + 1);
        localcn.d = 1.0F;
        i1 -= 1;
      }
    }
    label203: label208: label238: 
    while (true)
    {
      f3 = localcn.e;
      f4 = localcn.d;
      if (i2 == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3);
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i1 != this.e.size() - 1))
          break label208;
        localObject2 = localcn;
      }
      return localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = localcn.b;
      f4 = localcn.d;
      i2 = 0;
      i1 += 1;
      localObject1 = localcn;
      break label53;
    }
  }

  private boolean i()
  {
    if (this.i > 0)
    {
      setCurrentItem$2563266(this.i - 1);
      return true;
    }
    return false;
  }

  private void setCurrentItem$2563266(int paramInt)
  {
    this.z = false;
    a(paramInt, true, false);
  }

  private void setScrollState(int paramInt)
  {
    int i4 = 0;
    if (this.ak == paramInt);
    label38: label73: label79: 
    do
    {
      return;
      this.ak = paramInt;
      int i1;
      int i2;
      if (this.ae != null)
      {
        if (paramInt != 0)
        {
          i1 = 1;
          int i5 = getChildCount();
          i2 = 0;
          if (i2 >= i5)
            break label79;
          if (i1 == 0)
            break label73;
        }
        for (int i3 = 2; ; i3 = 0)
        {
          bl.d(getChildAt(i2), i3);
          i2 += 1;
          break label38;
          i1 = 0;
          break;
        }
      }
      if (this.ab != null)
        this.ab.b(paramInt);
      if (this.aa != null)
      {
        i2 = this.aa.size();
        i1 = i4;
        while (i1 < i2)
        {
          cr localcr = (cr)this.aa.get(i1);
          if (localcr != null)
            localcr.b(paramInt);
          i1 += 1;
        }
      }
    }
    while (this.ac == null);
    this.ac.b(paramInt);
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.y != paramBoolean)
      this.y = paramBoolean;
  }

  final void a()
  {
    int i1 = this.h.a();
    this.b = i1;
    if ((this.e.size() < this.A * 2 + 1) && (this.e.size() < i1));
    int i3;
    int i2;
    for (i1 = 1; ; i1 = 0)
    {
      i3 = this.i;
      i2 = 0;
      while (i2 < this.e.size())
      {
        this.e.get(i2);
        i2 += 1;
      }
    }
    Collections.sort(this.e, c);
    if (i1 != 0)
    {
      i2 = getChildCount();
      i1 = 0;
      while (i1 < i2)
      {
        co localco = (co)getChildAt(i1).getLayoutParams();
        if (!localco.a)
          localco.c = 0.0F;
        i1 += 1;
      }
      a(i3, false, true);
      requestLayout();
    }
  }

  public final void a(cr paramcr)
  {
    if (this.aa == null)
      this.aa = new ArrayList();
    this.aa.add(paramcr);
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i2 = paramArrayList.size();
    int i3 = getDescendantFocusability();
    if (i3 != 393216)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          cn localcn = a(localView);
          if ((localcn != null) && (localcn.b == this.i))
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    if (((i3 == 262144) && (i2 != paramArrayList.size())) || (!isFocusable()));
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null))
      return;
    paramArrayList.add(this);
  }

  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cn localcn = a(localView);
        if ((localcn != null) && (localcn.b == this.i))
          localView.addTouchables(paramArrayList);
      }
      i1 += 1;
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams))
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    while (true)
    {
      co localco = (co)paramLayoutParams;
      localco.a |= paramView instanceof cm;
      if (this.x)
      {
        if ((localco != null) && (localco.a))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localco.d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }

  final void b()
  {
    a(this.i);
  }

  public boolean canScrollHorizontally(int paramInt)
  {
    if (this.h == null);
    int i1;
    int i2;
    do
    {
      do
      {
        return false;
        i1 = getClientWidth();
        i2 = getScrollX();
        if (paramInt >= 0)
          break;
      }
      while (i2 <= (int)(i1 * this.t));
      return true;
    }
    while ((paramInt <= 0) || (i2 >= (int)(i1 * this.u)));
    return true;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof co)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void computeScroll()
  {
    this.n = true;
    if ((!this.m.isFinished()) && (this.m.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.m.getCurrX();
      int i4 = this.m.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!c(i3))
        {
          this.m.abortAnimation();
          scrollTo(0, i4);
        }
      }
      bl.d(this);
      return;
    }
    a(true);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool1 = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      if (bool1)
        bool2 = true;
      return bool2;
      bool1 = e(17);
      continue;
      bool1 = e(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (u.a(paramKeyEvent))
      {
        bool1 = e(2);
      }
      else
      {
        if (!u.a(paramKeyEvent, 1))
          break;
        bool1 = e(1);
      }
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int i2 = getChildCount();
    int i1 = 0;
    while (true)
    {
      bool1 = bool2;
      if (i1 >= i2)
        break;
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cn localcn = a(localView);
        if ((localcn != null) && (localcn.b == this.i) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
          return true;
      }
      i1 += 1;
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i3 = 0;
    int i1 = 0;
    int i4 = bl.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (this.h != null) && (this.h.a() > 1)))
    {
      int i2;
      if (!this.R.a())
      {
        i3 = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i4 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.t * i4);
        this.R.a(i1, i4);
        i2 = this.R.a(paramCanvas) | false;
        paramCanvas.restoreToCount(i3);
      }
      i3 = i2;
      if (!this.S.a())
      {
        i4 = paramCanvas.save();
        i3 = getWidth();
        int i5 = getHeight();
        int i6 = getPaddingTop();
        int i7 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(this.u + 1.0F) * i3);
        this.S.a(i5 - i6 - i7, i3);
        bool = i2 | this.S.a(paramCanvas);
        paramCanvas.restoreToCount(i4);
      }
    }
    while (true)
    {
      if (bool)
        bl.d(this);
      return;
      this.R.b();
      this.S.b();
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.q;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new co();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new co(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  public be getAdapter()
  {
    return this.h;
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (this.ag == 2)
      i1 = paramInt1 - 1 - paramInt2;
    return ((co)((View)this.ah.get(i1)).getLayoutParams()).f;
  }

  public int getCurrentItem()
  {
    return this.i;
  }

  public int getOffscreenPageLimit()
  {
    return this.A;
  }

  public int getPageMargin()
  {
    return this.p;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.T = true;
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.aj);
    if ((this.m != null) && (!this.m.isFinished()))
      this.m.abortAnimation();
    super.onDetachedFromWindow();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.p > 0) && (this.q != null) && (this.e.size() > 0) && (this.h != null))
    {
      int i3 = getScrollX();
      int i4 = getWidth();
      float f3 = this.p / i4;
      Object localObject = (cn)this.e.get(0);
      float f1 = ((cn)localObject).e;
      int i5 = this.e.size();
      int i1 = ((cn)localObject).b;
      int i6 = ((cn)this.e.get(i5 - 1)).b;
      int i2 = 0;
      if (i1 < i6)
      {
        while ((i1 > ((cn)localObject).b) && (i2 < i5))
        {
          localObject = this.e;
          i2 += 1;
          localObject = (cn)((ArrayList)localObject).get(i2);
        }
        float f2;
        if (i1 == ((cn)localObject).b)
          f2 = (((cn)localObject).e + ((cn)localObject).d) * i4;
        for (f1 = ((cn)localObject).e + ((cn)localObject).d + f3; ; f1 += 1.0F + f3)
        {
          if (this.p + f2 > i3)
          {
            this.q.setBounds(Math.round(f2), this.r, Math.round(this.p + f2), this.s);
            this.q.draw(paramCanvas);
          }
          if (f2 > i3 + i4)
            return;
          i1 += 1;
          break;
          f2 = (1.0F + f1) * i4;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 == 3) || (i1 == 1))
      f();
    do
    {
      return false;
      if (i1 == 0)
        break;
      if (this.B)
        return true;
    }
    while (this.C);
    switch (i1)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.L == null)
        this.L = VelocityTracker.obtain();
      this.L.addMovement(paramMotionEvent);
      return this.B;
      i1 = this.K;
      if (i1 != -1)
      {
        i1 = at.a(paramMotionEvent, i1);
        float f2 = at.c(paramMotionEvent, i1);
        float f1 = f2 - this.G;
        float f4 = Math.abs(f1);
        float f3 = at.d(paramMotionEvent, i1);
        float f5 = Math.abs(f3 - this.J);
        if (f1 != 0.0F)
        {
          float f6 = this.G;
          if (((f6 < this.E) && (f1 > 0.0F)) || ((f6 > getWidth() - this.E) && (f1 < 0.0F)));
          for (i1 = 1; (i1 == 0) && (a(this, false, (int)f1, (int)f2, (int)f3)); i1 = 0)
          {
            this.G = f2;
            this.H = f3;
            this.C = true;
            return false;
          }
        }
        if ((f4 > this.F) && (0.5F * f4 > f5))
        {
          this.B = true;
          g();
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = this.I + this.F;
            label328: this.G = f1;
            this.H = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.B) && (a(f2)))
        {
          bl.d(this);
          break;
          f1 = this.I - this.F;
          break label328;
          if (f5 > this.F)
            this.C = true;
        }
        f1 = paramMotionEvent.getX();
        this.I = f1;
        this.G = f1;
        f1 = paramMotionEvent.getY();
        this.J = f1;
        this.H = f1;
        this.K = at.b(paramMotionEvent, 0);
        this.C = false;
        this.n = true;
        this.m.computeScrollOffset();
        if ((this.ak == 2) && (Math.abs(this.m.getFinalX() - this.m.getCurrX()) > this.P))
        {
          this.m.abortAnimation();
          this.z = false;
          b();
          this.B = true;
          g();
          setScrollState(1);
        }
        else
        {
          a(false);
          this.B = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i6 = getChildCount();
    int i8 = paramInt3 - paramInt1;
    int i7 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i9 = getScrollX();
    int i2 = 0;
    int i4 = 0;
    View localView;
    co localco;
    int i10;
    int i3;
    label154: int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      if (localView.getVisibility() == 8)
        break label671;
      localco = (co)localView.getLayoutParams();
      if (!localco.a)
        break label671;
      paramInt4 = localco.b;
      i10 = localco.b;
      switch (paramInt4 & 0x7)
      {
      case 2:
      case 4:
      default:
        paramInt4 = paramInt2;
        i3 = paramInt2;
        switch (i10 & 0x70)
        {
        default:
          i5 = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = i5;
          label204: paramInt4 += i9;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          i2 += 1;
          paramInt4 = i1;
          paramInt3 = i3;
          i1 = paramInt1;
          paramInt1 = i2;
        case 48:
        case 16:
        case 80:
        }
        break;
      case 3:
      case 1:
      case 5:
      }
    }
    while (true)
    {
      i4 += 1;
      i3 = paramInt3;
      i2 = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i1;
      i1 = paramInt4;
      paramInt2 = i3;
      break;
      i3 = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      i3 += paramInt2;
      break label154;
      paramInt4 = Math.max((i8 - localView.getMeasuredWidth()) / 2, paramInt2);
      i3 = paramInt2;
      break label154;
      i3 = localView.getMeasuredWidth();
      paramInt4 = i1 + localView.getMeasuredWidth();
      i5 = i8 - i1 - i3;
      i1 = paramInt4;
      i3 = paramInt2;
      paramInt4 = i5;
      break label154;
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      i5 += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i5;
      break label204;
      i5 = Math.max((i7 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i5;
      break label204;
      i5 = i7 - paramInt3 - localView.getMeasuredHeight();
      i10 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i10;
      paramInt3 = i5;
      break label204;
      i1 = i8 - paramInt2 - i1;
      paramInt4 = 0;
      while (paramInt4 < i6)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localco = (co)localView.getLayoutParams();
          if (!localco.a)
          {
            cn localcn = a(localView);
            if (localcn != null)
            {
              float f1 = i1;
              i3 = (int)(localcn.e * f1) + paramInt2;
              if (localco.d)
              {
                localco.d = false;
                f1 = i1;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localco.c * f1), 1073741824), View.MeasureSpec.makeMeasureSpec(i7 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(i3, paramInt1, localView.getMeasuredWidth() + i3, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      this.r = paramInt1;
      this.s = (i7 - paramInt3);
      this.W = i2;
      if (this.T)
        a(this.i, false, 0, false);
      this.T = false;
      return;
      label671: paramInt4 = i2;
      i2 = paramInt1;
      i3 = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i1;
      i1 = paramInt3;
      paramInt2 = i2;
      paramInt3 = i3;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    this.E = Math.min(paramInt1 / 10, this.D);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i9 = getChildCount();
    int i3 = 0;
    View localView;
    int i1;
    int i2;
    co localco;
    int i4;
    int i6;
    label183: int i5;
    if (i3 < i9)
    {
      localView = getChildAt(i3);
      i1 = paramInt1;
      i2 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localco = (co)localView.getLayoutParams();
        i1 = paramInt1;
        i2 = paramInt2;
        if (localco != null)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (localco.a)
          {
            i1 = localco.b & 0x7;
            i4 = localco.b & 0x70;
            i6 = -2147483648;
            i2 = -2147483648;
            if ((i4 != 48) && (i4 != 80))
              break label333;
            i4 = 1;
            if ((i1 != 3) && (i1 != 5))
              break label339;
            i5 = 1;
            label198: if (i4 == 0)
              break label345;
            i1 = 1073741824;
            label208: if (localco.width == -2)
              break label528;
            i6 = 1073741824;
            if (localco.width == -1)
              break label522;
            i1 = localco.width;
          }
        }
      }
    }
    while (true)
    {
      int i8;
      if (localco.height != -2)
      {
        i7 = 1073741824;
        i2 = i7;
        if (localco.height != -1)
        {
          i8 = localco.height;
          i2 = i7;
        }
      }
      for (int i7 = i8; ; i7 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i6), View.MeasureSpec.makeMeasureSpec(i7, i2));
        if (i4 != 0)
        {
          i2 = paramInt2 - localView.getMeasuredHeight();
          i1 = paramInt1;
        }
        while (true)
        {
          i3 += 1;
          paramInt1 = i1;
          paramInt2 = i2;
          break;
          label333: i4 = 0;
          break label183;
          label339: i5 = 0;
          break label198;
          label345: i1 = i6;
          if (i5 == 0)
            break label208;
          i2 = 1073741824;
          i1 = i6;
          break label208;
          i1 = paramInt1;
          i2 = paramInt2;
          if (i5 != 0)
          {
            i1 = paramInt1 - localView.getMeasuredWidth();
            i2 = paramInt2;
          }
        }
        this.v = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        this.w = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        this.x = true;
        b();
        this.x = false;
        i1 = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localco = (co)localView.getLayoutParams();
            if ((localco == null) || (!localco.a))
            {
              float f1 = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localco.c * f1), 1073741824), this.w);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522: i1 = paramInt1;
      continue;
      label528: i6 = i1;
      i1 = paramInt1;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i3 = -1;
    int i2 = getChildCount();
    int i1;
    if ((paramInt & 0x2) != 0)
    {
      i3 = 1;
      i1 = 0;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cn localcn = a(localView);
        if ((localcn != null) && (localcn.b == this.i) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i1 = i2 - 1;
          i2 = -1;
        }
      }
      else
      {
        i1 += i3;
      }
    }
    return false;
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (this.h != null)
    {
      Object localObject = paramParcelable.b;
      localObject = paramParcelable.c;
      a(paramParcelable.a, false, true);
      return;
    }
    this.j = paramParcelable.a;
    this.k = paramParcelable.b;
    this.l = paramParcelable.c;
  }

  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.i;
    if (this.h != null)
      localSavedState.b = null;
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      a(paramInt1, paramInt3, this.p, this.p);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if (this.Q)
      return true;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    if ((this.h == null) || (this.h.a() == 0))
      return false;
    if (this.L == null)
      this.L = VelocityTracker.obtain();
    this.L.addMovement(paramMotionEvent);
    boolean bool1 = bool2;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default:
      bool1 = bool2;
    case 4:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool1)
        bl.d(this);
      return true;
      this.m.abortAnimation();
      this.z = false;
      b();
      float f1 = paramMotionEvent.getX();
      this.I = f1;
      this.G = f1;
      f1 = paramMotionEvent.getY();
      this.J = f1;
      this.H = f1;
      this.K = at.b(paramMotionEvent, 0);
      bool1 = bool2;
      continue;
      int i1;
      float f2;
      if (!this.B)
      {
        i1 = at.a(paramMotionEvent, this.K);
        if (i1 == -1)
        {
          bool1 = f();
        }
        else
        {
          f1 = at.c(paramMotionEvent, i1);
          float f3 = Math.abs(f1 - this.G);
          f2 = at.d(paramMotionEvent, i1);
          float f4 = Math.abs(f2 - this.H);
          if ((f3 > this.F) && (f3 > f4))
          {
            this.B = true;
            g();
            if (f1 - this.I <= 0.0F)
              break label392;
          }
        }
      }
      else
      {
        Object localObject;
        label392: for (f1 = this.I + this.F; ; f1 = this.I - this.F)
        {
          this.G = f1;
          this.H = f2;
          setScrollState(1);
          setScrollingCacheEnabled(true);
          localObject = getParent();
          if (localObject != null)
            ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
          bool1 = bool2;
          if (!this.B)
            break;
          bool1 = a(at.c(paramMotionEvent, at.a(paramMotionEvent, this.K))) | false;
          break;
        }
        bool1 = bool2;
        if (this.B)
        {
          localObject = this.L;
          ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.N);
          int i3 = (int)bh.a((VelocityTracker)localObject, this.K);
          this.z = true;
          int i2 = getClientWidth();
          int i4 = getScrollX();
          localObject = h();
          f1 = this.p / i2;
          i1 = ((cn)localObject).b;
          f2 = (i4 / i2 - ((cn)localObject).e) / (((cn)localObject).d + f1);
          if ((Math.abs((int)(at.c(paramMotionEvent, at.a(paramMotionEvent, this.K)) - this.I)) > this.O) && (Math.abs(i3) > this.M))
          {
            if (i3 > 0);
            while (true)
            {
              i2 = i1;
              if (this.e.size() > 0)
              {
                paramMotionEvent = (cn)this.e.get(0);
                localObject = (cn)this.e.get(this.e.size() - 1);
                i2 = Math.max(paramMotionEvent.b, Math.min(i1, ((cn)localObject).b));
              }
              a(i2, true, true, i3);
              bool1 = f();
              break;
              i1 += 1;
            }
          }
          if (i1 >= this.i);
          for (f1 = 0.4F; ; f1 = 0.6F)
          {
            i1 = (int)(i1 + f2 + f1);
            break;
          }
          bool1 = bool2;
          if (this.B)
          {
            a(this.i, true, 0, false);
            bool1 = f();
            continue;
            i1 = at.b(paramMotionEvent);
            this.G = at.c(paramMotionEvent, i1);
            this.K = at.b(paramMotionEvent, i1);
            bool1 = bool2;
            continue;
            a(paramMotionEvent);
            this.G = at.c(paramMotionEvent, at.a(paramMotionEvent, this.K));
            bool1 = bool2;
          }
        }
      }
    }
  }

  public void removeView(View paramView)
  {
    if (this.x)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }

  public void setAdapter(be parambe)
  {
    if (this.h != null)
    {
      this.h.b(null);
      int i1 = 0;
      while (i1 < this.e.size())
      {
        cn localcn = (cn)this.e.get(i1);
        this.h.b(this, localcn.b);
        i1 += 1;
      }
      this.e.clear();
      int i2;
      for (i1 = 0; i1 < getChildCount(); i1 = i2 + 1)
      {
        i2 = i1;
        if (!((co)getChildAt(i1).getLayoutParams()).a)
        {
          removeViewAt(i1);
          i2 = i1 - 1;
        }
      }
      this.i = 0;
      scrollTo(0, 0);
    }
    this.h = parambe;
    this.b = 0;
    boolean bool;
    if (this.h != null)
    {
      if (this.o == null)
        this.o = new ct(this, (byte)0);
      this.h.b(this.o);
      this.z = false;
      bool = this.T;
      this.T = true;
      this.b = this.h.a();
      if (this.j >= 0)
      {
        a(this.j, false, true);
        this.j = -1;
        this.k = null;
        this.l = null;
      }
    }
    else
    {
      return;
    }
    if (!bool)
    {
      b();
      return;
    }
    requestLayout();
  }

  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (this.af == null));
    try
    {
      this.af = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      try
      {
        while (true)
        {
          this.af.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
          localNoSuchMethodException = localNoSuchMethodException;
          Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
        }
      }
      catch (Exception localException)
      {
        Log.e("ViewPager", "Error changing children drawing order", localException);
      }
    }
  }

  public void setCurrentItem(int paramInt)
  {
    this.z = false;
    if (!this.T);
    for (boolean bool = true; ; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }

  public void setOffscreenPageLimit(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      i1 = 1;
    }
    if (i1 != this.A)
    {
      this.A = i1;
      b();
    }
  }

  void setOnAdapterChangeListener(cq paramcq)
  {
    this.ad = paramcq;
  }

  @Deprecated
  public void setOnPageChangeListener(cr paramcr)
  {
    this.ab = paramcr;
  }

  public void setPageMargin(int paramInt)
  {
    int i1 = this.p;
    this.p = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }

  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.q = paramDrawable;
    if (paramDrawable != null)
      refreshDrawableState();
    if (paramDrawable == null);
    for (boolean bool = true; ; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.q);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.2
 */