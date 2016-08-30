package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.e.h;
import android.support.v4.widget.y;
import android.support.v7.b.b;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import java.lang.reflect.Method;

public class cu
{
  private static Method a;
  private static Method b;
  private final db A = new db(this, (byte)0);
  private Runnable B;
  private final Handler C;
  private Rect D = new Rect();
  private boolean E;
  private int F;
  public PopupWindow c;
  public cx d;
  int e = -2;
  int f;
  int g;
  boolean h;
  public int i = 0;
  int j = 2147483647;
  int k = 0;
  public View l;
  public AdapterView.OnItemClickListener m;
  private Context n;
  private ListAdapter o;
  private int p = -2;
  private int q = 1002;
  private boolean r = false;
  private boolean s = false;
  private View t;
  private DataSetObserver u;
  private Drawable v;
  private AdapterView.OnItemSelectedListener w;
  private final df x = new df(this, (byte)0);
  private final de y = new de(this, (byte)0);
  private final dd z = new dd(this, (byte)0);

  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      try
      {
        while (true)
        {
          b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[] { View.class, Integer.TYPE, Boolean.TYPE });
          return;
          localNoSuchMethodException1 = localNoSuchMethodException1;
          Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
      }
    }
  }

  public cu(Context paramContext)
  {
    this(paramContext, null, b.listPopupWindowStyle);
  }

  public cu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }

  public cu(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.n = paramContext;
    this.C = new Handler(paramContext.getMainLooper());
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, l.ListPopupWindow, paramInt1, paramInt2);
    this.f = localTypedArray.getDimensionPixelOffset(l.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    this.g = localTypedArray.getDimensionPixelOffset(l.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (this.g != 0)
      this.h = true;
    localTypedArray.recycle();
    this.c = new ay(paramContext, paramAttributeSet, paramInt1);
    this.c.setInputMethodMode(1);
    this.F = h.a(this.n.getResources().getConfiguration().locale);
  }

  private int a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (b != null)
      try
      {
        int i1 = ((Integer)b.invoke(this.c, new Object[] { paramView, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).intValue();
        return i1;
      }
      catch (Exception localException)
      {
        Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
      }
    return this.c.getMaxAvailableHeight(paramView, paramInt);
  }

  public final void a(int paramInt)
  {
    Drawable localDrawable = this.c.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(this.D);
      this.e = (this.D.left + this.D.right + paramInt);
      return;
    }
    this.e = paramInt;
  }

  public final void a(Drawable paramDrawable)
  {
    this.c.setBackgroundDrawable(paramDrawable);
  }

  public void a(ListAdapter paramListAdapter)
  {
    if (this.u == null)
      this.u = new dc(this, (byte)0);
    while (true)
    {
      this.o = paramListAdapter;
      if (this.o != null)
        paramListAdapter.registerDataSetObserver(this.u);
      if (this.d != null)
        this.d.setAdapter(this.o);
      return;
      if (this.o != null)
        this.o.unregisterDataSetObserver(this.u);
    }
  }

  public final void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.c.setOnDismissListener(paramOnDismissListener);
  }

  public void b()
  {
    boolean bool3 = true;
    boolean bool2 = true;
    Object localObject2;
    boolean bool1;
    Object localObject1;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    label254: int i2;
    int i1;
    if (this.d == null)
    {
      localObject2 = this.n;
      this.B = new cv(this);
      if (!this.E)
      {
        bool1 = true;
        this.d = new cx((Context)localObject2, bool1);
        if (this.v != null)
          this.d.setSelector(this.v);
        this.d.setAdapter(this.o);
        this.d.setOnItemClickListener(this.m);
        this.d.setFocusable(true);
        this.d.setFocusableInTouchMode(true);
        this.d.setOnItemSelectedListener(new cw(this));
        this.d.setOnScrollListener(this.z);
        if (this.w != null)
          this.d.setOnItemSelectedListener(this.w);
        localObject1 = this.d;
        localView = this.t;
        if (localView == null)
          break label1232;
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (this.k)
        {
        default:
          Log.e("ListPopupWindow", "Invalid hint position " + this.k);
          if (this.e >= 0)
          {
            i2 = this.e;
            i1 = -2147483648;
            label270: localView.measure(View.MeasureSpec.makeMeasureSpec(i2, i1), 0);
            localObject1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
            i1 = localView.getMeasuredHeight();
            i2 = ((LinearLayout.LayoutParams)localObject1).topMargin;
            i1 = ((LinearLayout.LayoutParams)localObject1).bottomMargin + (i1 + i2);
            localObject1 = localObject2;
          }
          break;
        case 1:
        case 0:
        }
      }
    }
    while (true)
    {
      this.c.setContentView((View)localObject1);
      while (true)
      {
        label326: localObject1 = this.c.getBackground();
        int i3;
        label389: label403: int i4;
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(this.D);
          i2 = this.D.top + this.D.bottom;
          i3 = i2;
          if (!this.h)
          {
            this.g = (-this.D.top);
            i3 = i2;
          }
          if (this.c.getInputMethodMode() != 2)
            break label726;
          bool1 = true;
          i4 = a(this.l, this.g, bool1);
          if ((!this.r) && (this.p != -1))
            break label732;
          i1 = i4 + i3;
          bool1 = g();
          y.a(this.c, this.q);
          if (!this.c.isShowing())
            break label981;
          if (this.e != -1)
            break label882;
          i2 = -1;
          label476: if (this.p != -1)
            break label958;
          if (!bool1)
            break label910;
          label489: if (!bool1)
            break label920;
          localObject1 = this.c;
          if (this.e != -1)
            break label915;
          i3 = -1;
          label510: ((PopupWindow)localObject1).setWidth(i3);
          this.c.setHeight(0);
        }
        while (true)
        {
          label524: localObject1 = this.c;
          if ((!this.s) && (!this.r))
          {
            bool1 = bool2;
            label548: ((PopupWindow)localObject1).setOutsideTouchable(bool1);
            localObject1 = this.c;
            localObject2 = this.l;
            i4 = this.f;
            int i5 = this.g;
            i3 = i2;
            if (i2 < 0)
              i3 = -1;
            i2 = i1;
            if (i1 < 0)
              i2 = -1;
            ((PopupWindow)localObject1).update((View)localObject2, i4, i5, i3, i2);
          }
          label910: label915: label920: label1187: 
          while (true)
          {
            return;
            bool1 = false;
            break;
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            ((LinearLayout)localObject2).addView(localView);
            break label254;
            ((LinearLayout)localObject2).addView(localView);
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            break label254;
            i1 = 0;
            i2 = 0;
            break label270;
            this.c.getContentView();
            localObject1 = this.t;
            if (localObject1 == null)
              break label1227;
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i1 = ((View)localObject1).getMeasuredHeight();
            i2 = ((LinearLayout.LayoutParams)localObject2).topMargin;
            i1 = ((LinearLayout.LayoutParams)localObject2).bottomMargin + (i1 + i2);
            break label326;
            this.D.setEmpty();
            i3 = 0;
            break label389;
            label726: bool1 = false;
            break label403;
            label732: switch (this.e)
            {
            default:
              i2 = View.MeasureSpec.makeMeasureSpec(this.e, 1073741824);
            case -2:
            case -1:
            }
            while (true)
            {
              i4 = this.d.a(i2, i4 - i1);
              i2 = i1;
              if (i4 > 0)
                i2 = i1 + i3;
              i1 = i2 + i4;
              break;
              i2 = View.MeasureSpec.makeMeasureSpec(this.n.getResources().getDisplayMetrics().widthPixels - (this.D.left + this.D.right), -2147483648);
              continue;
              i2 = View.MeasureSpec.makeMeasureSpec(this.n.getResources().getDisplayMetrics().widthPixels - (this.D.left + this.D.right), 1073741824);
            }
            label882: if (this.e == -2)
            {
              i2 = this.l.getWidth();
              break label476;
            }
            i2 = this.e;
            break label476;
            i1 = -1;
            break label489;
            i3 = 0;
            break label510;
            localObject1 = this.c;
            if (this.e == -1);
            for (i3 = -1; ; i3 = 0)
            {
              ((PopupWindow)localObject1).setWidth(i3);
              this.c.setHeight(-1);
              break;
            }
            label958: if (this.p != -2)
            {
              i1 = this.p;
              break label524;
              bool1 = false;
              break label548;
              label981: if (this.e == -1)
              {
                i2 = -1;
                label991: if (this.p != -1)
                  break label1187;
                i1 = -1;
                label1001: this.c.setWidth(i2);
                this.c.setHeight(i1);
                if (a == null);
              }
              try
              {
                a.invoke(this.c, new Object[] { Boolean.valueOf(true) });
                localObject1 = this.c;
                if ((!this.s) && (!this.r))
                {
                  bool1 = bool3;
                  ((PopupWindow)localObject1).setOutsideTouchable(bool1);
                  this.c.setTouchInterceptor(this.y);
                  y.a(this.c, this.l, this.f, this.g, this.i);
                  this.d.setSelection(-1);
                  if ((!this.E) || (this.d.isInTouchMode()))
                    f();
                  if (this.E)
                    continue;
                  this.C.post(this.A);
                  return;
                  if (this.e == -2)
                  {
                    i2 = this.l.getWidth();
                    break label991;
                  }
                  i2 = this.e;
                  break label991;
                  if (this.p == -2)
                    break label1001;
                  i1 = this.p;
                }
              }
              catch (Exception localException)
              {
                while (true)
                {
                  Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                  continue;
                  bool1 = false;
                }
              }
            }
          }
        }
        label1227: i1 = 0;
      }
      label1232: i1 = 0;
    }
  }

  public final void c()
  {
    this.E = true;
    this.c.setFocusable(true);
  }

  public final void d()
  {
    this.c.dismiss();
    if (this.t != null)
    {
      ViewParent localViewParent = this.t.getParent();
      if ((localViewParent instanceof ViewGroup))
        ((ViewGroup)localViewParent).removeView(this.t);
    }
    this.c.setContentView(null);
    this.d = null;
    this.C.removeCallbacks(this.x);
  }

  public final void e()
  {
    this.c.setInputMethodMode(2);
  }

  public final void f()
  {
    cx localcx = this.d;
    if (localcx != null)
    {
      cx.a(localcx, true);
      localcx.requestLayout();
    }
  }

  public final boolean g()
  {
    return this.c.getInputMethodMode() == 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cu
 * JD-Core Version:    0.6.2
 */