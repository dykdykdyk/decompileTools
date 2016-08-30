package com.nut.blehunter.ui.a;

import android.support.v7.widget.dt;
import android.support.v7.widget.er;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckedTextView;

public final class i extends dt<er>
{
  private String[] c;
  private int d;

  public i(String[] paramArrayOfString, int paramInt)
  {
    this.c = paramArrayOfString;
    this.d = paramInt;
  }

  public final er a(ViewGroup paramViewGroup)
  {
    return new j(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903171, paramViewGroup, false));
  }

  public final void a(er paramer, int paramInt)
  {
    paramer = (j)paramer;
    paramer.l.setText(this.c[paramInt]);
    if ((this.d != 0) && ((this.d >> paramInt & 0x1) == 0))
    {
      paramer.l.setChecked(false);
      return;
    }
    paramer.l.setChecked(true);
  }

  public final int b()
  {
    if (this.c == null)
      return 0;
    return this.c.length;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.a.i
 * JD-Core Version:    0.6.2
 */