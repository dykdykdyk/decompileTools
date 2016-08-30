package com.nut.blehunter.ui.a;

import android.support.v7.widget.er;
import android.view.View;
import android.widget.RadioButton;

public final class b extends er
{
  public RadioButton l;
  private d m;

  public b(View paramView, d paramd)
  {
    super(paramView);
    this.l = ((RadioButton)paramView);
    this.m = paramd;
    paramView.setOnClickListener(new c(this));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.b
 * JD-Core Version:    0.6.2
 */