package com.nut.blehunter.ble;

import android.text.TextUtils;
import b.a.a;
import com.nut.blehunter.d.o;
import com.nut.blehunter.provider.j;
import java.util.Arrays;

final class i
  implements Runnable
{
  i(BLEService paramBLEService, r paramr)
  {
  }

  public final void run()
  {
    Object localObject = j.b().a(this.a.p);
    if (localObject == null);
    for (localObject = ""; ; localObject = ((com.nut.blehunter.entity.r)localObject).h)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        r localr = this.a;
        localObject = d.a((String)localObject);
        if (!o.a((byte[])localObject))
        {
          byte[] arrayOfByte = new byte[localObject.length + 1];
          arrayOfByte[0] = 26;
          System.arraycopy(localObject, 0, arrayOfByte, 1, arrayOfByte.length - 1);
          a.b("set device configs is %s", new Object[] { Arrays.toString(arrayOfByte) });
          localr.a(arrayOfByte);
        }
      }
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.i
 * JD-Core Version:    0.6.2
 */