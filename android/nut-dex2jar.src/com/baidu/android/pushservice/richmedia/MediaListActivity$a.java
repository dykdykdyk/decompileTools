package com.baidu.android.pushservice.richmedia;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.android.pushservice.h.a;
import java.util.ArrayList;
import java.util.HashMap;

public class MediaListActivity$a extends BaseAdapter
{
  private final Context b;
  private final ArrayList<HashMap<String, Object>> c;

  public MediaListActivity$a(Context paramContext, ArrayList<HashMap<String, Object>> paramArrayList)
  {
    this.b = paramArrayList;
    Object localObject;
    this.c = localObject;
  }

  public int getCount()
  {
    return this.c.size();
  }

  public Object getItem(int paramInt)
  {
    if ((this.c != null) && (paramInt < this.c.size()))
      return this.c.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = LayoutInflater.from(this.b.getApplicationContext()).inflate(MediaListActivity.f(this.a), null);
    paramView.setBackgroundColor(-7829368);
    paramViewGroup = (ImageView)paramView.findViewById(MediaListActivity.g(this.a));
    TextView localTextView1 = (TextView)paramView.findViewById(MediaListActivity.h(this.a));
    TextView localTextView2 = (TextView)paramView.findViewById(MediaListActivity.i(this.a));
    TextView localTextView3 = (TextView)paramView.findViewById(MediaListActivity.j(this.a));
    if ((this.c == null) || (paramInt >= this.c.size()) || (this.c.get(paramInt) == null) || (localTextView1 != null));
    try
    {
      if (((HashMap)this.c.get(paramInt)).get("title") != null)
        localTextView1.setText(((HashMap)this.c.get(paramInt)).get("title").toString());
      if ((localTextView2 != null) && (((HashMap)this.c.get(paramInt)).get("fromtext") != null))
        localTextView2.setText(((HashMap)this.c.get(paramInt)).get("fromtext").toString());
      if ((localTextView3 != null) && (((HashMap)this.c.get(paramInt)).get("timetext") != null))
        localTextView3.setText(((HashMap)this.c.get(paramInt)).get("timetext").toString());
      if (paramViewGroup != null)
        paramViewGroup.setImageDrawable((Drawable)((HashMap)this.c.get(paramInt)).get("img"));
      return paramView;
    }
    catch (Exception paramViewGroup)
    {
      a.e("MediaListActivity", "getView E: " + paramViewGroup);
    }
    return paramView;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity.a
 * JD-Core Version:    0.6.2
 */