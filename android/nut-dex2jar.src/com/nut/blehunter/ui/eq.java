package com.nut.blehunter.ui;

import android.support.v7.widget.dt;
import android.view.LayoutInflater;
import com.nut.blehunter.entity.ShareUserInfo;
import java.util.ArrayList;

final class eq extends dt<er>
{
  ArrayList<ShareUserInfo> c = new ArrayList();
  private final LayoutInflater e;

  public eq(ShareManageActivity paramShareManageActivity)
  {
    this.e = LayoutInflater.from(paramShareManageActivity);
  }

  public final int b()
  {
    if (this.c == null)
      return 0;
    return this.c.size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.eq
 * JD-Core Version:    0.6.2
 */