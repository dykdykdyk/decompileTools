.class public final Lu/aly/ey;
.super Ljava/lang/Object;
.source "UMCCStorageManager.java"


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lu/aly/ey;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/ad;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "upload agg date error"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 114
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
.end method

.method public static a(Lu/aly/ef;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/ef;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/ae;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    invoke-static {p0, v0}, Lu/aly/a;->a(Lu/aly/ef;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    .line 133
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
.end method

.method public static a(Lu/aly/ef;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/ef;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1306
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1307
    const-string v0, "limitedck"

    invoke-static {v1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1308
    const-string v0, "limitedck"

    invoke-static {v1, v0}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 1311
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1312
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    const-string v4, "ck"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, "limitedck"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertToLimitCKTable error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1321
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :goto_1
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 180
    :goto_2
    return-void

    .line 1316
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1317
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1321
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 177
    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "saveToLimitCKTable exception"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    goto :goto_2

    .line 1321
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 179
    :catchall_1
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
.end method

.method public static a(Lu/aly/ef;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/ef;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ei;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 194
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1335
    :try_start_1
    const-string v0, "__ag_of"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ei;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1336
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 200
    :goto_1
    return-void

    .line 1339
    :cond_1
    :try_start_2
    const-string v5, "system where key=\"__ag_of\""

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1342
    const/4 v4, 0x0

    .line 1344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v2, v6

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1346
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 1347
    const-string v2, "count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1348
    const-string v2, "timeStamp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1350
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delete from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1344
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save to system table error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1365
    if-eqz v1, :cond_0

    .line 1366
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    :try_start_5
    const-string v0, "arrgetated system buffer exception"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    goto :goto_1

    .line 1354
    :cond_3
    :try_start_6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1355
    const-string v5, "key"

    .line 2043
    iget-object v10, v0, Lu/aly/ei;->a:Ljava/lang/String;

    .line 1355
    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v10, "count"

    if-nez v4, :cond_5

    .line 2055
    iget-wide v4, v0, Lu/aly/ei;->c:J

    .line 1357
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1356
    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1358
    const-string v4, "timeStamp"

    cmp-long v5, v2, v6

    if-nez v5, :cond_4

    .line 4051
    iget-wide v2, v0, Lu/aly/ei;->b:J

    .line 1359
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1358
    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    const-string v0, "system"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1361
    const-string v0, "success"

    invoke-virtual {p0, v0}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1365
    if-eqz v1, :cond_0

    .line 1366
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 199
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0

    .line 1357
    :cond_5
    int-to-long v4, v4

    .line 3055
    :try_start_8
    iget-wide v12, v0, Lu/aly/ei;->c:J
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1357
    add-long/2addr v4, v12

    goto :goto_3

    .line 1365
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    .line 1366
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 216
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    .line 218
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "loadCKToMemory exception"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
.end method
