package com.baidu.android.pushservice.util;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.k;
import com.baidu.android.pushservice.i.l;
import org.json.JSONObject;

public class PushADProvider extends ContentProvider
{
  SQLiteDatabase a;

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    try
    {
      Object localObject = j.c(getContext());
      if ((localObject != null) && (((l)localObject).c() == 10) && (((l)localObject).e() > 0L))
      {
        m.a("pushadclientinfo  = " + ((l)localObject).f().a().toString(), getContext());
        return true;
      }
      localObject = new k();
      ((k)localObject).a = 0;
      ((k)localObject).b = 10;
      ((k)localObject).c = 10;
      ((k)localObject).d = 0;
      ((k)localObject).e = m.c();
      j.a(getContext(), (k)localObject);
      m.a("pushadclientinfo  = " + ((k)localObject).a().toString(), getContext());
      return true;
    }
    catch (Exception localException)
    {
      a.a("PushADProvider", localException);
    }
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    try
    {
      this.a = j.a(getContext());
      if (this.a != null)
      {
        paramUri = this.a.query("PushADInfo", null, null, null, null, null, null);
        if (paramUri != null)
        {
          a.c("PushADProvider", "return contentprovider Cursor : " + paramUri);
          return paramUri;
        }
      }
    }
    catch (Exception paramUri)
    {
      a.c("PushADProvider", "error " + paramUri.getMessage());
    }
    return null;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.PushADProvider
 * JD-Core Version:    0.6.2
 */