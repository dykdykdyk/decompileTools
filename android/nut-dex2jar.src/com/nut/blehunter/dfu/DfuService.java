package com.nut.blehunter.dfu;

import android.app.Activity;
import com.nut.blehunter.ui.MainActivity;
import no.nordicsemi.android.dfu.DfuBaseService;

public class DfuService extends DfuBaseService
{
  protected Class<? extends Activity> getNotificationTarget()
  {
    return MainActivity.class;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.DfuService
 * JD-Core Version:    0.6.2
 */