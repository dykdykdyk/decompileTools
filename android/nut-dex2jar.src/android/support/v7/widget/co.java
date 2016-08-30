package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bl;
import android.support.v4.view.q;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

public class co extends ViewGroup
{
  private boolean a = true;
  private int b = -1;
  private int c = 0;
  private int d;
  private int e = 8388659;
  private int f;
  private float g;
  private boolean h;
  private int[] i;
  private int[] j;
  private Drawable k;
  private int l;
  private int m;
  private int n;
  private int o;

  public co(Context paramContext)
  {
    this(paramContext, null);
  }

  public co(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public co(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ft.a(paramContext, paramAttributeSet, l.LinearLayoutCompat, paramInt);
    paramInt = paramContext.a(l.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0)
      setOrientation(paramInt);
    paramInt = paramContext.a(l.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0)
      setGravity(paramInt);
    boolean bool = paramContext.a(l.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool)
      setBaselineAligned(bool);
    paramInt = l.LinearLayoutCompat_android_weightSum;
    this.g = paramContext.a.getFloat(paramInt, -1.0F);
    this.b = paramContext.a(l.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    this.h = paramContext.a(l.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(paramContext.a(l.LinearLayoutCompat_divider));
    this.n = paramContext.a(l.LinearLayoutCompat_showDividers, 0);
    this.o = paramContext.c(l.LinearLayoutCompat_dividerPadding, 0);
    paramContext.a.recycle();
  }

  private void a(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() != 8)
      {
        cp localcp = (cp)localView.getLayoutParams();
        if (localcp.width == -1)
        {
          int i3 = localcp.height;
          localcp.height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, i2, 0, paramInt2, 0);
          localcp.height = i3;
        }
      }
      i1 += 1;
    }
  }

  private void a(Canvas paramCanvas, int paramInt)
  {
    this.k.setBounds(getPaddingLeft() + this.o, paramInt, getWidth() - getPaddingRight() - this.o, this.m + paramInt);
    this.k.draw(paramCanvas);
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  private boolean a(int paramInt)
  {
    if (paramInt == 0)
      if ((this.n & 0x1) == 0);
    do
    {
      return true;
      return false;
      if (paramInt != getChildCount())
        break;
    }
    while ((this.n & 0x4) != 0);
    return false;
    if ((this.n & 0x2) != 0)
    {
      paramInt -= 1;
      while (true)
      {
        if (paramInt < 0)
          break label75;
        if (getChildAt(paramInt).getVisibility() != 8)
          break;
        paramInt -= 1;
      }
    }
    return false;
    label75: return false;
  }

  private void b(int paramInt1, int paramInt2)
  {
    this.f = 0;
    int i6 = 0;
    int i4 = 0;
    int i3 = 0;
    int i8 = 0;
    int i5 = 1;
    float f1 = 0.0F;
    int i15 = getVirtualChildCount();
    int i17 = View.MeasureSpec.getMode(paramInt1);
    int i16 = View.MeasureSpec.getMode(paramInt2);
    int i7 = 0;
    int i2 = 0;
    if ((this.i == null) || (this.j == null))
    {
      this.i = new int[4];
      this.j = new int[4];
    }
    Object localObject1 = this.i;
    Object localObject2 = this.j;
    localObject1[3] = -1;
    localObject1[2] = -1;
    localObject1[1] = -1;
    localObject1[0] = -1;
    localObject2[3] = -1;
    localObject2[2] = -1;
    localObject2[1] = -1;
    localObject2[0] = -1;
    boolean bool1 = this.a;
    boolean bool2 = this.h;
    if (i17 == 1073741824);
    int i1;
    int i9;
    Object localObject3;
    int i12;
    int i11;
    for (int i10 = 1; ; i10 = 0)
    {
      i1 = -2147483648;
      for (i9 = 0; ; i9 = i12)
      {
        if (i9 >= i15)
          break label894;
        localObject3 = getChildAt(i9);
        if (localObject3 != null)
          break;
        this.f += 0;
        i12 = i9;
        i11 = i4;
        i9 = i3;
        i4 = i8;
        i3 = i5;
        i12 += 1;
        i5 = i3;
        i8 = i4;
        i3 = i9;
        i4 = i11;
      }
    }
    cp localcp;
    label340: label361: int i13;
    label386: int i14;
    if (((View)localObject3).getVisibility() != 8)
    {
      if (a(i9))
        this.f += this.l;
      localcp = (cp)((View)localObject3).getLayoutParams();
      f1 += localcp.g;
      if ((i17 == 1073741824) && (localcp.width == 0) && (localcp.g > 0.0F))
        if (i10 != 0)
        {
          this.f += localcp.leftMargin + localcp.rightMargin;
          if (!bool1)
            break label643;
          i11 = View.MeasureSpec.makeMeasureSpec(0, 0);
          ((View)localObject3).measure(i11, i11);
          i11 = 0;
          if ((i16 == 1073741824) || (localcp.height != -1))
            break label2320;
          i7 = 1;
          i11 = 1;
          i12 = localcp.topMargin + localcp.bottomMargin;
          i13 = ((View)localObject3).getMeasuredHeight() + i12;
          i14 = gj.a(i4, bl.j((View)localObject3));
          if (bool1)
          {
            int i18 = ((View)localObject3).getBaseline();
            if (i18 != -1)
            {
              if (localcp.h >= 0)
                break label823;
              i4 = this.e;
              label453: i4 = ((i4 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              localObject1[i4] = Math.max(localObject1[i4], i18);
              localObject2[i4] = Math.max(localObject2[i4], i13 - i18);
            }
          }
          i6 = Math.max(i6, i13);
          if ((i5 == 0) || (localcp.height != -1))
            break label833;
          i4 = 1;
          label526: if (localcp.g <= 0.0F)
            break label846;
          if (i11 == 0)
            break label839;
          label541: i5 = Math.max(i8, i12);
          i11 = i4;
          i4 = i5;
          i12 = i1;
          i8 = i14;
          i5 = i3;
          i3 = i11;
          i1 = i2;
          i2 = i12;
        }
    }
    while (true)
    {
      i12 = i9 + 0;
      i9 = i1;
      i1 = i2;
      i2 = i9;
      i9 = i5;
      i11 = i8;
      break;
      i11 = this.f;
      this.f = Math.max(i11, localcp.leftMargin + i11 + localcp.rightMargin);
      break label340;
      label643: i2 = 1;
      break label361;
      i12 = -2147483648;
      i11 = i12;
      if (localcp.width == 0)
      {
        i11 = i12;
        if (localcp.g > 0.0F)
        {
          i11 = 0;
          localcp.width = -2;
        }
      }
      if (f1 == 0.0F)
      {
        i12 = this.f;
        label701: a((View)localObject3, paramInt1, i12, paramInt2, 0);
        if (i11 != -2147483648)
          localcp.width = i11;
        i11 = ((View)localObject3).getMeasuredWidth();
        if (i10 == 0)
          break label786;
        this.f += localcp.leftMargin + i11 + localcp.rightMargin + 0;
      }
      while (true)
        if (bool2)
        {
          i1 = Math.max(i11, i1);
          break;
          i12 = 0;
          break label701;
          label786: i12 = this.f;
          this.f = Math.max(i12, i12 + i11 + localcp.leftMargin + localcp.rightMargin + 0);
          continue;
          label823: i4 = localcp.h;
          break label453;
          label833: i4 = 0;
          break label526;
          label839: i12 = i13;
          break label541;
          label846: if (i11 != 0);
          while (true)
          {
            i5 = Math.max(i3, i12);
            i3 = i4;
            i11 = i2;
            i4 = i8;
            i2 = i1;
            i1 = i11;
            i8 = i14;
            break;
            i12 = i13;
          }
          label894: if ((this.f > 0) && (a(i15)))
            this.f += this.l;
          if ((localObject1[1] != -1) || (localObject1[0] != -1) || (localObject1[2] != -1) || (localObject1[3] != -1));
          for (i9 = Math.max(i6, Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))) + Math.max(localObject2[3], Math.max(localObject2[0], Math.max(localObject2[1], localObject2[2])))); ; i9 = i6)
          {
            if ((bool2) && ((i17 == -2147483648) || (i17 == 0)))
            {
              this.f = 0;
              i6 = 0;
              if (i6 < i15)
              {
                localObject3 = getChildAt(i6);
                if (localObject3 == null)
                  this.f += 0;
                while (true)
                {
                  i6 += 1;
                  break;
                  if (((View)localObject3).getVisibility() == 8)
                  {
                    i6 += 0;
                  }
                  else
                  {
                    localObject3 = (cp)((View)localObject3).getLayoutParams();
                    if (i10 != 0)
                    {
                      i11 = this.f;
                      i12 = ((cp)localObject3).leftMargin;
                      this.f = (((cp)localObject3).rightMargin + (i12 + i1) + 0 + i11);
                    }
                    else
                    {
                      i11 = this.f;
                      i12 = ((cp)localObject3).leftMargin;
                      this.f = Math.max(i11, ((cp)localObject3).rightMargin + (i11 + i1 + i12) + 0);
                    }
                  }
                }
              }
            }
            this.f += getPaddingLeft() + getPaddingRight();
            i13 = bl.a(Math.max(this.f, getSuggestedMinimumWidth()), paramInt1, 0);
            i6 = (0xFFFFFF & i13) - this.f;
            if ((i2 != 0) || ((i6 != 0) && (f1 > 0.0F)))
            {
              if (this.g > 0.0F)
                f1 = this.g;
              localObject1[3] = -1;
              localObject1[2] = -1;
              localObject1[1] = -1;
              localObject1[0] = -1;
              localObject2[3] = -1;
              localObject2[2] = -1;
              localObject2[1] = -1;
              localObject2[0] = -1;
              this.f = 0;
              i8 = 0;
              i2 = i5;
              i5 = -1;
              i1 = i4;
              i4 = i5;
              i5 = i6;
              if (i8 < i15)
              {
                localObject3 = getChildAt(i8);
                if ((localObject3 == null) || (((View)localObject3).getVisibility() == 8))
                  break label2282;
                localcp = (cp)((View)localObject3).getLayoutParams();
                float f2 = localcp.g;
                if (f2 <= 0.0F)
                  break label2267;
                i9 = (int)(i5 * f2 / f1);
                i12 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + localcp.topMargin + localcp.bottomMargin, localcp.height);
                if ((localcp.width != 0) || (i17 != 1073741824))
                {
                  i11 = i9 + ((View)localObject3).getMeasuredWidth();
                  i6 = i11;
                  if (i11 < 0)
                    i6 = 0;
                  label1468: ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i12);
                  i1 = gj.a(i1, bl.j((View)localObject3) & 0xFF000000);
                  f1 -= f2;
                  i6 = i5 - i9;
                  i5 = i1;
                  i1 = i6;
                  label1518: if (i10 == 0)
                    break label1791;
                  this.f += ((View)localObject3).getMeasuredWidth() + localcp.leftMargin + localcp.rightMargin + 0;
                  label1551: if ((i16 == 1073741824) || (localcp.height != -1))
                    break label1831;
                  i6 = 1;
                  label1570: i12 = localcp.topMargin + localcp.bottomMargin;
                  i11 = ((View)localObject3).getMeasuredHeight() + i12;
                  i9 = Math.max(i4, i11);
                  if (i6 == 0)
                    break label1837;
                  i4 = i12;
                  label1611: i4 = Math.max(i3, i4);
                  if ((i2 == 0) || (localcp.height != -1))
                    break label1844;
                  i2 = 1;
                  label1637: if (bool1)
                  {
                    i6 = ((View)localObject3).getBaseline();
                    if (i6 != -1)
                    {
                      if (localcp.h >= 0)
                        break label1850;
                      i3 = this.e;
                      i3 = ((i3 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
                      localObject1[i3] = Math.max(localObject1[i3], i6);
                      localObject2[i3] = Math.max(localObject2[i3], i11 - i6);
                    }
                  }
                  label1669: i6 = i5;
                  i5 = i2;
                  i3 = i9;
                  i2 = i6;
                }
              }
            }
            while (true)
            {
              i9 = i8 + 1;
              i6 = i5;
              i8 = i3;
              i5 = i1;
              i1 = i2;
              i2 = i6;
              i3 = i4;
              i4 = i8;
              i8 = i9;
              break;
              if (i9 > 0)
              {
                i6 = i9;
                break label1468;
              }
              i6 = 0;
              break label1468;
              label1791: i6 = this.f;
              this.f = Math.max(i6, ((View)localObject3).getMeasuredWidth() + i6 + localcp.leftMargin + localcp.rightMargin + 0);
              break label1551;
              label1831: i6 = 0;
              break label1570;
              label1837: i4 = i11;
              break label1611;
              label1844: i2 = 0;
              break label1637;
              label1850: i3 = localcp.h;
              break label1669;
              this.f += getPaddingLeft() + getPaddingRight();
              if ((localObject1[1] == -1) && (localObject1[0] == -1) && (localObject1[2] == -1))
              {
                i5 = i4;
                if (localObject1[3] == -1);
              }
              else
              {
                i5 = Math.max(i4, Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))) + Math.max(localObject2[3], Math.max(localObject2[0], Math.max(localObject2[1], localObject2[2]))));
              }
              i4 = i1;
              i6 = i2;
              i2 = i5;
              i1 = i3;
              while (true)
              {
                if ((i6 == 0) && (i16 != 1073741824));
                while (true)
                {
                  setMeasuredDimension(0xFF000000 & i4 | i13, bl.a(Math.max(i1 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i4 << 16));
                  if (i7 != 0)
                  {
                    i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                    paramInt2 = 0;
                    while (paramInt2 < i15)
                    {
                      localObject1 = getChildAt(paramInt2);
                      if (((View)localObject1).getVisibility() != 8)
                      {
                        localObject2 = (cp)((View)localObject1).getLayoutParams();
                        if (((cp)localObject2).height == -1)
                        {
                          i2 = ((cp)localObject2).width;
                          ((cp)localObject2).width = ((View)localObject1).getMeasuredWidth();
                          measureChildWithMargins((View)localObject1, paramInt1, 0, i1, 0);
                          ((cp)localObject2).width = i2;
                        }
                      }
                      paramInt2 += 1;
                      continue;
                      i3 = Math.max(i3, i8);
                      if ((!bool2) || (i17 == 1073741824))
                        break label2252;
                      i2 = 0;
                      while (i2 < i15)
                      {
                        localObject1 = getChildAt(i2);
                        if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8) && (((cp)((View)localObject1).getLayoutParams()).g > 0.0F))
                          ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject1).getMeasuredHeight(), 1073741824));
                        i2 += 1;
                      }
                    }
                  }
                  return;
                  i1 = i2;
                }
                label2252: i1 = i3;
                i2 = i9;
                i6 = i5;
              }
              label2267: i6 = i1;
              i1 = i5;
              i5 = i6;
              break label1518;
              label2282: i9 = i2;
              i2 = i1;
              i6 = i4;
              i1 = i5;
              i5 = i9;
              i4 = i3;
              i3 = i6;
            }
          }
          label2320: break label386;
        }
      break label361;
      i12 = i2;
      i11 = i3;
      i13 = i4;
      i2 = i1;
      i1 = i12;
      i3 = i5;
      i4 = i8;
      i5 = i11;
      i8 = i13;
    }
  }

  private void b(Canvas paramCanvas, int paramInt)
  {
    this.k.setBounds(paramInt, getPaddingTop() + this.o, this.l + paramInt, getHeight() - getPaddingBottom() - this.o);
    this.k.draw(paramCanvas);
  }

  private static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }

  private static int getChildrenSkipCount$5359dca7()
  {
    return 0;
  }

  private static int getLocationOffset$3c7ec8d0()
  {
    return 0;
  }

  private static int getNextLocationOffset$3c7ec8d0()
  {
    return 0;
  }

  public cp a(AttributeSet paramAttributeSet)
  {
    return new cp(getContext(), paramAttributeSet);
  }

  protected cp b(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new cp(paramLayoutParams);
  }

  protected cp c()
  {
    if (this.d == 0)
      return new cp(-2, -2);
    if (this.d == 1)
      return new cp(-1, -2);
    return null;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof cp;
  }

  public int getBaseline()
  {
    int i1 = -1;
    if (this.b < 0)
      i1 = super.getBaseline();
    View localView;
    int i2;
    do
    {
      return i1;
      if (getChildCount() <= this.b)
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
      localView = getChildAt(this.b);
      i2 = localView.getBaseline();
      if (i2 != -1)
        break;
    }
    while (this.b == 0);
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
    i1 = this.c;
    if (this.d == 1)
    {
      int i3 = this.e & 0x70;
      if (i3 != 48)
        switch (i3)
        {
        default:
        case 80:
        case 16:
        }
    }
    while (true)
    {
      return ((cp)localView.getLayoutParams()).topMargin + i1 + i2;
      i1 = getBottom() - getTop() - getPaddingBottom() - this.f;
      continue;
      i1 += (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.f) / 2;
    }
  }

  public int getBaselineAlignedChildIndex()
  {
    return this.b;
  }

  public Drawable getDividerDrawable()
  {
    return this.k;
  }

  public int getDividerPadding()
  {
    return this.o;
  }

  public int getDividerWidth()
  {
    return this.l;
  }

  public int getOrientation()
  {
    return this.d;
  }

  public int getShowDividers()
  {
    return this.n;
  }

  int getVirtualChildCount()
  {
    return getChildCount();
  }

  public float getWeightSum()
  {
    return this.g;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.k == null);
    int i1;
    cp localcp;
    int i3;
    boolean bool;
    label259: 
    do
    {
      int i2;
      do
      {
        return;
        if (this.d != 1)
          break;
        i2 = getVirtualChildCount();
        i1 = 0;
        while (i1 < i2)
        {
          localView = getChildAt(i1);
          if ((localView != null) && (localView.getVisibility() != 8) && (a(i1)))
          {
            localcp = (cp)localView.getLayoutParams();
            a(paramCanvas, localView.getTop() - localcp.topMargin - this.m);
          }
          i1 += 1;
        }
      }
      while (!a(i2));
      localView = getChildAt(i2 - 1);
      if (localView == null);
      for (i1 = getHeight() - getPaddingBottom() - this.m; ; i1 = localcp.bottomMargin + i1)
      {
        a(paramCanvas, i1);
        return;
        localcp = (cp)localView.getLayoutParams();
        i1 = localView.getBottom();
      }
      i3 = getVirtualChildCount();
      bool = gj.a(this);
      i1 = 0;
      if (i1 < i3)
      {
        localView = getChildAt(i1);
        if ((localView != null) && (localView.getVisibility() != 8) && (a(i1)))
        {
          localcp = (cp)localView.getLayoutParams();
          if (!bool)
            break label259;
          i2 = localView.getRight();
        }
        for (i2 = localcp.rightMargin + i2; ; i2 = localView.getLeft() - localcp.leftMargin - this.l)
        {
          b(paramCanvas, i2);
          i1 += 1;
          break;
        }
      }
    }
    while (!a(i3));
    View localView = getChildAt(i3 - 1);
    if (localView == null)
      if (bool)
        i1 = getPaddingLeft();
    while (true)
    {
      b(paramCanvas, i1);
      return;
      i1 = getWidth() - getPaddingRight() - this.l;
      continue;
      localcp = (cp)localView.getLayoutParams();
      if (bool)
      {
        i1 = localView.getLeft() - localcp.leftMargin - this.l;
      }
      else
      {
        i1 = localView.getRight();
        i1 = localcp.rightMargin + i1;
      }
    }
  }

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(co.class.getName());
    }
  }

  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(co.class.getName());
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    label93: Object localObject1;
    if (this.d == 1)
    {
      i1 = getPaddingLeft();
      i2 = paramInt3 - paramInt1;
      i3 = getPaddingRight();
      i4 = getPaddingRight();
      i5 = getVirtualChildCount();
      paramInt1 = this.e;
      i6 = this.e;
      switch (paramInt1 & 0x70)
      {
      default:
        paramInt1 = getPaddingTop();
        paramInt3 = 0;
        paramInt2 = paramInt1;
        paramInt1 = paramInt3;
        if (paramInt1 < i5)
        {
          localObject1 = getChildAt(paramInt1);
          if (localObject1 == null)
            paramInt2 += 0;
        }
        break;
      case 80:
      case 16:
      }
    }
    while (true)
    {
      paramInt1 += 1;
      break label93;
      paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - this.f;
      break;
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - this.f) / 2;
      break;
      if (((View)localObject1).getVisibility() != 8)
      {
        int i7 = ((View)localObject1).getMeasuredWidth();
        int i8 = ((View)localObject1).getMeasuredHeight();
        Object localObject2 = (cp)((View)localObject1).getLayoutParams();
        paramInt4 = ((cp)localObject2).h;
        paramInt3 = paramInt4;
        if (paramInt4 < 0)
          paramInt3 = 0x800007 & i6;
        switch (q.a(paramInt3, bl.h(this)) & 0x7)
        {
        default:
          paramInt3 = ((cp)localObject2).leftMargin + i1;
        case 1:
        case 5:
        }
        while (true)
        {
          paramInt4 = paramInt2;
          if (a(paramInt1))
            paramInt4 = paramInt2 + this.m;
          paramInt2 = paramInt4 + ((cp)localObject2).topMargin;
          b((View)localObject1, paramInt3, paramInt2 + 0, i7, i8);
          paramInt2 += ((cp)localObject2).bottomMargin + i8 + 0;
          paramInt1 += 0;
          break;
          paramInt3 = (i2 - i1 - i4 - i7) / 2 + i1 + ((cp)localObject2).leftMargin - ((cp)localObject2).rightMargin;
          continue;
          paramInt3 = i2 - i3 - i7 - ((cp)localObject2).rightMargin;
        }
        paramBoolean = gj.a(this);
        i3 = getPaddingTop();
        i5 = paramInt4 - paramInt2;
        i6 = getPaddingBottom();
        i7 = getPaddingBottom();
        i8 = getVirtualChildCount();
        paramInt2 = this.e;
        int i9 = this.e;
        boolean bool = this.a;
        localObject1 = this.i;
        localObject2 = this.j;
        switch (q.a(paramInt2 & 0x800007, bl.h(this)))
        {
        default:
          paramInt1 = getPaddingLeft();
          if (paramBoolean)
            i1 = i8 - 1;
          break;
        case 5:
        case 1:
        }
        for (paramInt4 = -1; ; paramInt4 = 1)
        {
          paramInt2 = 0;
          paramInt3 = paramInt1;
          label507: int i12;
          View localView;
          if (paramInt2 < i8)
          {
            i12 = i1 + paramInt4 * paramInt2;
            localView = getChildAt(i12);
            if (localView == null)
            {
              paramInt3 += 0;
              paramInt1 = paramInt2;
            }
          }
          while (true)
          {
            paramInt2 = paramInt1 + 1;
            break label507;
            paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - this.f;
            break;
            paramInt1 = getPaddingLeft() + (paramInt3 - paramInt1 - this.f) / 2;
            break;
            if (localView.getVisibility() != 8)
            {
              int i10 = localView.getMeasuredWidth();
              int i11 = localView.getMeasuredHeight();
              paramInt1 = -1;
              cp localcp = (cp)localView.getLayoutParams();
              i2 = paramInt1;
              if (bool)
              {
                i2 = paramInt1;
                if (localcp.height != -1)
                  i2 = localView.getBaseline();
              }
              i4 = localcp.h;
              paramInt1 = i4;
              if (i4 < 0)
                paramInt1 = i9 & 0x70;
              switch (paramInt1 & 0x70)
              {
              default:
                paramInt1 = i3;
              case 48:
              case 16:
              case 80:
              }
              label715: label895: 
              while (true)
              {
                if (a(i12))
                  paramInt3 = this.l + paramInt3;
                while (true)
                {
                  paramInt3 += localcp.leftMargin;
                  b(localView, paramInt3 + 0, paramInt1, i10, i11);
                  paramInt3 += localcp.rightMargin + i10 + 0;
                  paramInt1 = paramInt2 + 0;
                  break;
                  i4 = localcp.topMargin + i3;
                  paramInt1 = i4;
                  if (i2 == -1)
                    break label895;
                  paramInt1 = localObject1[1] - i2 + i4;
                  break label715;
                  paramInt1 = (i5 - i3 - i7 - i11) / 2 + i3 + localcp.topMargin - localcp.bottomMargin;
                  break label715;
                  i4 = i5 - i6 - i11 - localcp.bottomMargin;
                  paramInt1 = i4;
                  if (i2 == -1)
                    break label895;
                  paramInt1 = localView.getMeasuredHeight();
                  paramInt1 = i4 - (localObject2[2] - (paramInt1 - i2));
                  break label715;
                  return;
                }
              }
            }
            paramInt1 = paramInt2;
          }
          i1 = 0;
        }
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3;
    int i1;
    int i2;
    int i8;
    int i4;
    float f1;
    int i14;
    int i15;
    int i16;
    int i7;
    int i6;
    boolean bool;
    int i5;
    int i9;
    Object localObject;
    int i13;
    int i12;
    int i11;
    int i10;
    cp localcp;
    if (this.d == 1)
    {
      this.f = 0;
      i3 = 0;
      i1 = 0;
      i2 = 0;
      i8 = 0;
      i4 = 1;
      f1 = 0.0F;
      i14 = getVirtualChildCount();
      i15 = View.MeasureSpec.getMode(paramInt1);
      i16 = View.MeasureSpec.getMode(paramInt2);
      i7 = 0;
      i6 = 0;
      int i17 = this.b;
      bool = this.h;
      i5 = -2147483648;
      i9 = 0;
      while (true)
        if (i9 < i14)
        {
          localObject = getChildAt(i9);
          if (localObject == null)
          {
            this.f += 0;
            i13 = i9;
            i12 = i3;
            i11 = i1;
            i10 = i2;
            i9 = i8;
            i3 = i4;
            i2 = i6;
            i1 = i5;
            i13 += 1;
            i5 = i1;
            i6 = i2;
            i4 = i3;
            i8 = i9;
            i2 = i10;
            i1 = i11;
            i3 = i12;
            i9 = i13;
          }
          else
          {
            if (((View)localObject).getVisibility() == 8)
              break label1656;
            if (a(i9))
              this.f += this.m;
            localcp = (cp)((View)localObject).getLayoutParams();
            f1 += localcp.g;
            if ((i16 == 1073741824) && (localcp.height == 0) && (localcp.g > 0.0F))
            {
              i6 = this.f;
              this.f = Math.max(i6, localcp.topMargin + i6 + localcp.bottomMargin);
              i6 = 1;
              label283: if ((i17 >= 0) && (i17 == i9 + 1))
                this.c = this.f;
              if ((i9 < i17) && (localcp.g > 0.0F))
                throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
            }
            else
            {
              i11 = -2147483648;
              i10 = i11;
              if (localcp.height == 0)
              {
                i10 = i11;
                if (localcp.g > 0.0F)
                {
                  i10 = 0;
                  localcp.height = -2;
                }
              }
              if (f1 == 0.0F);
              for (i11 = this.f; ; i11 = 0)
              {
                a((View)localObject, paramInt1, 0, paramInt2, i11);
                if (i10 != -2147483648)
                  localcp.height = i10;
                i10 = ((View)localObject).getMeasuredHeight();
                i11 = this.f;
                this.f = Math.max(i11, i11 + i10 + localcp.topMargin + localcp.bottomMargin + 0);
                if (!bool)
                  break label1653;
                i5 = Math.max(i10, i5);
                break;
              }
            }
            i10 = 0;
            if ((i15 == 1073741824) || (localcp.width != -1))
              break label1650;
            i7 = 1;
            i10 = 1;
            label499: i11 = localcp.leftMargin + localcp.rightMargin;
            i12 = ((View)localObject).getMeasuredWidth() + i11;
            i3 = Math.max(i3, i12);
            i13 = gj.a(i1, bl.j((View)localObject));
            if ((i4 != 0) && (localcp.width == -1))
            {
              i1 = 1;
              label560: if (localcp.g <= 0.0F)
                break label678;
              if (i10 == 0)
                break label671;
              label575: i8 = Math.max(i8, i11);
              i4 = i2;
              i2 = i6;
              i6 = i3;
              i3 = i8;
              i10 = i5;
              i8 = i13;
              i5 = i4;
              i4 = i3;
              i3 = i1;
              i1 = i2;
              i2 = i10;
            }
          }
        }
    }
    while (true)
    {
      i13 = i9 + 0;
      i9 = i1;
      i1 = i2;
      i2 = i9;
      i9 = i4;
      i10 = i5;
      i11 = i8;
      i12 = i6;
      break;
      i1 = 0;
      break label560;
      label671: i11 = i12;
      break label575;
      label678: if (i10 != 0);
      while (true)
      {
        i10 = Math.max(i2, i11);
        i4 = i1;
        i1 = i6;
        i2 = i5;
        i6 = i3;
        i3 = i4;
        i4 = i8;
        i5 = i10;
        i8 = i13;
        break;
        i11 = i12;
      }
      if ((this.f > 0) && (a(i14)))
        this.f += this.m;
      if ((bool) && ((i16 == -2147483648) || (i16 == 0)))
      {
        this.f = 0;
        i9 = 0;
        if (i9 < i14)
        {
          localObject = getChildAt(i9);
          if (localObject == null)
            this.f += 0;
          while (true)
          {
            i9 += 1;
            break;
            if (((View)localObject).getVisibility() == 8)
            {
              i9 += 0;
            }
            else
            {
              localObject = (cp)((View)localObject).getLayoutParams();
              i10 = this.f;
              i11 = ((cp)localObject).topMargin;
              this.f = Math.max(i10, ((cp)localObject).bottomMargin + (i10 + i5 + i11) + 0);
            }
          }
        }
      }
      this.f += getPaddingTop() + getPaddingBottom();
      i11 = bl.a(Math.max(this.f, getSuggestedMinimumHeight()), paramInt2, 0);
      i9 = (0xFFFFFF & i11) - this.f;
      if ((i6 != 0) || ((i9 != 0) && (f1 > 0.0F)))
      {
        if (this.g > 0.0F)
          f1 = this.g;
        this.f = 0;
        i8 = 0;
        i5 = i4;
        i4 = i3;
        i3 = i2;
        i2 = i5;
        i5 = i9;
        if (i8 < i14)
        {
          localObject = getChildAt(i8);
          if (((View)localObject).getVisibility() == 8)
            break label1623;
          localcp = (cp)((View)localObject).getLayoutParams();
          float f2 = localcp.g;
          if (f2 <= 0.0F)
            break label1608;
          i9 = (int)(i5 * f2 / f1);
          i12 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localcp.leftMargin + localcp.rightMargin, localcp.width);
          if ((localcp.height != 0) || (i16 != 1073741824))
          {
            i10 = i9 + ((View)localObject).getMeasuredHeight();
            i6 = i10;
            if (i10 < 0)
              i6 = 0;
            label1133: ((View)localObject).measure(i12, View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
            i1 = gj.a(i1, bl.j((View)localObject) & 0xFFFFFF00);
            i6 = i5 - i9;
            i5 = i1;
            f1 -= f2;
            i1 = i6;
            label1183: i9 = localcp.leftMargin + localcp.rightMargin;
            i10 = ((View)localObject).getMeasuredWidth() + i9;
            i6 = Math.max(i4, i10);
            if ((i15 == 1073741824) || (localcp.width != -1))
              break label1377;
            i4 = 1;
            label1234: if (i4 == 0)
              break label1383;
            i4 = i9;
            label1243: i3 = Math.max(i3, i4);
            if ((i2 == 0) || (localcp.width != -1))
              break label1390;
            i2 = 1;
            label1269: i4 = this.f;
            i9 = ((View)localObject).getMeasuredHeight();
            i10 = localcp.topMargin;
            this.f = Math.max(i4, localcp.bottomMargin + (i9 + i4 + i10) + 0);
            i4 = i2;
            i2 = i6;
          }
        }
      }
      while (true)
      {
        i9 = i8 + 1;
        i8 = i5;
        i6 = i2;
        i5 = i1;
        i1 = i8;
        i2 = i4;
        i4 = i6;
        i8 = i9;
        break;
        if (i9 > 0)
        {
          i6 = i9;
          break label1133;
        }
        i6 = 0;
        break label1133;
        label1377: i4 = 0;
        break label1234;
        label1383: i4 = i10;
        break label1243;
        label1390: i2 = 0;
        break label1269;
        this.f += getPaddingTop() + getPaddingBottom();
        i5 = i3;
        i3 = i4;
        i4 = i2;
        for (i2 = i5; ; i2 = i6)
        {
          if ((i4 == 0) && (i15 != 1073741824));
          while (true)
          {
            setMeasuredDimension(bl.a(Math.max(i2 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i1), i11);
            if (i7 != 0)
              a(i14, paramInt2);
            return;
            i6 = Math.max(i2, i8);
            if ((!bool) || (i16 == 1073741824))
              break;
            i2 = 0;
            while (i2 < i14)
            {
              localObject = getChildAt(i2);
              if ((localObject != null) && (((View)localObject).getVisibility() != 8) && (((cp)((View)localObject).getLayoutParams()).g > 0.0F))
                ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(((View)localObject).getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
              i2 += 1;
            }
            b(paramInt1, paramInt2);
            return;
            i2 = i3;
          }
        }
        label1608: i6 = i1;
        i1 = i5;
        i5 = i6;
        break label1183;
        label1623: i6 = i2;
        i2 = i4;
        i4 = i1;
        i1 = i5;
        i5 = i4;
        i4 = i6;
      }
      label1650: break label499;
      label1653: break label283;
      label1656: i10 = i5;
      i11 = i6;
      i5 = i2;
      i6 = i3;
      i12 = i1;
      i2 = i10;
      i1 = i11;
      i3 = i4;
      i4 = i8;
      i8 = i12;
    }
  }

  public void setBaselineAligned(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getChildCount()))
      throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    this.b = paramInt;
  }

  public void setDividerDrawable(Drawable paramDrawable)
  {
    boolean bool = false;
    if (paramDrawable == this.k)
      return;
    this.k = paramDrawable;
    if (paramDrawable != null)
      this.l = paramDrawable.getIntrinsicWidth();
    for (this.m = paramDrawable.getIntrinsicHeight(); ; this.m = 0)
    {
      if (paramDrawable == null)
        bool = true;
      setWillNotDraw(bool);
      requestLayout();
      return;
      this.l = 0;
    }
  }

  public void setDividerPadding(int paramInt)
  {
    this.o = paramInt;
  }

  public void setGravity(int paramInt)
  {
    if (this.e != paramInt)
    {
      if ((0x800007 & paramInt) != 0)
        break label46;
      paramInt = 0x800003 | paramInt;
    }
    label46: 
    while (true)
    {
      int i1 = paramInt;
      if ((paramInt & 0x70) == 0)
        i1 = paramInt | 0x30;
      this.e = i1;
      requestLayout();
      return;
    }
  }

  public void setHorizontalGravity(int paramInt)
  {
    paramInt &= 8388615;
    if ((this.e & 0x800007) != paramInt)
    {
      this.e = (paramInt | this.e & 0xFF7FFFF8);
      requestLayout();
    }
  }

  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setOrientation(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      requestLayout();
    }
  }

  public void setShowDividers(int paramInt)
  {
    if (paramInt != this.n)
      requestLayout();
    this.n = paramInt;
  }

  public void setVerticalGravity(int paramInt)
  {
    paramInt &= 112;
    if ((this.e & 0x70) != paramInt)
    {
      this.e = (paramInt | this.e & 0xFFFFFF8F);
      requestLayout();
    }
  }

  public void setWeightSum(float paramFloat)
  {
    this.g = Math.max(0.0F, paramFloat);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.co
 * JD-Core Version:    0.6.2
 */