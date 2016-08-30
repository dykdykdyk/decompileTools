package com.nut.blehunter.provider;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import b.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class DataContentProvider extends ContentProvider
{
  private static final String a = DataContentProvider.class.getSimpleName();
  private static final HashMap<String, String> b;
  private static final HashMap<String, String> c;
  private static final HashMap<String, String> d;
  private static final HashMap<String, String> e;
  private static final UriMatcher f;
  private g g;

  static
  {
    Object localObject = new UriMatcher(-1);
    f = (UriMatcher)localObject;
    ((UriMatcher)localObject).addURI("com.nutspace.app.blehunter.provider", "nuts", 1);
    f.addURI("com.nutspace.app.blehunter.provider", "nuts/#", 2);
    f.addURI("com.nutspace.app.blehunter.provider", "locations", 3);
    f.addURI("com.nutspace.app.blehunter.provider", "user", 4);
    f.addURI("com.nutspace.app.blehunter.provider", "product", 5);
    f.addURI("com.nutspace.app.blehunter.provider", "nut_group", 6);
    localObject = new HashMap();
    b = (HashMap)localObject;
    ((HashMap)localObject).put("_id", "_id");
    b.put("device_id", "device_id");
    b.put("create_time", "create_time");
    b.put("description", "description");
    b.put("devicePwLsb", "devicePwLsb");
    b.put("devicePwMsb", "devicePwMsb");
    b.put("product_id", "product_id");
    b.put("latitude", "latitude");
    b.put("longitude", "longitude");
    b.put("mode", "mode");
    b.put("name", "name");
    b.put("pic_url", "pic_url");
    b.put("sync_server_state", "sync_server_state");
    b.put("status", "status");
    b.put("tag_id", "tag_id");
    b.put("two_way_anti_lost", "two_way_anti_lost");
    b.put("update_time", "update_time");
    b.put("user_id", "user_id");
    b.put("uuid", "uuid");
    b.put("lastLosingRecord", "lastLosingRecord");
    b.put("lost_start_size", "lost_start_size");
    b.put("lost_success_size", "lost_success_size");
    b.put("wechat_identifier", "wechat_identifier");
    b.put("position_record", "position_record");
    b.put("new_firmware_version", "new_firmware_version");
    b.put("new_hardware_version", "new_hardware_version");
    b.put("manufacture_name", "manufacture_name");
    b.put("disconnect_remind", "disconnect_remind");
    b.put("reconnection_remind", "reconnection_remind");
    b.put("remind_time", "remind_time");
    b.put("is_mine", "is_mine");
    b.put("shared_user", "shared_user");
    b.put("disconnect_ringtone", "disconnect_ringtone");
    b.put("user", "user");
    b.put("battery_level", "battery_level");
    localObject = new HashMap();
    c = (HashMap)localObject;
    ((HashMap)localObject).put("_id", "_id");
    c.put("latitude", "latitude");
    c.put("longitude", "longitude");
    c.put("tag_id", "tag_id");
    c.put("find_time", "find_time");
    c.put("find_address", "find_address");
    c.put("uuid", "uuid");
    c.put("source", "source");
    localObject = new HashMap();
    d = (HashMap)localObject;
    ((HashMap)localObject).put("_id", "_id");
    d.put("uuid", "uuid");
    d.put("user_info", "user_info");
    localObject = new HashMap();
    e = (HashMap)localObject;
    ((HashMap)localObject).put("product_id", "product_id");
    e.put("customization", "customization");
    e.put("last_firmware", "last_firmware");
    e.put("firmware_updated", "firmware_updated");
    e.put("bind_path", "bind_path");
    e.put("call_device_time", "call_device_time");
    e.put("valid_reconnection_rssi", "valid_reconnection_rssi");
    e.put("radio_params", "radio_params");
    e.put("builtin", "builtin");
    e.put("app_alert_delay", "app_alert_delay");
    e.put("low_battery_level", "low_battery_level");
    e.put("shop_type", "shop_type");
  }

  public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> paramArrayList)
    throws OperationApplicationException
  {
    ContentProviderResult[] arrayOfContentProviderResult = new ContentProviderResult[paramArrayList.size()];
    SQLiteDatabase localSQLiteDatabase = this.g.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    try
    {
      Iterator localIterator = paramArrayList.iterator();
      int j;
      for (int i = 0; localIterator.hasNext(); i = j)
      {
        ContentProviderOperation localContentProviderOperation = (ContentProviderOperation)localIterator.next();
        j = i + 1;
        arrayOfContentProviderResult[i] = localContentProviderOperation.apply(this, arrayOfContentProviderResult, j);
      }
      localSQLiteDatabase.setTransactionSuccessful();
      getContext().getContentResolver().notifyChange(((ContentProviderOperation)paramArrayList.get(0)).getUri(), null);
      return arrayOfContentProviderResult;
    }
    catch (OperationApplicationException paramArrayList)
    {
      a.d("batch failed: " + paramArrayList.getLocalizedMessage(), new Object[0]);
      return arrayOfContentProviderResult;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
    throw paramArrayList;
  }

  public int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    Object localObject2 = "";
    Object localObject1 = localObject2;
    switch (f.match(paramUri))
    {
    default:
      localObject1 = localObject2;
    case 2:
    case 1:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      localObject2 = this.g.getWritableDatabase();
      ((SQLiteDatabase)localObject2).beginTransaction();
      try
      {
        int j = paramArrayOfContentValues.length;
        int i = 0;
        while (true)
          if (i < j)
          {
            ((SQLiteDatabase)localObject2).insertWithOnConflict((String)localObject1, null, paramArrayOfContentValues[i], 4);
            i += 1;
            continue;
            localObject1 = "nuts";
            break;
            localObject1 = "locations";
            break;
            localObject1 = "user";
            break;
            localObject1 = "product";
            break;
          }
        ((SQLiteDatabase)localObject2).setTransactionSuccessful();
        getContext().getContentResolver().notifyChange(paramUri, null);
        i = paramArrayOfContentValues.length;
        return i;
      }
      catch (Exception paramArrayOfContentValues)
      {
        Log.e(a, paramArrayOfContentValues.getMessage());
        throw new SQLException("Failed to insert row into " + paramUri);
      }
      finally
      {
        ((SQLiteDatabase)localObject2).endTransaction();
      }
    }
    throw paramUri;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    a.a("delete >>> " + paramString + ", " + Arrays.toString(paramArrayOfString), new Object[0]);
    SQLiteDatabase localSQLiteDatabase = this.g.getWritableDatabase();
    int i;
    switch (f.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unknown URI " + paramUri);
    case 1:
      i = localSQLiteDatabase.delete("nuts", paramString, paramArrayOfString);
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      getContext().getContentResolver().notifyChange(paramUri, null);
      return i;
      Object localObject = (String)paramUri.getPathSegments().get(1);
      localObject = new StringBuilder("uuid=").append((String)localObject);
      if (!TextUtils.isEmpty(paramString));
      for (paramString = " AND (" + paramString + ')'; ; paramString = "")
      {
        i = localSQLiteDatabase.delete("nuts", paramString, paramArrayOfString);
        break;
      }
      i = localSQLiteDatabase.delete("locations", paramString, paramArrayOfString);
      continue;
      i = localSQLiteDatabase.delete("user", paramString, paramArrayOfString);
      continue;
      i = localSQLiteDatabase.delete("product", paramString, paramArrayOfString);
    }
  }

  public String getType(Uri paramUri)
  {
    switch (f.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unknown URI " + paramUri);
    case 1:
      return "vnd.android.cursor.dir/vnd.com.nutspace.app.blehunter.provider.nut";
    case 2:
      return "vnd.android.cursor.item/vnd.com.nutspace.app.blehunter.provider.nut";
    case 3:
      return "vnd.android.cursor.dir/vnd.com.nutspace.app.blehunter.provider.location";
    case 4:
      return "vnd.android.cursor.dir/vnd.com.nutspace.app.blehunter.provider.user";
    case 5:
    }
    return "vnd.android.cursor.dir/vnd.com.nutspace.app.blehunter.provider.product";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    if (paramContentValues == null)
      throw new IllegalArgumentException("Content values can not be empty");
    switch (f.match(paramUri))
    {
    case 2:
    default:
      localObject = "Unknown URI " + paramUri;
      if (localObject != null)
        throw new IllegalArgumentException((String)localObject);
      break;
    case 1:
      if (paramContentValues.containsKey("uuid"));
      break;
    case 3:
    case 4:
    case 5:
    }
    for (Object localObject = "tag_id in nut table can not be empty"; !paramContentValues.containsKey("device_id"); localObject = null)
    {
      localObject = "device_id in nut table can not be empty";
      break;
      if ((!paramContentValues.containsKey("latitude")) || (!paramContentValues.containsKey("longitude")))
      {
        localObject = "latitude or longitude in location table can not be empty";
        break;
        if (!paramContentValues.containsKey("uuid"))
        {
          localObject = "uuid in user table can not be empty";
          break;
          if (!paramContentValues.containsKey("product_id"))
          {
            localObject = "product id in product table can not be empty";
            break;
            String str;
            switch (f.match(paramUri))
            {
            case 2:
            default:
              str = "";
              localObject = null;
            case 1:
            case 3:
            case 4:
            case 5:
            }
            while (true)
            {
              long l = this.g.getWritableDatabase().insert(str, null, paramContentValues);
              if (l <= 0L)
                break;
              paramUri = ContentUris.withAppendedId((Uri)localObject, l);
              getContext().getContentResolver().notifyChange(paramUri, null);
              return paramUri;
              str = "nuts";
              localObject = d.a;
              continue;
              str = "locations";
              localObject = c.a;
              continue;
              str = "user";
              localObject = f.a;
              continue;
              str = "product";
              localObject = e.a;
            }
            throw new SQLException("Failed to insert row into " + paramUri);
          }
        }
      }
      localObject = null;
      break;
    }
  }

  public boolean onCreate()
  {
    this.g = new g(getContext(), (byte)0);
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    String str1;
    String str2;
    switch (f.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unknown URI " + paramUri);
    case 1:
      localSQLiteQueryBuilder.setTables("nuts");
      localSQLiteQueryBuilder.setProjectionMap(b);
      str1 = "update_time DESC";
      str2 = null;
      if (TextUtils.isEmpty(paramString2))
        break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      paramArrayOfString1 = localSQLiteQueryBuilder.query(this.g.getReadableDatabase(), paramArrayOfString1, paramString1, paramArrayOfString2, str2, null, paramString2);
      paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
      return paramArrayOfString1;
      localSQLiteQueryBuilder.setTables("nuts");
      localSQLiteQueryBuilder.setProjectionMap(b);
      localSQLiteQueryBuilder.appendWhere("uuid=" + (String)paramUri.getPathSegments().get(1));
      str1 = "update_time DESC";
      str2 = null;
      break;
      localSQLiteQueryBuilder.setTables("locations");
      localSQLiteQueryBuilder.setProjectionMap(c);
      str1 = "find_time DESC";
      str2 = null;
      break;
      localSQLiteQueryBuilder.setTables("user");
      localSQLiteQueryBuilder.setProjectionMap(d);
      str2 = null;
      str1 = null;
      break;
      localSQLiteQueryBuilder.setTables("product");
      localSQLiteQueryBuilder.setProjectionMap(e);
      str2 = null;
      str1 = null;
      break;
      localSQLiteQueryBuilder.setTables("nuts");
      localSQLiteQueryBuilder.setProjectionMap(b);
      str2 = "product_id, new_hardware_version";
      str1 = null;
      break;
      paramString2 = str1;
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    a.a("update >>> " + paramString + ", " + Arrays.toString(paramArrayOfString) + ", " + paramContentValues, new Object[0]);
    SQLiteDatabase localSQLiteDatabase = this.g.getWritableDatabase();
    int i;
    switch (f.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unknown URI " + paramUri);
    case 1:
      i = localSQLiteDatabase.update("nuts", paramContentValues, paramString, paramArrayOfString);
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      getContext().getContentResolver().notifyChange(paramUri, null);
      return i;
      Object localObject = (String)paramUri.getPathSegments().get(1);
      localObject = new StringBuilder("uuid=").append((String)localObject);
      if (!TextUtils.isEmpty(paramString));
      for (paramString = " AND (" + paramString + ')'; ; paramString = "")
      {
        i = localSQLiteDatabase.update("nuts", paramContentValues, paramString, paramArrayOfString);
        break;
      }
      i = localSQLiteDatabase.update("locations", paramContentValues, paramString, paramArrayOfString);
      continue;
      i = localSQLiteDatabase.update("user", paramContentValues, paramString, paramArrayOfString);
      continue;
      i = localSQLiteDatabase.update("product", paramContentValues, paramString, paramArrayOfString);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.DataContentProvider
 * JD-Core Version:    0.6.2
 */