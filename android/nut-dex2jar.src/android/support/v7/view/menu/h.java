package android.support.v7.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class h extends BaseAdapter
{
  private int b = -1;

  public h(g paramg)
  {
    a();
  }

  private void a()
  {
    m localm = this.a.c.j;
    if (localm != null)
    {
      ArrayList localArrayList = this.a.c.j();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((m)localArrayList.get(i) == localm)
        {
          this.b = i;
          return;
        }
        i += 1;
      }
    }
    this.b = -1;
  }

  public final m a(int paramInt)
  {
    ArrayList localArrayList = this.a.c.j();
    int i = g.a(this.a) + paramInt;
    paramInt = i;
    if (this.b >= 0)
    {
      paramInt = i;
      if (i >= this.b)
        paramInt = i + 1;
    }
    return (m)localArrayList.get(paramInt);
  }

  public final int getCount()
  {
    int i = this.a.c.j().size() - g.a(this.a);
    if (this.b < 0)
      return i;
    return i - 1;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.a.b.inflate(this.a.f, paramViewGroup, false);
    while (true)
    {
      ((aa)paramView).a(a(paramInt));
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
 * Qualified Name:     android.support.v7.view.menu.h
 * JD-Core Version:    0.6.2
 */