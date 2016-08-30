package com.nut.blehunter.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.ui.widget.c;
import com.umeng.analytics.b;

final class bu
  implements View.OnClickListener
{
  bu(MapLocationActivity paramMapLocationActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MapLocationActivity.b(this.a).dismiss();
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558762:
      this.a.a(MapLocationActivity.c(this.a), MapLocationActivity.d(this.a), false);
      b.a(this.a, "item_lost_share_with_wechat_friend");
      return;
    case 2131558772:
    }
    this.a.a(MapLocationActivity.c(this.a), MapLocationActivity.d(this.a), true);
    b.a(this.a, "item_lost_share_with_wechat_moments");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bu
 * JD-Core Version:    0.6.2
 */