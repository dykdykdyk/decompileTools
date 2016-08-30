package com.nut.blehunter.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.nut.blehunter.ui.widget.CircleImageView;

public final class er extends android.support.v7.widget.er
{
  CircleImageView l;
  TextView m;
  ImageView n;

  er(eq parameq, View paramView)
  {
    super(paramView);
    this.l = ((CircleImageView)paramView.findViewById(2131558854));
    this.m = ((TextView)paramView.findViewById(2131558855));
    this.n = ((ImageView)paramView.findViewById(2131558857));
    this.n.setOnClickListener(new es(this, parameq));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.er
 * JD-Core Version:    0.6.2
 */