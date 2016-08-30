package com.nut.blehunter.ui;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.google.gson.Gson;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.ad;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.t;
import com.umeng.analytics.b;
import java.util.ArrayList;
import java.util.List;

final class ee
  implements AdapterView.OnItemClickListener
{
  ee(SelectWiFiActivity paramSelectWiFiActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (ad)SelectWiFiActivity.d(this.a).get(paramInt);
    if (12 == this.a.b(paramAdapterView.a))
      return;
    String str;
    if (!paramAdapterView.b)
    {
      paramAdapterView.b = true;
      paramView = this.a;
      str = SelectWiFiActivity.e(this.a);
      paramAdapterView = paramAdapterView.a;
      if ((paramView.m == null) || (TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramAdapterView)))
        SelectWiFiActivity.f(this.a);
    }
    while (true)
    {
      m.a().a(this.a, SelectWiFiActivity.g(this.a));
      paramAdapterView = Message.obtain();
      paramAdapterView.what = 1;
      SelectWiFiActivity.h(this.a).sendMessage(paramAdapterView);
      return;
      localt = (t)e.a(paramView.m.n, t.class);
      if (str.equals("home"))
      {
        if (localt.b == null)
          localt.b = new ArrayList();
        localt.b.add(paramAdapterView);
      }
      while (true)
      {
        paramView.m.n = e.a().toJson(localt);
        b.a(paramView, "silent_regions_add");
        break;
        if (str.equals("company"))
        {
          if (localt.c == null)
            localt.c = new ArrayList();
          localt.c.add(paramAdapterView);
        }
        else if (str.equals("other"))
        {
          if (localt.d == null)
            localt.d = new ArrayList();
          localt.d.add(paramAdapterView);
        }
      }
      paramAdapterView.b = false;
      paramView = this.a;
      str = SelectWiFiActivity.e(this.a);
      paramAdapterView = paramAdapterView.a;
      if ((paramView.m != null) && (!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramAdapterView)))
        break label358;
      SelectWiFiActivity.f(this.a);
    }
    label358: t localt = (t)e.a(paramView.m.n, t.class);
    if (str.equals("home"))
      if (localt.b.contains(paramAdapterView))
        localt.b.remove(paramAdapterView);
    while (true)
    {
      paramView.m.n = e.a().toJson(localt);
      break;
      if (str.equals("company"))
      {
        if (localt.c.contains(paramAdapterView))
          localt.c.remove(paramAdapterView);
      }
      else if ((str.equals("other")) && (localt.d.contains(paramAdapterView)))
        localt.d.remove(paramAdapterView);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ee
 * JD-Core Version:    0.6.2
 */