package com.bingerz.android.countrycodepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Locale;

public final class e extends BaseAdapter
  implements SectionIndexer
{
  ArrayList<CountryCode> a = new ArrayList();
  private Context b;
  private LayoutInflater c;

  public e(Context paramContext)
  {
    this.b = paramContext;
    this.c = LayoutInflater.from(this.b);
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getPositionForSection(int paramInt)
  {
    int i = 0;
    while (i < getCount())
    {
      if (((CountryCode)this.a.get(i)).g.toUpperCase().charAt(0) == paramInt)
        return i;
      i += 1;
    }
    return -1;
  }

  public final int getSectionForPosition(int paramInt)
  {
    return ((CountryCode)this.a.get(paramInt)).g.charAt(0);
  }

  public final Object[] getSections()
  {
    return null;
  }

  @SuppressLint({"InflateParams"})
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CountryCode localCountryCode;
    if (paramView == null)
    {
      paramView = this.c.inflate(j.item_country_code_list, null);
      paramViewGroup = new f();
      paramViewGroup.a = ((TextView)paramView.findViewById(i.tv_catalog));
      paramViewGroup.b = ((ImageView)paramView.findViewById(i.iv_list_country_icon));
      paramViewGroup.c = ((TextView)paramView.findViewById(i.tv_list_country_name));
      paramViewGroup.d = ((TextView)paramView.findViewById(i.tv_list_country_code));
      paramView.setTag(paramViewGroup);
      localCountryCode = (CountryCode)this.a.get(paramInt);
      if (paramInt != getPositionForSection(getSectionForPosition(paramInt)))
        break label238;
      paramViewGroup.a.setVisibility(0);
      paramViewGroup.a.setText(localCountryCode.g);
      label131: String str = String.format("f%03d", new Object[] { Integer.valueOf(localCountryCode.a) });
      paramInt = this.b.getResources().getIdentifier(str, "drawable", this.b.getPackageName());
      paramViewGroup.b.setImageResource(paramInt);
      if (!Locale.getDefault().getCountry().equals(Locale.CHINA.getCountry()))
        break label250;
      paramViewGroup.c.setText(localCountryCode.b);
    }
    while (true)
    {
      paramViewGroup.d.setText(localCountryCode.a());
      return paramView;
      paramViewGroup = (f)paramView.getTag();
      break;
      label238: paramViewGroup.a.setVisibility(8);
      break label131;
      label250: paramViewGroup.c.setText(localCountryCode.c);
    }
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.countrycodepicker.e
 * JD-Core Version:    0.6.2
 */