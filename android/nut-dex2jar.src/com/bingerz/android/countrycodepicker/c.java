package com.bingerz.android.countrycodepicker;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;

final class c
  implements AdapterView.OnItemClickListener
{
  c(CountryCodeActivity paramCountryCodeActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (CountryCode)CountryCodeActivity.b(this.a).get(paramInt);
    paramView = new Intent();
    paramView.putExtra(g.a, paramAdapterView);
    this.a.setResult(-1, paramView);
    this.a.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.c
 * JD-Core Version:    0.6.2
 */