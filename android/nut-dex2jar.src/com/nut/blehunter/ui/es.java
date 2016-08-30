package com.nut.blehunter.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.entity.ShareUserInfo;
import java.util.ArrayList;

final class es
  implements View.OnClickListener
{
  es(er paramer, eq parameq)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = (ShareUserInfo)this.b.o.c.get(this.b.d());
    ShareManageActivity.a(this.b.o.d, ShareManageActivity.b(this.b.o.d), paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.es
 * JD-Core Version:    0.6.2
 */