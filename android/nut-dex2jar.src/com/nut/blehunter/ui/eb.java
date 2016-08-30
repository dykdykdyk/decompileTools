package com.nut.blehunter.ui;

import android.support.v7.widget.er;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public final class eb extends er
{
  ImageView l;
  TextView m;
  ImageView n;

  eb(ea paramea, View paramView)
  {
    super(paramView);
    this.l = ((ImageView)paramView.findViewById(2131558850));
    this.m = ((TextView)paramView.findViewById(2131558853));
    this.n = ((ImageView)paramView.findViewById(2131558852));
    paramView.setOnClickListener(new ec(this, paramea));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.eb
 * JD-Core Version:    0.6.2
 */