.class final Lcom/nut/blehunter/provider/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataContentProvider.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 534
    const-string v0, "nuts.db"

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 535
    iput-object p1, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/nut/blehunter/provider/i;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 540
    const-string v0, "CREATE TABLE nuts (_id INTEGER PRIMARY KEY,device_id TEXT,create_time INTEGER UNSIGNED DEFAULT 0,description TEXT,devicePwLsb TEXT,devicePwMsb TEXT,product_id INTEGER UNSIGNED DEFAULT 0,latitude REAL DEFAULT 0,longitude REAL DEFAULT 0,mode INTEGER UNSIGNED DEFAULT 0,name TEXT,pic_url TEXT,status INTEGER UNSIGNED DEFAULT 0,sync_server_state INTEGER UNSIGNED DEFAULT 0,tag_id TEXT,two_way_anti_lost INTEGER UNSIGNED DEFAULT 0,update_time INTEGER UNSIGNED DEFAULT 0,user_id TEXT,uuid TEXT,lastLosingRecord TEXT,lost_start_size INTEGER UNSIGNED DEFAULT 0,lost_success_size INTEGER UNSIGNED DEFAULT 0,wechat_identifier TEXT,position_record TEXT,new_firmware_version TEXT,new_hardware_version TEXT,manufacture_name TEXT,disconnect_remind INTEGER UNSIGNED DEFAULT 1,reconnection_remind INTEGER UNSIGNED DEFAULT 0,remind_time INTEGER UNSIGNED DEFAULT 5,is_mine INTEGER UNSIGNED DEFAULT 1,shared_user TEXT,disconnect_ringtone INTEGER UNSIGNED DEFAULT 0,user TEXT,battery_level INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    const-string v0, "CREATE TABLE locations (_id INTEGER PRIMARY KEY,find_address TEXT,find_time INTEGER UNSIGNED DEFAULT 0,latitude REAL DEFAULT 0,longitude REAL DEFAULT 0,tag_id TEXT,uuid TEXT,source INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    const-string v0, "CREATE TABLE user (_id INTEGER PRIMARY KEY,uuid TEXT,user_info TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    const-string v0, "CREATE TABLE product (_id INTEGER PRIMARY KEY,product_id INTEGER UNSIGNED DEFAULT 0,customization TEXT,last_firmware TEXT,firmware_updated TEXT,bind_path INTEGER UNSIGNED DEFAULT 0,call_device_time INTEGER UNSIGNED DEFAULT 35,valid_reconnection_rssi INTEGER DEFAULT -75,radio_params TEXT,builtin INTEGER UNSIGNED DEFAULT 0,app_alert_delay INTEGER UNSIGNED DEFAULT 0,low_battery_level INTEGER UNSIGNED DEFAULT 0,shop_type INTEGER UNSIGNED DEFAULT 1 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 615
    const-string v0, "CREATE TABLE friend (_id INTEGER PRIMARY KEY,user_id TEXT,uuid TEXT,friend_index INTEGER UNSIGNED DEFAULT 0,friend_info TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v0, "CREATE TABLE safe_region (_id INTEGER PRIMARY KEY,user_id TEXT,uuid TEXT,name TEXT,safe_region_info TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    const/16 v0, 0xe

    if-ge p2, v0, :cond_1

    .line 637
    const-string v0, "DROP TABLE IF EXISTS nuts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 638
    const-string v0, "DROP TABLE IF EXISTS locations"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    const-string v0, "DROP TABLE IF EXISTS user"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/provider/i;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const/16 v0, 0xf

    if-ge p2, v0, :cond_2

    .line 1690
    const-string v0, "ALTER TABLE nuts ADD COLUMN product_id INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    :cond_2
    const/16 v0, 0x10

    if-ge p2, v0, :cond_3

    .line 1694
    const-string v0, "ALTER TABLE nuts ADD COLUMN wechat_identifier TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1695
    const-string v0, "ALTER TABLE nuts ADD COLUMN position_record TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 652
    :cond_3
    const/16 v0, 0x11

    if-ge p2, v0, :cond_4

    .line 1699
    const-string v0, "CREATE TABLE product (_id INTEGER PRIMARY KEY,product_id INTEGER UNSIGNED DEFAULT 0,customization TEXT,last_firmware TEXT,firmware_updated TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1708
    const-string v0, "ALTER TABLE nuts ADD COLUMN new_firmware_version TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1709
    const-string v0, "ALTER TABLE nuts ADD COLUMN new_hardware_version TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    const-string v0, "ALTER TABLE nuts ADD COLUMN manufacture_name TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1711
    const-string v0, "ALTER TABLE nuts ADD COLUMN disconnect_remind INTEGER UNSIGNED DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "ALTER TABLE nuts ADD COLUMN reconnection_remind INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1713
    const-string v0, "ALTER TABLE nuts ADD COLUMN remind_time INTEGER UNSIGNED DEFAULT 5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 656
    :cond_4
    const/16 v0, 0x12

    if-ge p2, v0, :cond_5

    .line 1717
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 2108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1718
    const-string v0, "ALTER TABLE nuts ADD COLUMN is_mine INTEGER UNSIGNED DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1719
    const-string v0, "ALTER TABLE nuts ADD COLUMN shared_user TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1720
    const-string v0, "ALTER TABLE product ADD COLUMN bind_path INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1721
    const-string v0, "ALTER TABLE product ADD COLUMN call_device_time INTEGER UNSIGNED DEFAULT 35"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1722
    const-string v0, "ALTER TABLE product ADD COLUMN valid_reconnection_rssi INTEGER DEFAULT -75"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1723
    const-string v0, "ALTER TABLE product ADD COLUMN radio_params TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 660
    :cond_5
    const/16 v0, 0x13

    if-ge p2, v0, :cond_6

    .line 2727
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 3108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2728
    const-string v0, "ALTER TABLE product ADD COLUMN builtin INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 664
    :cond_6
    const/16 v0, 0x14

    if-ge p2, v0, :cond_7

    .line 3732
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 4108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3733
    const-string v0, "ALTER TABLE product ADD COLUMN app_alert_delay INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 668
    :cond_7
    const/16 v0, 0x15

    if-ge p2, v0, :cond_8

    .line 4737
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 5108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4738
    const-string v0, "ALTER TABLE nuts ADD COLUMN disconnect_ringtone INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    :cond_8
    const/16 v0, 0x16

    if-ge p2, v0, :cond_9

    .line 5742
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 6108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5743
    const-string v0, "ALTER TABLE nuts ADD COLUMN user TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5744
    const-string v0, "ALTER TABLE nuts ADD COLUMN battery_level INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5745
    const-string v0, "ALTER TABLE product ADD COLUMN low_battery_level INTEGER UNSIGNED DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    :cond_9
    const/16 v0, 0x17

    if-ge p2, v0, :cond_a

    .line 6749
    iget-object v0, p0, Lcom/nut/blehunter/provider/i;->a:Landroid/content/Context;

    .line 7108
    const-string v1, "product_version"

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6750
    const-string v0, "ALTER TABLE product ADD COLUMN shop_type INTEGER UNSIGNED DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    :cond_a
    const/16 v0, 0x18

    if-ge p2, v0, :cond_b

    .line 7754
    const-string v0, "CREATE TABLE friend (_id INTEGER PRIMARY KEY,user_id TEXT,uuid TEXT,friend_index INTEGER UNSIGNED DEFAULT 0,friend_info TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 684
    :cond_b
    const/16 v0, 0x19

    if-ge p2, v0, :cond_0

    .line 7765
    const-string v0, "CREATE TABLE safe_region (_id INTEGER PRIMARY KEY,user_id TEXT,uuid TEXT,name TEXT,safe_region_info TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
