package com.nut.blehunter.ui.b;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.nut.blehunter.entity.b;

final class h extends Handler
{
  private h(e parame)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    double d1;
    double d2;
    do
    {
      return;
      localObject = paramMessage.getData();
      paramMessage = ((Bundle)localObject).getString("address");
      d1 = ((Bundle)localObject).getDouble("latitude");
      d2 = ((Bundle)localObject).getDouble("longitude");
    }
    while (this.a.k == null);
    Object localObject = this.a.k;
    new b(d1, d2);
    ((l)localObject).b(paramMessage);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.h
 * JD-Core Version:    0.6.2
 */