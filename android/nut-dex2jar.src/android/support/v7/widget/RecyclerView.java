package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.f.f;
import android.support.v4.os.e;
import android.support.v4.view.at;
import android.support.v4.view.az;
import android.support.v4.view.ba;
import android.support.v4.view.bf;
import android.support.v4.view.bh;
import android.support.v4.view.bl;
import android.support.v4.view.cc;
import android.support.v4.widget.ai;
import android.support.v4.widget.o;
import android.support.v7.d.b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView extends ViewGroup
  implements az, bf
{
  static final boolean a;
  private static final Interpolator aq;
  private static final int[] s = { 16843830 };
  private static final boolean t;
  private static final Class<?>[] u;
  private dt A;
  private ej B;
  private final ArrayList<eb> C = new ArrayList();
  private final ArrayList<ef> D = new ArrayList();
  private ef E;
  private boolean F;
  private boolean G;
  private int H = 0;
  private boolean I;
  private boolean J;
  private int K;
  private boolean L;
  private final boolean M;
  private final AccessibilityManager N;
  private List<Object> O;
  private int P = 0;
  private int Q = 0;
  private int R = -1;
  private VelocityTracker S;
  private int T;
  private int U;
  private int V;
  private int W;
  private int aa;
  private final int ab;
  private final int ac;
  private float ad = 1.4E-45F;
  private eg ae;
  private List<eg> af;
  private dy ag = new ea(this, (byte)0);
  private boolean ah = false;
  private es ai;
  private dw aj;
  private final int[] ak = new int[2];
  private ba al;
  private final int[] am = new int[2];
  private final int[] an = new int[2];
  private final int[] ao = new int[2];
  private Runnable ap = new do(this);
  private final gh ar = new dq(this);
  final ei b = new ei(this);
  af c;
  public bp d;
  final gf e = new gf();
  ec f;
  boolean g;
  boolean h;
  boolean i = false;
  o j;
  o k;
  o l;
  o m;
  dx n = new bv();
  final eq o = new eq(this);
  final eo p = new eo();
  boolean q = false;
  boolean r = false;
  private final ek v = new ek(this, (byte)0);
  private RecyclerView.SavedState w;
  private boolean x;
  private final Runnable y = new dn(this);
  private final Rect z = new Rect();

  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20))
    {
      bool = true;
      t = bool;
      if (Build.VERSION.SDK_INT < 23)
        break label100;
    }
    label100: for (boolean bool = true; ; bool = false)
    {
      a = bool;
      u = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      aq = new dp();
      return;
      bool = false;
      break;
    }
  }

  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }

  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    boolean bool1;
    if (Build.VERSION.SDK_INT >= 16)
      bool1 = true;
    Object localObject1;
    while (true)
    {
      this.M = bool1;
      localObject1 = ViewConfiguration.get(paramContext);
      this.aa = ((ViewConfiguration)localObject1).getScaledTouchSlop();
      this.ab = ((ViewConfiguration)localObject1).getScaledMinimumFlingVelocity();
      this.ac = ((ViewConfiguration)localObject1).getScaledMaximumFlingVelocity();
      label307: Object localObject2;
      if (bl.a(this) == 2)
      {
        bool1 = true;
        setWillNotDraw(bool1);
        this.n.h = this.ag;
        this.c = new af(new ds(this));
        this.d = new bp(new dr(this));
        if (bl.e(this) == 0)
          bl.c(this, 1);
        this.N = ((AccessibilityManager)getContext().getSystemService("accessibility"));
        setAccessibilityDelegateCompat(new es(this));
        bool1 = bool2;
        if (paramAttributeSet != null)
        {
          localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, b.RecyclerView, paramInt, 0);
          localObject2 = ((TypedArray)localObject1).getString(b.RecyclerView_layoutManager);
          ((TypedArray)localObject1).recycle();
          if (localObject2 != null)
          {
            localObject1 = ((String)localObject2).trim();
            if (((String)localObject1).length() != 0)
            {
              if (((String)localObject1).charAt(0) != '.')
                break label640;
              localObject1 = paramContext.getPackageName() + (String)localObject1;
            }
          }
        }
      }
      try
      {
        label493: Class localClass;
        if (isInEditMode())
        {
          localObject2 = getClass().getClassLoader();
          localClass = ((ClassLoader)localObject2).loadClass((String)localObject1).asSubclass(ec.class);
        }
        try
        {
          localConstructor = localClass.getConstructor(u);
          localObject2 = new Object[4];
          localObject2[0] = paramContext;
          localObject2[1] = paramAttributeSet;
          localObject2[2] = Integer.valueOf(paramInt);
          localObject2[3] = Integer.valueOf(0);
          localConstructor.setAccessible(true);
          setLayoutManager((ec)localConstructor.newInstance((Object[])localObject2));
          bool1 = bool2;
          if (Build.VERSION.SDK_INT >= 21)
          {
            paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, s, paramInt, 0);
            bool1 = paramContext.getBoolean(0, true);
            paramContext.recycle();
          }
          setNestedScrollingEnabled(bool1);
          return;
          bool1 = false;
          continue;
          bool1 = false;
          break label307;
          label640: if (((String)localObject1).contains("."))
            break label493;
          localObject1 = RecyclerView.class.getPackage().getName() + '.' + (String)localObject1;
          break label493;
          localObject2 = paramContext.getClassLoader();
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          try
          {
            Constructor localConstructor = localClass.getConstructor(new Class[0]);
            localThrowable = null;
          }
          catch (NoSuchMethodException paramContext)
          {
            Throwable localThrowable;
            paramContext.initCause(localThrowable);
            throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + (String)localObject1, paramContext);
          }
        }
      }
      catch (ClassNotFoundException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + (String)localObject1, paramContext);
      }
      catch (InvocationTargetException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (InstantiationException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + (String)localObject1, paramContext);
      }
      catch (IllegalAccessException paramContext)
      {
        throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + (String)localObject1, paramContext);
      }
      catch (ClassCastException paramContext)
      {
      }
    }
    throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + (String)localObject1, paramContext);
  }

  private void A()
  {
    int i2 = this.d.b();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject = b(this.d.c(i1));
      if ((localObject != null) && (!((er)localObject).b()))
        ((er)localObject).b(6);
      i1 += 1;
    }
    y();
    Object localObject = this.b;
    if ((((ei)localObject).h.A != null) && (((ei)localObject).h.A.b))
    {
      i2 = ((ei)localObject).c.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      er localer = (er)((ei)localObject).c.get(i1);
      if (localer != null)
      {
        localer.b(6);
        localer.a(null);
      }
      i1 += 1;
      continue;
      ((ei)localObject).b();
    }
  }

  private void B()
  {
    int i2 = this.d.a();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = this.d.b(i1);
      Object localObject = a(localView);
      if ((localObject != null) && (((er)localObject).h != null))
      {
        localObject = ((er)localObject).h.a;
        int i3 = localView.getLeft();
        int i4 = localView.getTop();
        if ((i3 != ((View)localObject).getLeft()) || (i4 != ((View)localObject).getTop()))
          ((View)localObject).layout(i3, i4, ((View)localObject).getWidth() + i3, ((View)localObject).getHeight() + i4);
      }
      i1 += 1;
    }
  }

  private void a(er paramer)
  {
    View localView = paramer.a;
    if (localView.getParent() == this);
    for (int i1 = 1; ; i1 = 0)
    {
      this.b.b(a(localView));
      if (!paramer.n())
        break;
      this.d.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      this.d.a(localView, -1, true);
      return;
    }
    paramer = this.d;
    i1 = paramer.a.a(localView);
    if (i1 < 0)
      throw new IllegalArgumentException("view is not a child, cannot hide " + localView);
    paramer.b.a(i1);
    paramer.a(localView);
  }

  private void a(er paramer, dz paramdz)
  {
    paramer.a(0, 8192);
    if ((this.p.j) && (paramer.s()) && (!paramer.m()) && (!paramer.b()))
    {
      long l1 = b(paramer);
      this.e.a(l1, paramer);
    }
    this.e.a(paramer, paramdz);
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i1) == this.R)
      if (i1 != 0)
        break label75;
    label75: for (i1 = 1; ; i1 = 0)
    {
      this.R = at.b(paramMotionEvent, i1);
      int i2 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      this.V = i2;
      this.T = i2;
      i1 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      this.W = i1;
      this.U = i1;
      return;
    }
  }

  private void a(int[] paramArrayOfInt)
  {
    int i7 = this.d.a();
    if (i7 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i1 = 2147483647;
    int i3 = -2147483648;
    int i5 = 0;
    int i4;
    int i2;
    if (i5 < i7)
    {
      er localer = b(this.d.b(i5));
      i4 = i1;
      if (localer.b())
        break label122;
      int i6 = localer.c();
      i2 = i1;
      if (i6 < i1)
        i2 = i6;
      i4 = i2;
      if (i6 <= i3)
        break label122;
      i1 = i6;
    }
    while (true)
    {
      i5 += 1;
      i3 = i1;
      i1 = i2;
      break;
      paramArrayOfInt[0] = i1;
      paramArrayOfInt[1] = i3;
      return;
      label122: i1 = i3;
      i2 = i4;
    }
  }

  private boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    int i8 = 0;
    int i4 = 0;
    int i6 = 0;
    int i5 = 0;
    int i1 = 0;
    int i3 = 0;
    int i7 = 0;
    j();
    if (this.A != null)
    {
      a();
      p();
      e.a("RV Scroll");
      i2 = i8;
      if (paramInt1 != 0)
      {
        i1 = this.f.a(paramInt1, this.b, this.p);
        i2 = paramInt1 - i1;
      }
      i3 = i7;
      i4 = i6;
      if (paramInt2 != 0)
      {
        i3 = this.f.b(paramInt2, this.b, this.p);
        i4 = paramInt2 - i3;
      }
      e.a();
      B();
      q();
      a(false);
      i5 = i1;
    }
    if (!this.C.isEmpty())
      invalidate();
    if (dispatchNestedScroll(i5, i3, i2, i4, this.am))
    {
      this.V -= this.am[0];
      this.W -= this.am[1];
      if (paramMotionEvent != null)
        paramMotionEvent.offsetLocation(this.am[0], this.am[1]);
      paramMotionEvent = this.ao;
      paramMotionEvent[0] += this.am[0];
      paramMotionEvent = this.ao;
      paramMotionEvent[1] += this.am[1];
    }
    while (bl.a(this) == 2)
    {
      if ((i5 != 0) || (i3 != 0))
        g();
      if (!awakenScrollBars())
        invalidate();
      if ((i5 == 0) && (i3 == 0))
        break;
      return true;
    }
    float f1;
    float f2;
    float f3;
    float f4;
    if (paramMotionEvent != null)
    {
      f1 = paramMotionEvent.getX();
      f2 = i2;
      f3 = paramMotionEvent.getY();
      f4 = i4;
      i2 = 0;
      if (f2 >= 0.0F)
        break label456;
      b();
      i1 = i2;
      if (this.j.a(-f2 / getWidth(), 1.0F - f3 / getHeight()))
        i1 = 1;
      label379: if (f4 >= 0.0F)
        break label507;
      d();
      i2 = i1;
      if (this.k.a(-f4 / getHeight(), f1 / getWidth()))
        i2 = 1;
    }
    while (true)
    {
      if ((i2 != 0) || (f2 != 0.0F) || (f4 != 0.0F))
        bl.d(this);
      b(paramInt1, paramInt2);
      break;
      label456: i1 = i2;
      if (f2 <= 0.0F)
        break label379;
      c();
      i1 = i2;
      if (!this.l.a(f2 / getWidth(), f3 / getHeight()))
        break label379;
      i1 = 1;
      break label379;
      label507: i2 = i1;
      if (f4 > 0.0F)
      {
        e();
        i2 = i1;
        if (this.m.a(f4 / getHeight(), 1.0F - f1 / getWidth()))
          i2 = 1;
      }
    }
    return false;
  }

  private long b(er paramer)
  {
    if (this.A.b)
      return paramer.d;
    return paramer.b;
  }

  static er b(View paramView)
  {
    if (paramView == null)
      return null;
    return ((ee)paramView.getLayoutParams()).c;
  }

  private void b(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.j != null)
    {
      bool1 = bool2;
      if (!this.j.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0)
          bool1 = this.j.c();
      }
    }
    bool2 = bool1;
    if (this.l != null)
    {
      bool2 = bool1;
      if (!this.l.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0)
          bool2 = bool1 | this.l.c();
      }
    }
    bool1 = bool2;
    if (this.k != null)
    {
      bool1 = bool2;
      if (!this.k.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0)
          bool1 = bool2 | this.k.c();
      }
    }
    bool2 = bool1;
    if (this.m != null)
    {
      bool2 = bool1;
      if (!this.m.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0)
          bool2 = bool1 | this.m.c();
      }
    }
    if (bool2)
      bl.d(this);
  }

  public static int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null)
      return paramView.d();
    return -1;
  }

  public static int d(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null)
      return paramView.c();
    return -1;
  }

  private void f(View paramView)
  {
    b(paramView);
    if (this.O != null)
    {
      int i1 = this.O.size() - 1;
      while (i1 >= 0)
      {
        this.O.get(i1);
        i1 -= 1;
      }
    }
  }

  private float getScrollFactor()
  {
    if (this.ad == 1.4E-45F)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true))
        this.ad = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
    }
    else
    {
      return this.ad;
    }
    return 0.0F;
  }

  private ba getScrollingChildHelper()
  {
    if (this.al == null)
      this.al = new ba(this);
    return this.al;
  }

  private void j()
  {
    int i3 = 0;
    if (!this.g);
    label160: label167: 
    do
    {
      do
      {
        return;
        if (this.i)
        {
          e.a("RV FullInvalidate");
          v();
          e.a();
          return;
        }
      }
      while (!this.c.d());
      if ((this.c.a(4)) && (!this.c.a(11)))
      {
        e.a("RV PartialInvalidate");
        a();
        this.c.b();
        int i1;
        if (!this.I)
        {
          int i4 = this.d.a();
          i1 = 0;
          int i2 = i3;
          if (i1 < i4)
          {
            er localer = b(this.d.b(i1));
            if ((localer == null) || (localer.b()) || (!localer.s()))
              break label160;
            i2 = 1;
          }
          if (i2 == 0)
            break label167;
          v();
        }
        while (true)
        {
          a(true);
          e.a();
          return;
          i1 += 1;
          break;
          this.c.c();
        }
      }
    }
    while (!this.c.d());
    e.a("RV FullInvalidate");
    v();
    e.a();
  }

  private void k()
  {
    setScrollState(0);
    l();
  }

  private void l()
  {
    this.o.b();
    if (this.f != null)
      this.f.q();
  }

  private void m()
  {
    this.m = null;
    this.k = null;
    this.l = null;
    this.j = null;
  }

  private void n()
  {
    if (this.S != null)
      this.S.clear();
    stopNestedScroll();
    boolean bool2 = false;
    if (this.j != null)
      bool2 = this.j.c();
    boolean bool1 = bool2;
    if (this.k != null)
      bool1 = bool2 | this.k.c();
    bool2 = bool1;
    if (this.l != null)
      bool2 = bool1 | this.l.c();
    bool1 = bool2;
    if (this.m != null)
      bool1 = bool2 | this.m.c();
    if (bool1)
      bl.d(this);
  }

  private void o()
  {
    n();
    setScrollState(0);
  }

  private void p()
  {
    this.P += 1;
  }

  private void q()
  {
    this.P -= 1;
    if (this.P <= 0)
    {
      this.P = 0;
      int i1 = this.K;
      this.K = 0;
      if ((i1 != 0) && (f()))
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
        localAccessibilityEvent.setEventType(2048);
        android.support.v4.view.a.a.a(localAccessibilityEvent, i1);
        sendAccessibilityEventUnchecked(localAccessibilityEvent);
      }
    }
  }

  private boolean r()
  {
    return this.P > 0;
  }

  private void s()
  {
    if ((!this.ah) && (this.F))
    {
      bl.a(this, this.ap);
      this.ah = true;
    }
  }

  private void setScrollState(int paramInt)
  {
    if (paramInt == this.Q);
    while (true)
    {
      return;
      this.Q = paramInt;
      if (paramInt != 2)
        l();
      if (this.f != null)
        this.f.h(paramInt);
      if (this.af != null)
      {
        paramInt = this.af.size() - 1;
        while (paramInt >= 0)
        {
          this.af.get(paramInt);
          paramInt -= 1;
        }
      }
    }
  }

  private boolean t()
  {
    return (this.n != null) && (this.f.c());
  }

  private void u()
  {
    boolean bool2 = true;
    if (this.i)
    {
      this.c.a();
      A();
      this.f.a();
    }
    int i1;
    label57: eo localeo;
    if (t())
    {
      this.c.b();
      if ((!this.q) && (!this.r))
        break label176;
      i1 = 1;
      localeo = this.p;
      if ((!this.g) || (this.n == null) || ((!this.i) && (i1 == 0) && (!ec.b(this.f))) || ((this.i) && (!this.A.b)))
        break label181;
      bool1 = true;
      label117: localeo.h = bool1;
      localeo = this.p;
      if ((!this.p.h) || (i1 == 0) || (this.i) || (!t()))
        break label186;
    }
    label176: label181: label186: for (boolean bool1 = bool2; ; bool1 = false)
    {
      localeo.i = bool1;
      return;
      this.c.e();
      break;
      i1 = 0;
      break label57;
      bool1 = false;
      break label117;
    }
  }

  private void v()
  {
    if (this.A == null)
      Log.e("RecyclerView", "No adapter attached; skipping layout");
    while (true)
    {
      return;
      if (this.f == null)
      {
        Log.e("RecyclerView", "No layout manager attached; skipping layout");
        return;
      }
      this.p.k = false;
      Object localObject1;
      long l1;
      dz localdz;
      er localer;
      boolean bool1;
      boolean bool2;
      Object localObject2;
      int i3;
      if (this.p.b == 1)
      {
        w();
        this.f.b(this);
        x();
        this.p.a(4);
        a();
        p();
        this.p.b = 1;
        if (!this.p.h)
          break label668;
        i1 = this.d.a() - 1;
        if (i1 < 0)
          break label657;
        localObject1 = b(this.d.b(i1));
        if (!((er)localObject1).b())
        {
          l1 = b((er)localObject1);
          localdz = new dz().a((er)localObject1);
          localer = (er)this.e.b.a(l1);
          if ((localer == null) || (localer.b()))
            break label643;
          bool1 = this.e.a(localer);
          bool2 = this.e.a((er)localObject1);
          if ((bool1) && (localer == localObject1))
            break label643;
          localObject2 = this.e.a(localer, 4);
          this.e.b((er)localObject1, localdz);
          localdz = this.e.a((er)localObject1, 8);
          if (localObject2 != null)
            break label548;
          i3 = this.d.a();
          i2 = 0;
        }
      }
      else
      {
        while (true)
        {
          if (i2 >= i3)
            break label505;
          localObject2 = b(this.d.b(i2));
          if ((localObject2 != localObject1) && (b((er)localObject2) == l1))
          {
            if ((this.A != null) && (this.A.b))
            {
              throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + localObject2 + " \n View Holder 2:" + localObject1);
              localObject1 = this.c;
              if ((!((af)localObject1).b.isEmpty()) && (!((af)localObject1).a.isEmpty()));
              for (i1 = 1; ; i1 = 0)
              {
                if ((i1 == 0) && (this.f.z == getWidth()) && (this.f.A == getHeight()))
                  break label450;
                this.f.b(this);
                x();
                break;
              }
              label450: this.f.b(this);
              break;
            }
            throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + localObject2 + " \n View Holder 2:" + localObject1);
          }
          i2 += 1;
        }
        label505: Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + localer + " cannot be found but it is necessary for " + localObject1);
      }
      while (true)
      {
        i1 -= 1;
        break;
        label548: localer.a(false);
        if (bool1)
          a(localer);
        if (localer != localObject1)
        {
          if (bool2)
            a((er)localObject1);
          localer.g = ((er)localObject1);
          a(localer);
          this.b.b(localer);
          ((er)localObject1).a(false);
          ((er)localObject1).h = localer;
        }
        if (this.n.a(localer, (er)localObject1, (dz)localObject2, localdz))
        {
          s();
          continue;
          label643: this.e.b((er)localObject1, localdz);
        }
      }
      label657: this.e.a(this.ar);
      label668: this.f.b(this.b);
      this.p.d = this.p.c;
      this.i = false;
      this.p.h = false;
      this.p.i = false;
      ec.c(this.f);
      if (this.b.b != null)
        this.b.b.clear();
      q();
      a(false);
      this.e.a();
      int i1 = this.ak[0];
      int i2 = this.ak[1];
      if (this.d.a() == 0)
        if ((i1 != 0) || (i2 != 0))
          i1 = 1;
      while (i1 != 0)
      {
        g();
        return;
        i1 = 0;
        continue;
        a(this.ak);
        if ((this.ak[0] != i1) || (this.ak[1] != i2))
          i1 = 1;
        else
          i1 = 0;
      }
    }
  }

  private void w()
  {
    this.p.a(1);
    this.p.k = false;
    a();
    this.e.a();
    p();
    u();
    Object localObject1 = this.p;
    if ((this.p.h) && (this.r));
    int i2;
    int i1;
    Object localObject2;
    for (boolean bool = true; ; bool = false)
    {
      ((eo)localObject1).j = bool;
      this.r = false;
      this.q = false;
      this.p.g = this.p.i;
      this.p.c = this.A.b();
      a(this.ak);
      if (!this.p.h)
        break;
      i2 = this.d.a();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(this.d.b(i1));
        if ((!((er)localObject1).b()) && ((!((er)localObject1).j()) || (this.A.b)))
        {
          dx.d((er)localObject1);
          ((er)localObject1).p();
          localObject2 = new dz().a((er)localObject1);
          this.e.a((er)localObject1, (dz)localObject2);
          if ((this.p.j) && (((er)localObject1).s()) && (!((er)localObject1).m()) && (!((er)localObject1).b()) && (!((er)localObject1).j()))
          {
            long l1 = b((er)localObject1);
            this.e.a(l1, (er)localObject1);
          }
        }
        i1 += 1;
      }
    }
    if (this.p.i)
    {
      i2 = this.d.b();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(this.d.c(i1));
        if ((!((er)localObject1).b()) && (((er)localObject1).c == -1))
          ((er)localObject1).c = ((er)localObject1).b;
        i1 += 1;
      }
      bool = this.p.f;
      this.p.f = false;
      this.f.c(this.b, this.p);
      this.p.f = bool;
      i1 = 0;
      if (i1 < this.d.a())
      {
        er localer = b(this.d.b(i1));
        label465: dz localdz;
        if (!localer.b())
        {
          localObject1 = (gg)this.e.a.get(localer);
          if ((localObject1 == null) || ((((gg)localObject1).a & 0x4) == 0))
            break label523;
          i2 = 1;
          if (i2 == 0)
          {
            dx.d(localer);
            bool = localer.a(8192);
            localer.p();
            localdz = new dz().a(localer);
            if (!bool)
              break label528;
            a(localer, localdz);
          }
        }
        while (true)
        {
          i1 += 1;
          break;
          label523: i2 = 0;
          break label465;
          label528: gf localgf = this.e;
          localObject2 = (gg)localgf.a.get(localer);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = gg.a();
            localgf.a.put(localer, localObject1);
          }
          ((gg)localObject1).a |= 2;
          ((gg)localObject1).b = localdz;
        }
      }
      z();
    }
    while (true)
    {
      q();
      a(false);
      this.p.b = 2;
      return;
      z();
    }
  }

  private void x()
  {
    a();
    p();
    this.p.a(6);
    this.c.e();
    this.p.c = this.A.b();
    this.p.e = 0;
    this.p.g = false;
    this.f.c(this.b, this.p);
    this.p.f = false;
    this.w = null;
    eo localeo = this.p;
    if ((this.p.h) && (this.n != null));
    for (boolean bool = true; ; bool = false)
    {
      localeo.h = bool;
      this.p.b = 4;
      q();
      a(false);
      return;
    }
  }

  private void y()
  {
    int i2 = 0;
    int i3 = this.d.b();
    int i1 = 0;
    while (i1 < i3)
    {
      ((ee)this.d.c(i1).getLayoutParams()).e = true;
      i1 += 1;
    }
    ei localei = this.b;
    i3 = localei.c.size();
    i1 = i2;
    while (i1 < i3)
    {
      ee localee = (ee)((er)localei.c.get(i1)).a.getLayoutParams();
      if (localee != null)
        localee.e = true;
      i1 += 1;
    }
  }

  private void z()
  {
    int i2 = 0;
    int i3 = this.d.b();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject = b(this.d.c(i1));
      if (!((er)localObject).b())
        ((er)localObject).a();
      i1 += 1;
    }
    Object localObject = this.b;
    i3 = ((ei)localObject).c.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((er)((ei)localObject).c.get(i1)).a();
      i1 += 1;
    }
    i3 = ((ei)localObject).a.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((er)((ei)localObject).a.get(i1)).a();
      i1 += 1;
    }
    if (((ei)localObject).b != null)
    {
      i3 = ((ei)localObject).b.size();
      i1 = i2;
      while (i1 < i3)
      {
        ((er)((ei)localObject).b.get(i1)).a();
        i1 += 1;
      }
    }
  }

  public final er a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this))
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    return b(paramView);
  }

  final void a()
  {
    this.H += 1;
    if ((this.H == 1) && (!this.h))
      this.I = false;
  }

  final void a(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(ec.a(paramInt1, getPaddingLeft() + getPaddingRight(), bl.m(this)), ec.a(paramInt2, getPaddingTop() + getPaddingBottom(), bl.n(this)));
  }

  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = this.d.b();
    int i1 = 0;
    if (i1 < i2)
    {
      localObject = b(this.d.c(i1));
      if ((localObject != null) && (!((er)localObject).b()))
      {
        if (((er)localObject).b < paramInt1 + paramInt2)
          break label82;
        ((er)localObject).a(-paramInt2, paramBoolean);
        this.p.f = true;
      }
      while (true)
      {
        i1 += 1;
        break;
        label82: if (((er)localObject).b >= paramInt1)
        {
          int i3 = -paramInt2;
          ((er)localObject).b(8);
          ((er)localObject).a(i3, paramBoolean);
          ((er)localObject).b = (paramInt1 - 1);
          this.p.f = true;
        }
      }
    }
    Object localObject = this.b;
    i1 = ((ei)localObject).c.size() - 1;
    if (i1 >= 0)
    {
      er localer = (er)((ei)localObject).c.get(i1);
      if (localer != null)
      {
        if (localer.b < paramInt1 + paramInt2)
          break label200;
        localer.a(-paramInt2, paramBoolean);
      }
      while (true)
      {
        i1 -= 1;
        break;
        label200: if (localer.b >= paramInt1)
        {
          localer.b(8);
          ((ei)localObject).c(i1);
        }
      }
    }
    requestLayout();
  }

  public final void a(eb parameb)
  {
    if (this.f != null)
      this.f.a("Cannot add item decoration during a scroll  or layout");
    if (this.C.isEmpty())
      setWillNotDraw(false);
    this.C.add(parameb);
    y();
    requestLayout();
  }

  public final void a(ef paramef)
  {
    this.D.add(paramef);
  }

  final void a(String paramString)
  {
    if (r())
    {
      if (paramString == null)
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      throw new IllegalStateException(paramString);
    }
  }

  final void a(boolean paramBoolean)
  {
    if (this.H <= 0)
      this.H = 1;
    if (!paramBoolean)
      this.I = false;
    if (this.H == 1)
    {
      if ((paramBoolean) && (this.I) && (!this.h) && (this.f != null) && (this.A != null))
        v();
      if (!this.h)
        this.I = false;
    }
    this.H -= 1;
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }

  final void b()
  {
    if (this.j != null)
      return;
    this.j = new o(getContext());
    if (this.x)
    {
      this.j.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.j.a(getMeasuredHeight(), getMeasuredWidth());
  }

  final void c()
  {
    if (this.l != null)
      return;
    this.l = new o(getContext());
    if (this.x)
    {
      this.l.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.l.a(getMeasuredHeight(), getMeasuredWidth());
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ee)) && (this.f.a((ee)paramLayoutParams));
  }

  public int computeHorizontalScrollExtent()
  {
    if (this.f == null);
    while (!this.f.e())
      return 0;
    return this.f.c(this.p);
  }

  public int computeHorizontalScrollOffset()
  {
    if (this.f == null);
    while (!this.f.e())
      return 0;
    return this.f.a(this.p);
  }

  public int computeHorizontalScrollRange()
  {
    if (this.f == null);
    while (!this.f.e())
      return 0;
    return this.f.e(this.p);
  }

  public int computeVerticalScrollExtent()
  {
    if (this.f == null);
    while (!this.f.f())
      return 0;
    return this.f.d(this.p);
  }

  public int computeVerticalScrollOffset()
  {
    if (this.f == null);
    while (!this.f.f())
      return 0;
    return this.f.b(this.p);
  }

  public int computeVerticalScrollRange()
  {
    if (this.f == null);
    while (!this.f.f())
      return 0;
    return this.f.f(this.p);
  }

  final void d()
  {
    if (this.k != null)
      return;
    this.k = new o(getContext());
    if (this.x)
    {
      this.k.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.k.a(getMeasuredWidth(), getMeasuredHeight());
  }

  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return getScrollingChildHelper().a(paramFloat1, paramFloat2, paramBoolean);
  }

  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return getScrollingChildHelper().a(paramFloat1, paramFloat2);
  }

  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return getScrollingChildHelper().a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }

  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return getScrollingChildHelper().a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }

  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }

  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = this.C.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((eb)this.C.get(i1)).a(paramCanvas, this, this.p);
      i1 += 1;
    }
    int i5;
    if ((this.j != null) && (!this.j.a()))
    {
      i5 = paramCanvas.save();
      if (this.x)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((this.j == null) || (!this.j.a(paramCanvas)))
          break label456;
        i2 = 1;
        label128: paramCanvas.restoreToCount(i5);
      }
    }
    while (true)
    {
      i1 = i2;
      if (this.k != null)
      {
        i1 = i2;
        if (!this.k.a())
        {
          i5 = paramCanvas.save();
          if (this.x)
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          if ((this.k == null) || (!this.k.a(paramCanvas)))
            break label461;
          i1 = 1;
          label202: i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (this.l != null)
      {
        i2 = i1;
        if (!this.l.a())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!this.x)
            break label466;
          i2 = getPaddingTop();
          label257: paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((this.l == null) || (!this.l.a(paramCanvas)))
            break label471;
          i2 = 1;
          label295: i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (this.m != null)
      {
        i1 = i2;
        if (!this.m.a())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!this.x)
            break label476;
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372: i1 = i4;
          if (this.m != null)
          {
            i1 = i4;
            if (this.m.a(paramCanvas))
              i1 = 1;
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (this.n != null) && (this.C.size() > 0) && (this.n.b()))
        i1 = i3;
      while (true)
      {
        if (i1 != 0)
          bl.d(this);
        return;
        i1 = 0;
        break;
        label456: i2 = 0;
        break label128;
        label461: i1 = 0;
        break label202;
        label466: i2 = 0;
        break label257;
        label471: i2 = 0;
        break label295;
        label476: paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      i2 = 0;
    }
  }

  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }

  final Rect e(View paramView)
  {
    ee localee = (ee)paramView.getLayoutParams();
    if (!localee.e)
      return localee.d;
    Rect localRect = localee.d;
    localRect.set(0, 0, 0, 0);
    int i2 = this.C.size();
    int i1 = 0;
    while (i1 < i2)
    {
      this.z.set(0, 0, 0, 0);
      ((eb)this.C.get(i1)).a(this.z, paramView, this, this.p);
      localRect.left += this.z.left;
      localRect.top += this.z.top;
      localRect.right += this.z.right;
      localRect.bottom += this.z.bottom;
      i1 += 1;
    }
    localee.e = false;
    return localRect;
  }

  final void e()
  {
    if (this.m != null)
      return;
    this.m = new o(getContext());
    if (this.x)
    {
      this.m.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.m.a(getMeasuredWidth(), getMeasuredHeight());
  }

  final boolean f()
  {
    return (this.N != null) && (this.N.isEnabled());
  }

  public View focusSearch(View paramView, int paramInt)
  {
    View localView2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    View localView1 = localView2;
    if (localView2 == null)
    {
      localView1 = localView2;
      if (this.A != null)
      {
        localView1 = localView2;
        if (this.f != null)
        {
          localView1 = localView2;
          if (!r())
          {
            localView1 = localView2;
            if (!this.h)
            {
              a();
              localView1 = this.f.a(paramView, paramInt, this.b, this.p);
              a(false);
            }
          }
        }
      }
    }
    if (localView1 != null)
      return localView1;
    return super.focusSearch(paramView, paramInt);
  }

  final void g()
  {
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    if (this.af != null)
    {
      i1 = this.af.size() - 1;
      while (i1 >= 0)
      {
        this.af.get(i1);
        i1 -= 1;
      }
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.f == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.f.b();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.f == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.f.a(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.f == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    return this.f.a(paramLayoutParams);
  }

  public dt getAdapter()
  {
    return this.A;
  }

  public int getBaseline()
  {
    if (this.f != null)
      return -1;
    return super.getBaseline();
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.aj == null)
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    return this.aj.a();
  }

  public es getCompatAccessibilityDelegate()
  {
    return this.ai;
  }

  public dx getItemAnimator()
  {
    return this.n;
  }

  public ec getLayoutManager()
  {
    return this.f;
  }

  public int getMaxFlingVelocity()
  {
    return this.ac;
  }

  public int getMinFlingVelocity()
  {
    return this.ab;
  }

  public eh getRecycledViewPool()
  {
    return this.b.c();
  }

  public int getScrollState()
  {
    return this.Q;
  }

  public boolean hasNestedScrollingParent()
  {
    return getScrollingChildHelper().a();
  }

  public boolean isAttachedToWindow()
  {
    return this.F;
  }

  public boolean isNestedScrollingEnabled()
  {
    return getScrollingChildHelper().a;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.P = 0;
    this.F = true;
    this.g = false;
    if (this.f != null)
      this.f.u = true;
    this.ah = false;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.n != null)
      this.n.d();
    this.g = false;
    k();
    this.F = false;
    if (this.f != null)
      this.f.b(this, this.b);
    removeCallbacks(this.ap);
    gg.b();
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = this.C.size();
    int i1 = 0;
    while (i1 < i2)
    {
      this.C.get(i1);
      i1 += 1;
    }
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.f == null);
    label110: label113: 
    while (true)
    {
      return false;
      if ((!this.h) && ((at.c(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (this.f.f())
        {
          f1 = -at.e(paramMotionEvent, 9);
          if (!this.f.e())
            break label110;
        }
        for (float f2 = at.e(paramMotionEvent, 10); ; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F))
            break label113;
          float f3 = getScrollFactor();
          a((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    boolean bool1 = true;
    if (this.h)
    {
      bool1 = false;
      return bool1;
    }
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0))
      this.E = null;
    int i4 = this.D.size();
    int i1 = 0;
    if (i1 < i4)
    {
      ef localef = (ef)this.D.get(i1);
      if ((localef.a(this, paramMotionEvent)) && (i2 != 3))
        this.E = localef;
    }
    for (i1 = 1; ; i1 = 0)
    {
      if (i1 == 0)
        break label115;
      o();
      return true;
      i1 += 1;
      break;
    }
    label115: if (this.f == null)
      return false;
    boolean bool2 = this.f.e();
    boolean bool3 = this.f.f();
    if (this.S == null)
      this.S = VelocityTracker.obtain();
    this.S.addMovement(paramMotionEvent);
    i2 = at.a(paramMotionEvent);
    i1 = at.b(paramMotionEvent);
    switch (i2)
    {
    case 4:
    default:
      if (this.Q != 1)
        return false;
      break;
    case 0:
      label216: if (this.J)
        this.J = false;
      this.R = at.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      this.V = i1;
      this.T = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      this.W = i1;
      this.U = i1;
      if (this.Q == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      paramMotionEvent = this.ao;
      this.ao[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool2);
      break;
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    for (i1 = 1; ; i1 = 0)
    {
      i2 = i1;
      if (bool3)
        i2 = i1 | 0x2;
      startNestedScroll(i2);
      break label216;
      this.R = at.b(paramMotionEvent, i1);
      i2 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      this.V = i2;
      this.T = i2;
      i1 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      this.W = i1;
      this.U = i1;
      break label216;
      i2 = at.a(paramMotionEvent, this.R);
      if (i2 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.R + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i1 = (int)(at.c(paramMotionEvent, i2) + 0.5F);
      i2 = (int)(at.d(paramMotionEvent, i2) + 0.5F);
      if (this.Q == 1)
        break label216;
      i1 -= this.T;
      i4 = i2 - this.U;
      int i5;
      if ((bool2) && (Math.abs(i1) > this.aa))
      {
        i2 = this.T;
        i5 = this.aa;
        if (i1 < 0)
        {
          i1 = -1;
          label533: this.V = (i1 * i5 + i2);
        }
      }
      for (i1 = 1; ; i1 = 0)
      {
        i2 = i1;
        if (bool3)
        {
          i2 = i1;
          if (Math.abs(i4) > this.aa)
          {
            i2 = this.U;
            i5 = this.aa;
            if (i4 >= 0)
              break label614;
          }
        }
        label614: for (i1 = i3; ; i1 = 1)
        {
          this.W = (i2 + i1 * i5);
          i2 = 1;
          if (i2 == 0)
            break;
          setScrollState(1);
          break;
          i1 = 1;
          break label533;
        }
        a(paramMotionEvent);
        break label216;
        this.S.clear();
        stopNestedScroll();
        break label216;
        o();
        break label216;
        break;
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    e.a("RV OnLayout");
    v();
    e.a();
    this.g = true;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 0;
    if (this.f == null)
      a(paramInt1, paramInt2);
    do
    {
      int i1;
      do
      {
        return;
        if (!ec.a(this.f))
          break;
        int i3 = View.MeasureSpec.getMode(paramInt1);
        int i4 = View.MeasureSpec.getMode(paramInt2);
        i1 = i2;
        if (i3 == 1073741824)
        {
          i1 = i2;
          if (i4 == 1073741824)
            i1 = 1;
        }
        this.f.g(paramInt1, paramInt2);
      }
      while ((i1 != 0) || (this.A == null));
      if (this.p.b == 1)
        w();
      this.f.e(paramInt1, paramInt2);
      this.p.k = true;
      x();
      this.f.f(paramInt1, paramInt2);
    }
    while (!this.f.i());
    this.f.e(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    this.p.k = true;
    x();
    this.f.f(paramInt1, paramInt2);
    return;
    if (this.G)
    {
      this.f.g(paramInt1, paramInt2);
      return;
    }
    if (this.L)
    {
      a();
      u();
      if (this.p.i)
      {
        this.p.g = true;
        this.L = false;
        a(false);
      }
    }
    else
    {
      if (this.A == null)
        break label313;
    }
    label313: for (this.p.c = this.A.b(); ; this.p.c = 0)
    {
      a();
      this.f.g(paramInt1, paramInt2);
      a(false);
      this.p.g = false;
      return;
      this.c.e();
      this.p.g = false;
      break;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof RecyclerView.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    do
    {
      return;
      this.w = ((RecyclerView.SavedState)paramParcelable);
      super.onRestoreInstanceState(this.w.getSuperState());
    }
    while ((this.f == null) || (this.w.a == null));
    this.f.a(this.w.a);
  }

  protected Parcelable onSaveInstanceState()
  {
    RecyclerView.SavedState localSavedState = new RecyclerView.SavedState(super.onSaveInstanceState());
    if (this.w != null)
    {
      RecyclerView.SavedState.a(localSavedState, this.w);
      return localSavedState;
    }
    if (this.f != null)
    {
      localSavedState.a = this.f.d();
      return localSavedState;
    }
    localSavedState.a = null;
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4))
      m();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i7 = 0;
    if ((this.h) || (this.J));
    label135: label144: label150: 
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      if (this.E != null)
      {
        if (i1 == 0)
          this.E = null;
      }
      else
      {
        if (i1 == 0)
          break label144;
        i2 = this.D.size();
        i1 = 0;
        if (i1 >= i2)
          break label144;
        localObject = (ef)this.D.get(i1);
        if (!((ef)localObject).a(this, paramMotionEvent))
          break label135;
        this.E = ((ef)localObject);
        i1 = 1;
      }
      while (true)
      {
        if (i1 == 0)
          break label150;
        o();
        return true;
        if ((i1 == 3) || (i1 == 1))
          this.E = null;
        i1 = 1;
        continue;
        i1 += 1;
        break;
        i1 = 0;
      }
    }
    while (this.f == null);
    boolean bool1 = this.f.e();
    boolean bool2 = this.f.f();
    if (this.S == null)
      this.S = VelocityTracker.obtain();
    Object localObject = MotionEvent.obtain(paramMotionEvent);
    int i3 = at.a(paramMotionEvent);
    int i2 = at.b(paramMotionEvent);
    if (i3 == 0)
    {
      int[] arrayOfInt = this.ao;
      this.ao[1] = 0;
      arrayOfInt[0] = 0;
    }
    ((MotionEvent)localObject).offsetLocation(this.ao[0], this.ao[1]);
    int i1 = i7;
    switch (i3)
    {
    default:
      i1 = i7;
    case 4:
      if (i1 == 0)
        this.S.addMovement((MotionEvent)localObject);
      ((MotionEvent)localObject).recycle();
      return true;
    case 0:
      this.R = at.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      this.V = i1;
      this.T = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      this.W = i1;
      this.U = i1;
      if (!bool1)
        break;
    case 5:
    case 2:
    case 6:
    case 1:
    case 3:
    }
    label775: label847: label976: for (i1 = 1; ; i1 = 0)
    {
      i2 = i1;
      if (bool2)
        i2 = i1 | 0x2;
      startNestedScroll(i2);
      i1 = i7;
      break;
      this.R = at.b(paramMotionEvent, i2);
      i1 = (int)(at.c(paramMotionEvent, i2) + 0.5F);
      this.V = i1;
      this.T = i1;
      i1 = (int)(at.d(paramMotionEvent, i2) + 0.5F);
      this.W = i1;
      this.U = i1;
      i1 = i7;
      break;
      i1 = at.a(paramMotionEvent, this.R);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.R + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i8 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      int i9 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      int i4 = this.V - i8;
      i3 = this.W - i9;
      i1 = i3;
      i2 = i4;
      if (dispatchNestedPreScroll(i4, i3, this.an, this.am))
      {
        i2 = i4 - this.an[0];
        i1 = i3 - this.an[1];
        ((MotionEvent)localObject).offsetLocation(this.am[0], this.am[1]);
        paramMotionEvent = this.ao;
        paramMotionEvent[0] += this.am[0];
        paramMotionEvent = this.ao;
        paramMotionEvent[1] += this.am[1];
      }
      i3 = i1;
      i4 = i2;
      if (this.Q != 1)
      {
        if ((!bool1) || (Math.abs(i2) <= this.aa))
          break label1294;
        if (i2 <= 0)
          break label886;
        i2 -= this.aa;
      }
      label725: for (i3 = 1; ; i3 = 0)
      {
        int i5 = i1;
        int i6 = i3;
        if (bool2)
        {
          i5 = i1;
          i6 = i3;
          if (Math.abs(i1) > this.aa)
          {
            if (i1 <= 0)
              break label898;
            i5 = i1 - this.aa;
            i6 = 1;
          }
        }
        i3 = i5;
        i4 = i2;
        if (i6 != 0)
        {
          setScrollState(1);
          i4 = i2;
          i3 = i5;
        }
        i1 = i7;
        if (this.Q != 1)
          break;
        this.V = (i8 - this.am[0]);
        this.W = (i9 - this.am[1]);
        if (bool1)
          if (!bool2)
            break label916;
        while (true)
        {
          i1 = i7;
          if (!a(i4, i3, (MotionEvent)localObject))
            break;
          getParent().requestDisallowInterceptTouchEvent(true);
          i1 = i7;
          break;
          label886: i2 += this.aa;
          break label725;
          i5 = i1 + this.aa;
          break label775;
          i4 = 0;
          break label847;
          i3 = 0;
        }
        a(paramMotionEvent);
        i1 = i7;
        break;
        this.S.addMovement((MotionEvent)localObject);
        this.S.computeCurrentVelocity(1000, this.ac);
        float f1;
        float f2;
        if (bool1)
        {
          f1 = -bh.a(this.S, this.R);
          if (!bool2)
            break label1059;
          f2 = -bh.b(this.S, this.R);
          label994: if ((f1 != 0.0F) || (f2 != 0.0F))
          {
            i1 = (int)f1;
            i2 = (int)f2;
            if (this.f != null)
              break label1064;
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
          }
        }
        while (this.h)
        {
          i1 = 0;
          if (i1 == 0)
            setScrollState(0);
          n();
          i1 = 1;
          break;
          f1 = 0.0F;
          break label976;
          f2 = 0.0F;
          break label994;
        }
        bool1 = this.f.e();
        bool2 = this.f.f();
        if ((!bool1) || (Math.abs(i1) < this.ab))
          i1 = 0;
        while (true)
        {
          if ((!bool2) || (Math.abs(i2) < this.ab))
            i2 = 0;
          while (true)
          {
            if (((i1 == 0) && (i2 == 0)) || (dispatchNestedPreFling(i1, i2)))
              break label1289;
            if ((bool1) || (bool2));
            for (bool1 = true; ; bool1 = false)
            {
              dispatchNestedFling(i1, i2, bool1);
              if (!bool1)
                break;
              i1 = Math.max(-this.ac, Math.min(i1, this.ac));
              i2 = Math.max(-this.ac, Math.min(i2, this.ac));
              paramMotionEvent = this.o;
              paramMotionEvent.d.setScrollState(2);
              paramMotionEvent.b = 0;
              paramMotionEvent.a = 0;
              paramMotionEvent.c.a(i1, i2, -2147483648, 2147483647);
              paramMotionEvent.a();
              i1 = 1;
              break label1034;
            }
            o();
            i1 = i7;
            break;
          }
          break label1031;
        }
      }
    }
  }

  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    er localer = b(paramView);
    if (localer != null)
    {
      if (!localer.n())
        break label32;
      localer.i();
    }
    label32: 
    while (localer.b())
    {
      f(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localer);
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    int i1;
    Object localObject;
    if ((this.f.k()) || (r()))
    {
      i1 = 1;
      if ((i1 == 0) && (paramView2 != null))
      {
        this.z.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
        localObject = paramView2.getLayoutParams();
        if ((localObject instanceof ee))
        {
          localObject = (ee)localObject;
          if (!((ee)localObject).e)
          {
            localObject = ((ee)localObject).d;
            Rect localRect = this.z;
            localRect.left -= ((Rect)localObject).left;
            localRect = this.z;
            localRect.right += ((Rect)localObject).right;
            localRect = this.z;
            localRect.top -= ((Rect)localObject).top;
            localRect = this.z;
            i1 = localRect.bottom;
            localRect.bottom = (((Rect)localObject).bottom + i1);
          }
        }
        offsetDescendantRectToMyCoords(paramView2, this.z);
        offsetRectIntoDescendantCoords(paramView1, this.z);
        localObject = this.z;
        if (this.g)
          break label226;
      }
    }
    label226: for (boolean bool = true; ; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
      i1 = 0;
      break;
    }
  }

  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    ec localec = this.f;
    int i7 = localec.m();
    int i4 = localec.n();
    int i8 = localec.z - localec.o();
    int i6 = localec.A;
    int i11 = localec.p();
    int i9 = paramView.getLeft() + paramRect.left - paramView.getScrollX();
    int i5 = paramView.getTop() + paramRect.top - paramView.getScrollY();
    int i10 = i9 + paramRect.width();
    int i12 = paramRect.height();
    int i1 = Math.min(0, i9 - i7);
    int i2 = Math.min(0, i5 - i4);
    int i3 = Math.max(0, i10 - i8);
    i6 = Math.max(0, i5 + i12 - (i6 - i11));
    if (bl.h(localec.r) == 1)
      if (i3 != 0)
      {
        i1 = i3;
        if (i2 == 0)
          break label232;
        label170: if ((i1 == 0) && (i2 == 0))
          break label324;
        if (!paramBoolean)
          break label247;
        scrollBy(i1, i2);
      }
    while (true)
    {
      return true;
      i1 = Math.max(i1, i10 - i8);
      break;
      if (i1 != 0)
        break;
      i1 = Math.min(i9 - i7, i3);
      break;
      label232: i2 = Math.min(i5 - i4, i6);
      break label170;
      label247: if (this.f == null)
      {
        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      }
      else if (!this.h)
      {
        if (!this.f.e())
          i1 = 0;
        if (!this.f.f())
          i2 = 0;
        if ((i1 != 0) || (i2 != 0))
          this.o.a(i1, i2);
      }
    }
    label324: return false;
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i2 = this.D.size();
    int i1 = 0;
    while (i1 < i2)
    {
      this.D.get(i1);
      i1 += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }

  public void requestLayout()
  {
    if ((this.H == 0) && (!this.h))
    {
      super.requestLayout();
      return;
    }
    this.I = true;
  }

  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.f == null);
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
        return;
      while (this.h);
      bool1 = this.f.e();
      bool2 = this.f.f();
    }
    while ((!bool1) && (!bool2));
    if (bool1)
      if (!bool2)
        break label74;
    while (true)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label74: paramInt2 = 0;
    }
  }

  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }

  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = 0;
    int i2 = 0;
    if (r())
      if (paramAccessibilityEvent == null)
        break label52;
    label52: for (i1 = android.support.v4.view.a.a.b(paramAccessibilityEvent); ; i1 = 0)
    {
      if (i1 == 0)
        i1 = i2;
      while (true)
      {
        this.K = (i1 | this.K);
        i1 = 1;
        if (i1 != 0)
          return;
        super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
        return;
      }
    }
  }

  public void setAccessibilityDelegateCompat(es parames)
  {
    this.ai = parames;
    bl.a(this, this.ai);
  }

  public void setAdapter(dt paramdt)
  {
    setLayoutFrozen(false);
    if (this.A != null)
    {
      localdt = this.A;
      localObject = this.v;
      localdt.a.unregisterObserver(localObject);
    }
    if (this.n != null)
      this.n.d();
    if (this.f != null)
    {
      this.f.c(this.b);
      this.f.b(this.b);
    }
    this.b.a();
    this.c.a();
    dt localdt = this.A;
    this.A = paramdt;
    if (paramdt != null)
    {
      localObject = this.v;
      paramdt.a.registerObserver(localObject);
    }
    Object localObject = this.b;
    paramdt = this.A;
    ((ei)localObject).a();
    localObject = ((ei)localObject).c();
    if (localdt != null)
      ((eh)localObject).b();
    if (((eh)localObject).c == 0)
      ((eh)localObject).a.clear();
    if (paramdt != null)
      ((eh)localObject).a();
    this.p.f = true;
    A();
    requestLayout();
  }

  public void setChildDrawingOrderCallback(dw paramdw)
  {
    if (paramdw == this.aj)
      return;
    this.aj = paramdw;
    if (this.aj != null);
    for (boolean bool = true; ; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }

  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.x)
      m();
    this.x = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.g)
      requestLayout();
  }

  public void setHasFixedSize(boolean paramBoolean)
  {
    this.G = paramBoolean;
  }

  public void setItemAnimator(dx paramdx)
  {
    if (this.n != null)
    {
      this.n.d();
      this.n.h = null;
    }
    this.n = paramdx;
    if (this.n != null)
      this.n.h = this.ag;
  }

  public void setItemViewCacheSize(int paramInt)
  {
    ei localei = this.b;
    localei.e = paramInt;
    int i1 = localei.c.size() - 1;
    while ((i1 >= 0) && (localei.c.size() > paramInt))
    {
      localei.c(i1);
      i1 -= 1;
    }
  }

  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != this.h)
    {
      a("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        this.h = false;
        if ((this.I) && (this.f != null) && (this.A != null))
          requestLayout();
        this.I = false;
      }
    }
    else
    {
      return;
    }
    long l1 = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0));
    this.h = true;
    this.J = true;
    k();
  }

  public void setLayoutManager(ec paramec)
  {
    if (paramec == this.f)
      return;
    k();
    if (this.f != null)
    {
      if (this.F)
        this.f.b(this, this.b);
      this.f.a(null);
    }
    this.b.a();
    bp localbp = this.d;
    for (bq localbq = localbp.b; ; localbq = localbq.b)
    {
      localbq.a = 0L;
      if (localbq.b == null)
        break;
    }
    int i1 = localbp.c.size() - 1;
    while (i1 >= 0)
    {
      localbp.a.d((View)localbp.c.get(i1));
      localbp.c.remove(i1);
      i1 -= 1;
    }
    localbp.a.b();
    this.f = paramec;
    if (paramec != null)
    {
      if (paramec.r != null)
        throw new IllegalArgumentException("LayoutManager " + paramec + " is already attached to a RecyclerView: " + paramec.r);
      this.f.a(this);
      if (this.F)
        this.f.u = true;
    }
    requestLayout();
  }

  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    getScrollingChildHelper().a(paramBoolean);
  }

  @Deprecated
  public void setOnScrollListener(eg parameg)
  {
    this.ae = parameg;
  }

  public void setRecycledViewPool(eh parameh)
  {
    ei localei = this.b;
    if (localei.f != null)
      localei.f.b();
    localei.f = parameh;
    if (parameh != null)
    {
      parameh = localei.f;
      localei.h.getAdapter();
      parameh.a();
    }
  }

  public void setRecyclerListener(ej paramej)
  {
    this.B = paramej;
  }

  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default:
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0:
      this.aa = localViewConfiguration.getScaledTouchSlop();
      return;
    case 1:
    }
    this.aa = cc.a(localViewConfiguration);
  }

  public void setViewCacheExtension(ep paramep)
  {
    this.b.g = paramep;
  }

  public boolean startNestedScroll(int paramInt)
  {
    return getScrollingChildHelper().a(paramInt);
  }

  public void stopNestedScroll()
  {
    getScrollingChildHelper().b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * JD-Core Version:    0.6.2
 */