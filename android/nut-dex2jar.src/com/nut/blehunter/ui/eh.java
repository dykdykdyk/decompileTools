package com.nut.blehunter.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.nut.blehunter.entity.ad;
import com.nut.blehunter.ui.a.h;
import java.util.List;

final class eh extends h<ad, ListView>
{
  public eh(Context paramContext, List<ad> paramList)
  {
    super(paramList, localList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = View.inflate(this.b, 2130903173, null);
      paramViewGroup = new eg((byte)0);
      paramViewGroup.a = ((TextView)paramView.findViewById(2131558859));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131558860));
      paramView.setTag(paramViewGroup);
    }
    while (true)
    {
      String str = ((ad)this.c.get(paramInt)).a;
      paramViewGroup.a.setText(str);
      switch (this.a.b(str))
      {
      default:
        return paramView;
        paramViewGroup = (eg)paramView.getTag();
      case 11:
      case 12:
      case 13:
      }
    }
    paramViewGroup.b.setBackgroundResource(2130837621);
    return paramView;
    paramViewGroup.b.setBackgroundResource(2130837622);
    return paramView;
    paramViewGroup.b.setBackgroundResource(2130837633);
    return paramView;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.eh
 * JD-Core Version:    0.6.2
 */