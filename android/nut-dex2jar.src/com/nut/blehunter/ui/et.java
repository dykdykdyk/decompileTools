package com.nut.blehunter.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.u;

final class et
  implements View.OnClickListener
{
  et(SilenceAddOrEditActivity paramSilenceAddOrEditActivity)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.putExtra("index", SilenceAddOrEditActivity.a(this.a));
    this.a.setResult(-1, paramView);
    this.a.finish();
    u.a("NTSilentPeriodEvent", "PERIOD_REMOVED");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.et
 * JD-Core Version:    0.6.2
 */