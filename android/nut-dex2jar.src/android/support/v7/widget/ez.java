package android.support.v7.widget;

import android.support.v7.a.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

final class ez extends BaseAdapter
{
  private ez(ex paramex)
  {
  }

  public final int getCount()
  {
    return ex.a(this.a).getChildCount();
  }

  public final Object getItem(int paramInt)
  {
    return ((fa)ex.a(this.a).getChildAt(paramInt)).a;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      return ex.a(this.a, (c)getItem(paramInt));
    paramViewGroup = (fa)paramView;
    paramViewGroup.a = ((c)getItem(paramInt));
    paramViewGroup.a();
    return paramView;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ez
 * JD-Core Version:    0.6.2
 */