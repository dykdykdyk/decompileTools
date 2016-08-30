package com.nut.blehunter.c;

import android.content.Context;
import android.text.TextUtils;
import com.nut.blehunter.a;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.LosingRecord;
import com.nut.blehunter.entity.MapRegion;
import com.nut.blehunter.entity.Nut;

public final class h
{
  public static String a(Context paramContext, Nut paramNut)
  {
    Object localObject;
    if (paramNut == null)
      localObject = "";
    while (true)
    {
      return localObject;
      localObject = "";
      try
      {
        paramNut = ((MapRegion)e.a(paramNut.o.d, MapRegion.class)).a;
        localObject = paramNut;
        if (!TextUtils.isEmpty(paramNut))
        {
          localObject = paramNut;
          boolean bool = paramNut.equals(" ");
          if (bool);
        }
        for (i = 1; ; i = 0)
        {
          localObject = paramNut;
          if (i == 0)
            break;
          return paramContext.getString(2131100055, new Object[] { paramNut });
        }
      }
      catch (Exception paramNut)
      {
        while (true)
        {
          paramNut = (Nut)localObject;
          int i = 0;
        }
      }
    }
  }

  public static String a(String paramString, Nut paramNut)
  {
    if (paramNut == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(a.i);
    localStringBuffer.append("/?userName=");
    localStringBuffer.append(paramString);
    localStringBuffer.append("&articleName=");
    localStringBuffer.append(paramNut.c);
    try
    {
      paramString = ((MapRegion)e.a(paramNut.o.d, MapRegion.class)).a;
      if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(" ")))
      {
        localStringBuffer.append("&address=");
        localStringBuffer.append(paramString);
      }
      label100: localStringBuffer.append("&deviceId=");
      localStringBuffer.append(paramNut.j);
      return localStringBuffer.toString();
    }
    catch (Exception paramString)
    {
      break label100;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.c.h
 * JD-Core Version:    0.6.2
 */