package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class db
  implements cy
{
  public void a(ViewParent paramViewParent, View paramView)
  {
    if ((paramViewParent instanceof bb))
      ((bb)paramViewParent).onStopNestedScroll(paramView);
  }

  public void a(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramViewParent instanceof bb))
      ((bb)paramViewParent).onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void a(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramViewParent instanceof bb))
      ((bb)paramViewParent).onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt);
  }

  public boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2)
  {
    if ((paramViewParent instanceof bb))
      return ((bb)paramViewParent).onNestedPreFling(paramView, paramFloat1, paramFloat2);
    return false;
  }

  public boolean a(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((paramViewParent instanceof bb))
      return ((bb)paramViewParent).onNestedFling(paramView, paramFloat1, paramFloat2, paramBoolean);
    return false;
  }

  public boolean a(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    if ((paramViewParent instanceof bb))
      return ((bb)paramViewParent).onStartNestedScroll(paramView1, paramView2, paramInt);
    return false;
  }

  public void b(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
  {
    if ((paramViewParent instanceof bb))
      ((bb)paramViewParent).onNestedScrollAccepted(paramView1, paramView2, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.db
 * JD-Core Version:    0.6.2
 */