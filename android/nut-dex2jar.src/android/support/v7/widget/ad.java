package android.support.v7.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.support.v4.view.bl;
import android.support.v7.b.g;
import android.support.v7.b.i;
import android.support.v7.b.j;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

final class ad extends BaseAdapter
{
  x a;
  boolean b;
  private int d;
  private boolean e;
  private boolean f;

  public final int a()
  {
    int i = 0;
    int k = this.d;
    this.d = 2147483647;
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = getCount();
    View localView = null;
    int j = 0;
    while (i < i1)
    {
      localView = getView(i, localView, null);
      localView.measure(m, n);
      j = Math.max(j, localView.getMeasuredWidth());
      i += 1;
    }
    this.d = k;
    return j;
  }

  public final void a(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      notifyDataSetChanged();
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.f != paramBoolean)
    {
      this.f = paramBoolean;
      notifyDataSetChanged();
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.b != paramBoolean1) || (this.e != paramBoolean2))
    {
      this.b = paramBoolean1;
      this.e = paramBoolean2;
      notifyDataSetChanged();
    }
  }

  public final int getCount()
  {
    int j = this.a.a();
    int i = j;
    if (!this.b)
    {
      i = j;
      if (this.a.b() != null)
        i = j - 1;
    }
    j = Math.min(i, this.d);
    i = j;
    if (this.f)
      i = j + 1;
    return i;
  }

  public final Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return null;
    case 0:
    }
    int i = paramInt;
    if (!this.b)
    {
      i = paramInt;
      if (this.a.b() != null)
        i = paramInt + 1;
    }
    return this.a.a(i);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    if ((this.f) && (paramInt == getCount() - 1))
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == 1);
      }
      else
      {
        localView = LayoutInflater.from(this.c.getContext()).inflate(i.abc_activity_chooser_view_list_item, paramViewGroup, false);
        localView.setId(1);
        ((TextView)localView.findViewById(g.title)).setText(this.c.getContext().getString(j.abc_activity_chooser_view_see_all));
      }
      return localView;
    case 0:
    }
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getId() == g.list_item);
    }
    else
    {
      localView = LayoutInflater.from(this.c.getContext()).inflate(i.abc_activity_chooser_view_list_item, paramViewGroup, false);
    }
    paramView = this.c.getContext().getPackageManager();
    paramViewGroup = (ImageView)localView.findViewById(g.icon);
    ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
    paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
    ((TextView)localView.findViewById(g.title)).setText(localResolveInfo.loadLabel(paramView));
    if ((this.b) && (paramInt == 0) && (this.e))
    {
      bl.a(localView, true);
      return localView;
    }
    bl.a(localView, false);
    return localView;
  }

  public final int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ad
 * JD-Core Version:    0.6.2
 */