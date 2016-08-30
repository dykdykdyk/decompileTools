package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.c.a.a;
import android.support.v4.view.at;
import android.support.v4.view.dd;
import android.support.v4.widget.u;
import android.support.v7.b.b;
import android.view.MotionEvent;
import android.view.View;
import java.lang.reflect.Field;

final class cx extends dg
{
  private boolean h;
  private boolean i;
  private boolean j;
  private dd k;
  private u l;

  public cx(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, b.dropDownListViewStyle);
    this.i = paramBoolean;
    setCacheColorHint(0);
  }

  protected final boolean a()
  {
    return (this.j) || (super.a());
  }

  public final boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool = true;
    int m = at.a(paramMotionEvent);
    label41: View localView;
    switch (m)
    {
    default:
      bool = true;
      paramInt = 0;
      if ((!bool) || (paramInt != 0))
      {
        this.j = false;
        setPressed(false);
        drawableStateChanged();
        localView = getChildAt(this.f - getFirstVisiblePosition());
        if (localView != null)
          localView.setPressed(false);
        if (this.k != null)
        {
          this.k.a();
          this.k = null;
        }
      }
      if (bool)
      {
        if (this.l == null)
          this.l = new u(this);
        this.l.a(true);
        this.l.onTouch(this, paramMotionEvent);
      }
      break;
    case 3:
    case 1:
    case 2:
    }
    label406: label679: label695: 
    while (this.l == null)
      while (true)
      {
        return bool;
        bool = false;
        paramInt = 0;
        break label41;
        bool = false;
        int n = paramMotionEvent.findPointerIndex(paramInt);
        if (n < 0)
        {
          bool = false;
          paramInt = 0;
          break label41;
        }
        paramInt = (int)paramMotionEvent.getX(n);
        int i1 = (int)paramMotionEvent.getY(n);
        n = pointToPosition(paramInt, i1);
        if (n == -1)
        {
          paramInt = 1;
          break label41;
        }
        localView = getChildAt(n - getFirstVisiblePosition());
        float f1 = paramInt;
        float f2 = i1;
        this.j = true;
        if (Build.VERSION.SDK_INT >= 21)
          drawableHotspotChanged(f1, f2);
        if (!isPressed())
          setPressed(true);
        layoutChildren();
        if (this.f != -1)
        {
          localObject1 = getChildAt(this.f - getFirstVisiblePosition());
          if ((localObject1 != null) && (localObject1 != localView) && (((View)localObject1).isPressed()))
            ((View)localObject1).setPressed(false);
        }
        this.f = n;
        float f3 = localView.getLeft();
        float f4 = localView.getTop();
        if (Build.VERSION.SDK_INT >= 21)
          localView.drawableHotspotChanged(f1 - f3, f2 - f4);
        if (!localView.isPressed())
          localView.setPressed(true);
        Object localObject1 = getSelector();
        Object localObject2;
        if ((localObject1 != null) && (n != -1))
        {
          paramInt = 1;
          if (paramInt != 0)
            ((Drawable)localObject1).setVisible(false, false);
          localObject2 = this.a;
          ((Rect)localObject2).set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
          ((Rect)localObject2).left -= this.b;
          ((Rect)localObject2).top -= this.c;
          ((Rect)localObject2).right += this.d;
          ((Rect)localObject2).bottom += this.e;
        }
        try
        {
          bool = this.g.getBoolean(this);
          if (localView.isEnabled() != bool)
          {
            localObject2 = this.g;
            if (bool)
              break label679;
          }
          for (bool = true; ; bool = false)
          {
            ((Field)localObject2).set(this, Boolean.valueOf(bool));
            if (n != -1)
              refreshDrawableState();
            if (paramInt != 0)
            {
              localObject2 = this.a;
              f3 = ((Rect)localObject2).exactCenterX();
              f4 = ((Rect)localObject2).exactCenterY();
              if (getVisibility() != 0)
                break label695;
              bool = true;
              ((Drawable)localObject1).setVisible(bool, false);
              a.a((Drawable)localObject1, f3, f4);
            }
            localObject1 = getSelector();
            if ((localObject1 != null) && (n != -1))
              a.a((Drawable)localObject1, f1, f2);
            setSelectorEnabled(false);
            refreshDrawableState();
            if (m != 1)
              break;
            performItemClick(localView, n, getItemIdAtPosition(n));
            break;
            paramInt = 0;
            break label406;
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          while (true)
          {
            localIllegalAccessException.printStackTrace();
            continue;
            bool = false;
          }
        }
      }
    this.l.a(false);
    return bool;
  }

  public final boolean hasFocus()
  {
    return (this.i) || (super.hasFocus());
  }

  public final boolean hasWindowFocus()
  {
    return (this.i) || (super.hasWindowFocus());
  }

  public final boolean isFocused()
  {
    return (this.i) || (super.isFocused());
  }

  public final boolean isInTouchMode()
  {
    return ((this.i) && (this.h)) || (super.isInTouchMode());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.cx
 * JD-Core Version:    0.6.2
 */