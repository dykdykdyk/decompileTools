package com.nut.blehunter.ui.a;

import android.support.v7.widget.dt;
import android.support.v7.widget.er;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RadioButton;

public final class a extends dt<er>
{
  public int c;
  private d d;
  private String[] e;

  public a(String[] paramArrayOfString, int paramInt, d paramd)
  {
    this.e = paramArrayOfString;
    this.c = paramInt;
    this.d = paramd;
  }

  public final er a(ViewGroup paramViewGroup)
  {
    return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903163, paramViewGroup, false), this.d);
  }

  public final void a(er paramer, int paramInt)
  {
    paramer = (b)paramer;
    String str = this.e[paramInt];
    paramer.l.setTag(Integer.valueOf(paramInt));
    paramer.l.setText(str);
    paramer = paramer.l;
    if (this.c == paramInt);
    for (boolean bool = true; ; bool = false)
    {
      paramer.setChecked(bool);
      return;
    }
  }

  public final int b()
  {
    if (this.e == null)
      return 0;
    return this.e.length;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.a
 * JD-Core Version:    0.6.2
 */