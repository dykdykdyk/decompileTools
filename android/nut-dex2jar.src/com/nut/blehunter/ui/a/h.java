package com.nut.blehunter.ui.a;

import android.content.Context;
import android.widget.BaseAdapter;
import java.util.List;

public abstract class h<T, Q> extends BaseAdapter
{
  public Context b;
  public List<T> c;

  public h(Context paramContext, List<T> paramList)
  {
    this.b = paramContext;
    this.c = paramList;
  }

  public int getCount()
  {
    return this.c.size();
  }

  public Object getItem(int paramInt)
  {
    return this.c.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.h
 * JD-Core Version:    0.6.2
 */