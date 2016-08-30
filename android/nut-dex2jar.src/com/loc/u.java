package com.loc;

import android.content.ContentValues;
import java.util.HashMap;
import java.util.Map;

public final class u
  implements g<v>
{
  v a;

  public static String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("filename", paramString);
    return f.a(localHashMap);
  }

  public static String a(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sdkname", paramString1);
    localHashMap.put("status", paramString2);
    return f.a(localHashMap);
  }

  public static String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("filename", paramString1);
    localHashMap.put("sdkname", paramString2);
    localHashMap.put("dynamicversion", paramString4);
    localHashMap.put("version", paramString3);
    return f.a(localHashMap);
  }

  public final ContentValues a()
  {
    if (this.a == null)
      return null;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("filename", this.a.a);
    localContentValues.put("md5", this.a.b);
    localContentValues.put("sdkname", this.a.c);
    localContentValues.put("version", this.a.d);
    localContentValues.put("dynamicversion", this.a.e);
    localContentValues.put("status", this.a.f);
    return localContentValues;
  }

  public final String b()
  {
    return "file";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.u
 * JD-Core Version:    0.6.2
 */