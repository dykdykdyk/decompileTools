package com.nut.blehunter.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class an
  implements View.OnClickListener
{
  an(GuidePagerActivity paramGuidePagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = this.a;
    paramView.startActivity(new Intent(paramView, MainActivity.class));
    paramView.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.an
 * JD-Core Version:    0.6.2
 */