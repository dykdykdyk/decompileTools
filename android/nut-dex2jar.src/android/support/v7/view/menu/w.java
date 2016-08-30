package android.support.v7.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class w extends BaseAdapter
{
  private i b;
  private int c = -1;

  public w(v paramv, i parami)
  {
    this.b = parami;
    a();
  }

  private void a()
  {
    m localm = v.c(this.a).j;
    if (localm != null)
    {
      ArrayList localArrayList = v.c(this.a).j();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((m)localArrayList.get(i) == localm)
        {
          this.c = i;
          return;
        }
        i += 1;
      }
    }
    this.c = -1;
  }

  public final m a(int paramInt)
  {
    if (v.a(this.a));
    for (ArrayList localArrayList = this.b.j(); ; localArrayList = this.b.h())
    {
      int i = paramInt;
      if (this.c >= 0)
      {
        i = paramInt;
        if (paramInt >= this.c)
          i = paramInt + 1;
      }
      return (m)localArrayList.get(i);
    }
  }

  public final int getCount()
  {
    if (v.a(this.a));
    for (ArrayList localArrayList = this.b.j(); this.c < 0; localArrayList = this.b.h())
      return localArrayList.size();
    return localArrayList.size() - 1;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = v.b(this.a).inflate(v.a, paramViewGroup, false);
    while (true)
    {
      paramViewGroup = (aa)paramView;
      if (this.a.e)
        ((ListMenuItemView)paramView).setForceShowIcon(true);
      paramViewGroup.a(a(paramInt));
      return paramView;
    }
  }

  public final void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.w
 * JD-Core Version:    0.6.2
 */