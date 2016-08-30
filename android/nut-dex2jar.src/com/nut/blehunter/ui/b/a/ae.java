package com.nut.blehunter.ui.b.a;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.s;
import android.support.v4.app.v;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;
import com.nut.blehunter.d.e;
import com.nut.blehunter.d.n;

public final class ae extends a
  implements NumberPicker.OnValueChangeListener
{
  private static final af q = new af();
  public String o;
  public String p;
  private NumberPicker r;
  private NumberPicker s;
  private NumberPicker t;
  private NumberPicker u;

  public static ae a(Context paramContext, String paramString1, String paramString2, d paramd)
  {
    ae localae = new ae();
    Bundle localBundle = new Bundle();
    localBundle.putString("start", paramString1);
    localBundle.putString("end", paramString2);
    localae.setArguments(localBundle);
    paramString1 = new b(paramContext);
    paramString1.a(true).b(false).a(2131100044).a(2131099783, paramd).b(2131099781, null).a(LayoutInflater.from(paramContext).inflate(2130903136, null));
    localae.a(paramString1);
    return localae;
  }

  protected final void a(View paramView)
  {
    this.o = getArguments().getString("start");
    this.p = getArguments().getString("end");
    int[] arrayOfInt1;
    if (!TextUtils.isEmpty(this.o))
    {
      arrayOfInt1 = e.a(this.o);
      if (TextUtils.isEmpty(this.p))
        break label344;
    }
    label344: for (int[] arrayOfInt2 = e.a(this.p); ; arrayOfInt2 = e.a("07:00"))
    {
      this.r = ((NumberPicker)paramView.findViewById(2131558781));
      this.s = ((NumberPicker)paramView.findViewById(2131558782));
      this.t = ((NumberPicker)paramView.findViewById(2131558783));
      this.u = ((NumberPicker)paramView.findViewById(2131558784));
      this.r.setMinValue(0);
      this.r.setMaxValue(23);
      this.r.setFormatter(q);
      this.r.setOnLongPressUpdateInterval(200L);
      this.r.setOnValueChangedListener(this);
      this.s.setMinValue(0);
      this.s.setMaxValue(59);
      this.s.setFormatter(q);
      this.s.setOnLongPressUpdateInterval(200L);
      this.s.setOnValueChangedListener(this);
      this.t.setMinValue(0);
      this.t.setMaxValue(23);
      this.t.setFormatter(q);
      this.t.setOnLongPressUpdateInterval(200L);
      this.t.setOnValueChangedListener(this);
      this.u.setMinValue(0);
      this.u.setMaxValue(59);
      this.u.setFormatter(q);
      this.u.setOnLongPressUpdateInterval(200L);
      this.u.setOnValueChangedListener(this);
      this.r.setValue(arrayOfInt1[0]);
      this.s.setValue(arrayOfInt1[1]);
      this.t.setValue(arrayOfInt2[0]);
      this.u.setValue(arrayOfInt2[1]);
      return;
      arrayOfInt1 = e.a("22:00");
      break;
    }
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      a();
    case 2131558756:
    }
    do
    {
      return;
      int i = this.r.getValue();
      int j = this.s.getValue();
      int k = this.t.getValue();
      int m = this.u.getValue();
      if ((i == k) && (j == m))
      {
        n.b(getActivity(), 2131100066);
        return;
      }
      this.o = (q.format(i) + ":" + q.format(j));
      this.p = (q.format(k) + ":" + q.format(m));
      a();
    }
    while (this.j.i == null);
    this.j.i.a(this, -1);
  }

  public final void onValueChange(NumberPicker paramNumberPicker, int paramInt1, int paramInt2)
  {
    paramNumberPicker = (InputMethodManager)getActivity().getSystemService("input_method");
    View localView = getActivity().getCurrentFocus();
    if ((localView != null) && ((localView instanceof EditText)))
    {
      localView.clearFocus();
      paramNumberPicker.hideSoftInputFromWindow(localView.getWindowToken(), 2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.ae
 * JD-Core Version:    0.6.2
 */