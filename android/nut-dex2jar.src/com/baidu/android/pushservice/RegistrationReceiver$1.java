package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;

class RegistrationReceiver$1
  implements Runnable
{
  RegistrationReceiver$1(RegistrationReceiver paramRegistrationReceiver, Intent paramIntent, Context paramContext)
  {
  }

  public void run()
  {
    if (this.a.hasExtra("r_sync_type"))
    {
      switch (this.a.getIntExtra("r_sync_type", 0))
      {
      default:
        return;
      case 0:
        RegistrationReceiver.a(this.b, this.a);
        return;
      case 1:
        RegistrationReceiver.b(this.b, this.a);
        return;
      case 2:
        RegistrationReceiver.c(this.b, this.a);
        return;
      case 3:
      }
      RegistrationReceiver.d(this.b, this.a);
      return;
    }
    RegistrationReceiver.a(this.b, this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.RegistrationReceiver.1
 * JD-Core Version:    0.6.2
 */