package com.bingerz.android.countrycodepicker;

import android.app.Activity;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListView;
import com.a.a.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;

public class CountryCodeActivity extends Activity
{
  protected e a;
  private SideBar b;
  private ListView c;
  private ArrayList<CountryCode> d;

  private void a()
  {
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    while (true)
    {
      if (j <= 238);
      try
      {
        Object localObject1 = String.format("c%03d", new Object[] { Integer.valueOf(j) });
        int k = getResources().getIdentifier((String)localObject1, "array", getPackageName());
        localObject1 = getResources().getStringArray(k);
        k = Integer.parseInt(localObject1[2]);
        localArrayList.add(new CountryCode(j, localObject1[0], localObject1[1], localObject1[3], k));
        j += 1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localNumberFormatException.printStackTrace();
        if (!localArrayList.isEmpty())
        {
          Iterator localIterator = localArrayList.iterator();
          while (true)
          {
            if (!localIterator.hasNext())
              break label372;
            localCountryCode = (CountryCode)localIterator.next();
            if (!Locale.getDefault().getCountry().equals(Locale.CHINA.getCountry()))
              break label313;
            if (TextUtils.isEmpty(localCountryCode.b))
              break label303;
            i = localCountryCode.b.charAt(0);
            if (((19968 > i) || (i > 40869) || (a.a(i) <= 0)) && (12295 != i))
              break;
            j = 1;
            if (j == 0)
              break label294;
            if (i != 12295)
              break label281;
            String str = "LING";
            str = str.substring(0, 1).toUpperCase();
            if (!str.matches("[A-Z]"))
              break label303;
            localCountryCode.g = str.toUpperCase();
          }
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        while (true)
        {
          CountryCode localCountryCode;
          int i;
          localNotFoundException.printStackTrace();
          continue;
          j = 0;
          continue;
          label281: localObject2 = com.a.a.a.e.b[a.a(i)];
          continue;
          label294: localObject2 = String.valueOf(i);
          continue;
          label303: localCountryCode.g = "#";
          continue;
          label313: if (!TextUtils.isEmpty(localCountryCode.c))
          {
            localObject2 = localCountryCode.c.substring(0, 1).toUpperCase();
            if (((String)localObject2).matches("[A-Z]"))
              localCountryCode.g = ((String)localObject2).toUpperCase();
          }
          else
          {
            localCountryCode.g = "#";
          }
        }
        label372: Collections.sort(localArrayList, new d(this));
        this.d.clear();
        this.d.addAll(localArrayList);
        Object localObject2 = this.a;
        if (!localArrayList.isEmpty())
        {
          ((e)localObject2).a.clear();
          ((e)localObject2).a.addAll(0, localArrayList);
          ((e)localObject2).notifyDataSetChanged();
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(j.activity_country_code);
    this.b = ((SideBar)findViewById(i.sb_sidebar));
    this.b.setOnTouchingLetterChangedListener(new b(this));
    this.d = new ArrayList();
    this.a = new e(this);
    this.c = ((ListView)findViewById(i.lv_list));
    this.c.setAdapter(this.a);
    this.c.setOnItemClickListener(new c(this));
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.CountryCodeActivity
 * JD-Core Version:    0.6.2
 */