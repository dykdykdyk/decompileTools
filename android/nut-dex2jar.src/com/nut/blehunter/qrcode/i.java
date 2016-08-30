package com.nut.blehunter.qrcode;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.zxing.d;
import java.util.EnumMap;
import java.util.Map;
import java.util.regex.Pattern;

final class i
{
  private static final String a = i.class.getSimpleName();
  private static final Pattern b = Pattern.compile(",");

  static Map<d, Object> a(Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras();
    if ((paramIntent == null) || (paramIntent.isEmpty()))
      return null;
    EnumMap localEnumMap = new EnumMap(d.class);
    d[] arrayOfd = d.values();
    int j = arrayOfd.length;
    int i = 0;
    if (i < j)
    {
      d locald = arrayOfd[i];
      Object localObject;
      if ((locald != d.e) && (locald != d.j) && (locald != d.c))
      {
        localObject = locald.name();
        if (paramIntent.containsKey((String)localObject))
        {
          if (!locald.l.equals(Void.class))
            break label122;
          localEnumMap.put(locald, Boolean.TRUE);
        }
      }
      while (true)
      {
        i += 1;
        break;
        label122: localObject = paramIntent.get((String)localObject);
        if (locald.l.isInstance(localObject))
          localEnumMap.put(locald, localObject);
        else
          Log.w(a, "Ignoring hint " + locald + " because it is not assignable from " + localObject);
      }
    }
    Log.i(a, "Hints from the Intent: " + localEnumMap);
    return localEnumMap;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.i
 * JD-Core Version:    0.6.2
 */