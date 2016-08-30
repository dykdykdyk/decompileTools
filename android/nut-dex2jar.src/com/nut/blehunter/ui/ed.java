package com.nut.blehunter.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.nut.blehunter.d.g;

final class ed extends Handler
{
  ed(SelectWiFiActivity paramSelectWiFiActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    if (g.c(this.a))
      SelectWiFiActivity.a(this.a).setText(2131100001);
    while (true)
    {
      SelectWiFiActivity.b(this.a);
      SelectWiFiActivity.c(this.a).notifyDataSetChanged();
      return;
      SelectWiFiActivity.a(this.a).setText(2131100002);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ed
 * JD-Core Version:    0.6.2
 */