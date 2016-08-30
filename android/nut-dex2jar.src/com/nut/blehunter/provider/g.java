package com.nut.blehunter.provider;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.nut.blehunter.d.k;

final class g extends SQLiteOpenHelper
{
  private Context a;

  private g(Context paramContext)
  {
    super(paramContext, "nuts.db", null, 23);
    this.a = paramContext;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE nuts (_id INTEGER PRIMARY KEY,device_id TEXT,create_time INTEGER UNSIGNED DEFAULT 0,description TEXT,devicePwLsb TEXT,devicePwMsb TEXT,product_id INTEGER UNSIGNED DEFAULT 0,latitude REAL DEFAULT 0,longitude REAL DEFAULT 0,mode INTEGER UNSIGNED DEFAULT 0,name TEXT,pic_url TEXT,status INTEGER UNSIGNED DEFAULT 0,sync_server_state INTEGER UNSIGNED DEFAULT 0,tag_id TEXT,two_way_anti_lost INTEGER UNSIGNED DEFAULT 0,update_time INTEGER UNSIGNED DEFAULT 0,user_id TEXT,uuid TEXT,lastLosingRecord TEXT,lost_start_size INTEGER UNSIGNED DEFAULT 0,lost_success_size INTEGER UNSIGNED DEFAULT 0,wechat_identifier TEXT,position_record TEXT,new_firmware_version TEXT,new_hardware_version TEXT,manufacture_name TEXT,disconnect_remind INTEGER UNSIGNED DEFAULT 1,reconnection_remind INTEGER UNSIGNED DEFAULT 0,remind_time INTEGER UNSIGNED DEFAULT 5,is_mine INTEGER UNSIGNED DEFAULT 1,shared_user TEXT,disconnect_ringtone INTEGER UNSIGNED DEFAULT 0,user TEXT,battery_level INTEGER UNSIGNED DEFAULT 0 );");
    paramSQLiteDatabase.execSQL("CREATE TABLE locations (_id INTEGER PRIMARY KEY,find_address TEXT,find_time INTEGER UNSIGNED DEFAULT 0,latitude REAL DEFAULT 0,longitude REAL DEFAULT 0,tag_id TEXT,uuid TEXT,source INTEGER UNSIGNED DEFAULT 0 );");
    paramSQLiteDatabase.execSQL("CREATE TABLE user (_id INTEGER PRIMARY KEY,uuid TEXT,user_info TEXT );");
    paramSQLiteDatabase.execSQL("CREATE TABLE product (_id INTEGER PRIMARY KEY,product_id INTEGER UNSIGNED DEFAULT 0,customization TEXT,last_firmware TEXT,firmware_updated TEXT,bind_path INTEGER UNSIGNED DEFAULT 0,call_device_time INTEGER UNSIGNED DEFAULT 35,valid_reconnection_rssi INTEGER DEFAULT -75,radio_params TEXT,builtin INTEGER UNSIGNED DEFAULT 0,app_alert_delay INTEGER UNSIGNED DEFAULT 0,low_battery_level INTEGER UNSIGNED DEFAULT 0,shop_type INTEGER UNSIGNED DEFAULT 1 );");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 14)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS nuts");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS locations");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS user");
      onCreate(paramSQLiteDatabase);
    }
    do
    {
      return;
      if (paramInt1 < 15)
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN product_id INTEGER UNSIGNED DEFAULT 0");
      if (paramInt1 < 16)
      {
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN wechat_identifier TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN position_record TEXT");
      }
      if (paramInt1 < 17)
      {
        paramSQLiteDatabase.execSQL("CREATE TABLE product (_id INTEGER PRIMARY KEY,product_id INTEGER UNSIGNED DEFAULT 0,customization TEXT,last_firmware TEXT,firmware_updated TEXT );");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN new_firmware_version TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN new_hardware_version TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN manufacture_name TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN disconnect_remind INTEGER UNSIGNED DEFAULT 1");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN reconnection_remind INTEGER UNSIGNED DEFAULT 0");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN remind_time INTEGER UNSIGNED DEFAULT 5");
      }
      if (paramInt1 < 18)
      {
        k.b(this.a, "product_version", 0);
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN is_mine INTEGER UNSIGNED DEFAULT 1");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN shared_user TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN bind_path INTEGER UNSIGNED DEFAULT 0");
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN call_device_time INTEGER UNSIGNED DEFAULT 35");
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN valid_reconnection_rssi INTEGER DEFAULT -75");
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN radio_params TEXT");
      }
      if (paramInt1 < 19)
      {
        k.b(this.a, "product_version", 0);
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN builtin INTEGER UNSIGNED DEFAULT 0");
      }
      if (paramInt1 < 20)
      {
        k.b(this.a, "product_version", 0);
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN app_alert_delay INTEGER UNSIGNED DEFAULT 0");
      }
      if (paramInt1 < 21)
      {
        k.b(this.a, "product_version", 0);
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN disconnect_ringtone INTEGER UNSIGNED DEFAULT 0");
      }
      if (paramInt1 < 22)
      {
        k.b(this.a, "product_version", 0);
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN user TEXT");
        paramSQLiteDatabase.execSQL("ALTER TABLE nuts ADD COLUMN battery_level INTEGER UNSIGNED DEFAULT 0");
        paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN low_battery_level INTEGER UNSIGNED DEFAULT 0");
      }
    }
    while (paramInt1 >= 23);
    k.b(this.a, "product_version", 0);
    paramSQLiteDatabase.execSQL("ALTER TABLE product ADD COLUMN shop_type INTEGER UNSIGNED DEFAULT 1");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.g
 * JD-Core Version:    0.6.2
 */