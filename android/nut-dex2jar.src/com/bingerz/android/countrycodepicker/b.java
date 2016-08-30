package com.bingerz.android.countrycodepicker;

import android.widget.ListView;

final class b
  implements k
{
  b(CountryCodeActivity paramCountryCodeActivity)
  {
  }

  public final void a(String paramString)
  {
    int i = this.a.a.getPositionForSection(paramString.charAt(0));
    if (i != -1)
      CountryCodeActivity.a(this.a).setSelection(i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.b
 * JD-Core Version:    0.6.2
 */