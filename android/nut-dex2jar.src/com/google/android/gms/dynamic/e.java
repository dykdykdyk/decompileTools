package com.google.android.gms.dynamic;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.common.GooglePlayServicesUtil;

public final class e
  implements View.OnClickListener
{
  public e(Context paramContext, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(GooglePlayServicesUtil.zzbC(this.b));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.e
 * JD-Core Version:    0.6.2
 */