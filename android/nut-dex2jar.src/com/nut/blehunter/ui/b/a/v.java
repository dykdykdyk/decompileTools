package com.nut.blehunter.ui.b.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.NumberPicker;

public final class v extends a
{
  private static final String[] p = { "3", "5", "10", "15" };
  public String o;

  public static v a(Context paramContext, int paramInt, String paramString, d paramd)
  {
    v localv = new v();
    b localb = new b(paramContext);
    localb.a(true).b(false).a(paramInt).a(LayoutInflater.from(paramContext).inflate(2130903134, null)).a(2131099783, paramd).b(2131099781, null);
    localv.a(localb);
    paramContext = new Bundle();
    paramContext.putString("number", paramString);
    localv.setArguments(paramContext);
    return localv;
  }

  protected final void a(View paramView)
  {
    this.o = getArguments().getString("number");
    paramView = (NumberPicker)paramView.findViewById(2131558778);
    paramView.setDisplayedValues(p);
    paramView.setMinValue(1);
    paramView.setMaxValue(4);
    String str = this.o;
    int i = 0;
    if (i < p.length)
      if (str.equals(p[i]))
        i += 1;
    while (true)
    {
      paramView.setValue(i);
      paramView.setOnValueChangedListener(new w(this));
      return;
      i += 1;
      break;
      i = 2;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.v
 * JD-Core Version:    0.6.2
 */