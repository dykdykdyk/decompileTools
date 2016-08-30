package com.sina.weibo.sdk.net;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import org.apache.http.HttpHost;

public final class f
{
  public static g a = g.a;
  private static Context b;

  public static HttpHost a()
  {
    String str = null;
    Object localObject2 = null;
    Object localObject1 = Uri.parse("content://telephony/carriers/preferapn");
    if (b != null);
    for (Cursor localCursor = b.getContentResolver().query((Uri)localObject1, null, null, null, null); ; localCursor = null)
    {
      localObject1 = str;
      if (localCursor != null)
      {
        localObject1 = str;
        if (localCursor.moveToFirst())
        {
          str = localCursor.getString(localCursor.getColumnIndex("proxy"));
          localObject1 = localObject2;
          if (str != null)
          {
            localObject1 = localObject2;
            if (str.trim().length() > 0)
              localObject1 = new HttpHost(str, 80);
          }
          localCursor.close();
        }
      }
      return localObject1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.f
 * JD-Core Version:    0.6.2
 */