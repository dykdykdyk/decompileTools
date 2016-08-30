package com.nut.blehunter.ui.b;

import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.os.Message;
import b.a.a;
import com.nut.blehunter.entity.b;
import java.io.IOException;
import java.util.List;

final class g extends Thread
{
  g(e parame, b paramb)
  {
  }

  public final void run()
  {
    Object localObject3 = "";
    try
    {
      Object localObject1 = this.a.a();
      localObject2 = e.c(this.b).getFromLocation(((b)localObject1).a, ((b)localObject1).b, 1);
      localObject1 = localObject3;
      if (localObject2 != null)
      {
        localObject1 = localObject3;
        if (((List)localObject2).size() > 0)
          localObject1 = e.a((Address)((List)localObject2).get(0));
      }
      localObject2 = Message.obtain();
      ((Message)localObject2).setTarget(e.d(this.b));
      ((Message)localObject2).what = 1;
      localObject3 = new Bundle();
      ((Bundle)localObject3).putString("address", (String)localObject1);
      ((Bundle)localObject3).putDouble("latitude", this.a.a);
      ((Bundle)localObject3).putDouble("longitude", this.a.b);
      ((Message)localObject2).setData((Bundle)localObject3);
      ((Message)localObject2).sendToTarget();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        a.b(localIOException, "ReverseGeocodingTask IOException", new Object[0]);
        Object localObject2 = null;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.g
 * JD-Core Version:    0.6.2
 */