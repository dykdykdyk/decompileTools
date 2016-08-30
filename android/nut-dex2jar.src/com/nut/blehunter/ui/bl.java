package com.nut.blehunter.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bl
  implements View.OnClickListener
{
  bl(MainActivity paramMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.setClass(this.a, MoreActivity.class);
    this.a.startActivity(paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bl
 * JD-Core Version:    0.6.2
 */