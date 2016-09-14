.class public final Lcom/umeng/message/proguard/a;
.super Ljava/lang/Object;
.source "MessageService.java"


# static fields
.field private static volatile b:Lcom/umeng/message/proguard/a;


# instance fields
.field private volatile a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/a;->b:Lcom/umeng/message/proguard/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 45
    iput-object p1, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/umeng/message/proguard/b;

    invoke-direct {v0, p1}, Lcom/umeng/message/proguard/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 47
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/umeng/message/proguard/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/a;->b:Lcom/umeng/message/proguard/a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/umeng/message/proguard/a;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/proguard/a;->b:Lcom/umeng/message/proguard/a;

    .line 53
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/a;->b:Lcom/umeng/message/proguard/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V
    .locals 7

    .prologue
    .line 123
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add sqlite3--->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string p2, ""

    .line 130
    const/4 v1, -0x1

    .line 134
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string p3, ""

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/proguard/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    :try_start_1
    const-string v2, "INSERT INTO message VALUES(?,?,?,?,?,?,?,?,?,date(\'now\'))"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    aput-object p3, v3, v1

    const/4 v1, 0x7

    aput-object p2, v3, v1

    const/16 v1, 0x8

    .line 141
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    if-eqz v0, :cond_1

    .line 146
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    if-eqz v0, :cond_1

    .line 146
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 145
    :goto_2
    if-eqz v1, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 151
    :cond_3
    :goto_3
    throw v0

    .line 152
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    .line 144
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 118
    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 119
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 328
    const-string v0, "_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    const-wide/16 v0, -0x1

    .line 330
    const/4 v8, -0x1

    .line 331
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 333
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 334
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move-wide v6, v0

    .line 339
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    .line 341
    :cond_0
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessageAtTime messageId ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  targetTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    invoke-static {v6, v7}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <=currentTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_2

    .line 352
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_4

    .line 1362
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAtTime messageId["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] targetTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1365
    invoke-static {v6, v7}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <=currentTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_2
    :goto_1
    return-void

    .line 336
    :catch_0
    move-exception v2

    const-string v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to Integer error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-wide v6, v0

    goto/16 :goto_0

    .line 2315
    :cond_4
    mul-int/lit8 v0, v8, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 3082
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/r;->a(JLjava/lang/String;)I

    move-result v0

    .line 2316
    int-to-long v0, v0

    add-long v2, v6, v0

    .line 1372
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "sendAtTime message---->["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]serverTime--->["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1375
    invoke-static {v6, v7}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " min]targetTime---->["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1377
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1379
    const-string v0, "body"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v0, "id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "type"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "local"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1383
    const-string v0, "notify"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    const-string v4, "alarm"

    .line 1386
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1387
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1388
    const-string v5, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    iget-object v5, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1391
    iget-object v1, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 1392
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/high16 v6, 0x8000000

    .line 1391
    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1394
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 207
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/proguard/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 212
    :try_start_1
    const-string v4, "select count(1) from message where id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-lez v4, :cond_0

    move v0, v3

    .line 220
    :cond_0
    if-eqz v2, :cond_1

    .line 221
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 232
    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    .line 220
    :goto_1
    if-eqz v2, :cond_3

    .line 221
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_3
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 220
    :goto_2
    if-eqz v2, :cond_4

    .line 221
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_4
    if-eqz v1, :cond_5

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 219
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_1

    .line 231
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 236
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/proguard/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 241
    :try_start_1
    const-string v4, "select count(1) from message where id = ? and body_code=? create_time< date(\'now\',\'-1 day\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-lez v4, :cond_0

    move v0, v3

    .line 251
    :cond_0
    if-eqz v2, :cond_1

    .line 252
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_1
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 263
    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    .line 251
    :goto_1
    if-eqz v2, :cond_3

    .line 252
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_3
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 262
    :catch_1
    move-exception v1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 251
    :goto_2
    if-eqz v2, :cond_4

    .line 252
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_4
    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 261
    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 250
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_1

    .line 262
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 399
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 408
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    const/4 v2, -0x1

    if-lt v1, v2, :cond_4

    .line 410
    new-instance v1, Lorg/android/agoo/d/c/d;

    invoke-direct {v1}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 411
    const-string v2, "mtop.push.msg.report"

    .line 3112
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 412
    const-string v2, "1.0"

    .line 3120
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 413
    const-string v2, "messageId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-string v2, "mesgStatus"

    invoke-virtual {v1, v2, p7}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    const-string v2, "del_pack"

    invoke-virtual {v1, v2, p8}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    const-string v2, "trace"

    invoke-virtual {v1, v2, p5}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    const-string v2, "ec"

    invoke-virtual {v1, v2, p6}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 426
    const-string v2, "taskId"

    invoke-virtual {v1, v2, p2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 429
    invoke-static {v2}, Lorg/android/agoo/b/c;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4066
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 430
    new-instance v2, Lorg/android/agoo/d/c/h;

    invoke-direct {v2}, Lorg/android/agoo/d/c/h;-><init>()V

    .line 431
    iget-object v3, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 4136
    invoke-static {v3}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-interface {v2, v3}, Lorg/android/agoo/d/c/b;->a(Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 4166
    invoke-static {v3}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-interface {v2, v3}, Lorg/android/agoo/d/c/b;->b(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    .line 4522
    invoke-static {v3}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-interface {v2, v3}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/umeng/message/proguard/a;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v0, 0x1

    .line 441
    :cond_4
    :goto_0
    return v0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    const-string v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to Integer error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
