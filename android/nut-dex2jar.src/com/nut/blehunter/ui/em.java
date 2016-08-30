package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.ui.a.d;

final class em
  implements d
{
  em(SettingAlertSoundActivity paramSettingAlertSoundActivity, RecyclerView paramRecyclerView)
  {
  }

  public final void a(int paramInt)
  {
    com.nut.blehunter.ui.a.a locala = (com.nut.blehunter.ui.a.a)this.a.getAdapter();
    locala.c = paramInt;
    locala.b(SettingAlertSoundActivity.a(this.b));
    locala.b(paramInt);
    SettingAlertSoundActivity.a(this.b, paramInt);
    SettingAlertSoundActivity.b(this.b).b();
    if (paramInt == 0);
    for (int i = 5; ; i = 2)
    {
      SettingAlertSoundActivity.b(this.b).a(i, false, com.nut.blehunter.a.v[paramInt], false, 3);
      i.b().b(this.b.getIntent().getStringExtra("device_id"), SettingAlertSoundActivity.a(this.b));
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.em
 * JD-Core Version:    0.6.2
 */