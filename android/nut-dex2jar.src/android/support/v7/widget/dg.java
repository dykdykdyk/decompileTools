package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

public class dg extends ListView
{
  private static final int[] h = { 0 };
  final Rect a = new Rect();
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  protected int f;
  Field g;
  private dh i;

  public dg(Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
    try
    {
      this.g = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.g.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public final int a(int paramInt1, int paramInt2)
  {
    int j = getListPaddingTop();
    int m = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    int k = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null)
    {
      j += m;
      return j;
    }
    j = m + j;
    label66: label84: int i1;
    label116: View localView;
    if ((k > 0) && (localObject != null))
    {
      int i2 = localListAdapter.getCount();
      m = 0;
      int n = 0;
      localObject = null;
      if (m >= i2)
        break label251;
      i1 = localListAdapter.getItemViewType(m);
      if (i1 == n)
        break label253;
      n = i1;
      localObject = null;
      localView = localListAdapter.getView(m, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      localObject = localLayoutParams;
      if (localLayoutParams == null)
      {
        localObject = generateDefaultLayoutParams();
        localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      if (((ViewGroup.LayoutParams)localObject).height <= 0)
        break label241;
      i1 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.LayoutParams)localObject).height, 1073741824);
      label179: localView.measure(paramInt1, i1);
      localView.forceLayout();
      if (m <= 0)
        break label256;
      j += k;
    }
    label256: 
    while (true)
    {
      i1 = localView.getMeasuredHeight() + j;
      j = paramInt2;
      if (i1 >= paramInt2)
        break;
      m += 1;
      j = i1;
      localObject = localView;
      break label84;
      k = 0;
      break label66;
      label241: i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
      break label179;
      label251: return j;
      label253: break label116;
    }
  }

  protected boolean a()
  {
    return false;
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (!this.a.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(this.a);
        localDrawable.draw(paramCanvas);
      }
    }
    super.dispatchDraw(paramCanvas);
  }

  protected void drawableStateChanged()
  {
    int j = 1;
    super.drawableStateChanged();
    setSelectorEnabled(true);
    Drawable localDrawable = getSelector();
    if (localDrawable != null)
      if ((!a()) || (!isPressed()))
        break label48;
    while (true)
    {
      if (j != 0)
        localDrawable.setState(getDrawableState());
      return;
      label48: j = 0;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.f = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
  }

  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null);
    for (Object localObject = new dh(paramDrawable); ; localObject = null)
    {
      this.i = ((dh)localObject);
      super.setSelector(this.i);
      localObject = new Rect();
      if (paramDrawable != null)
        paramDrawable.getPadding((Rect)localObject);
      this.b = ((Rect)localObject).left;
      this.c = ((Rect)localObject).top;
      this.d = ((Rect)localObject).right;
      this.e = ((Rect)localObject).bottom;
      return;
    }
  }

  protected void setSelectorEnabled(boolean paramBoolean)
  {
    if (this.i != null)
      this.i.b = paramBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dg
 * JD-Core Version:    0.6.2
 */