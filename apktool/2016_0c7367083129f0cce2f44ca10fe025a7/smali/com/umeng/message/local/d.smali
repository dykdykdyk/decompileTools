.class public Lcom/umeng/message/local/d;
.super Ljava/lang/Object;
.source "UmengLocalNotificationManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/umeng/message/local/d;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/umeng/message/local/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/local/d;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/umeng/message/local/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/local/d;->b:Lcom/umeng/message/local/d;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/umeng/message/local/d;

    invoke-direct {v0, p0}, Lcom/umeng/message/local/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/local/d;->b:Lcom/umeng/message/local/d;

    .line 32
    :cond_0
    sget-object v0, Lcom/umeng/message/local/d;->b:Lcom/umeng/message/local/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    const-class v2, Lcom/umeng/message/local/UmengLocalNotificationService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const-string v1, "local_notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "local_notification_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/umeng/message/local/b;
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/message/local/e;->a(Ljava/lang/String;)Lcom/umeng/message/local/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    :try_start_1
    sget-object v2, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/message/local/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/local/e;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    :goto_0
    monitor-exit p0

    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    :try_start_1
    sget-object v2, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/umeng/message/local/b;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    monitor-enter p0

    if-nez p1, :cond_0

    .line 70
    :try_start_0
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "localNotification is null"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/umeng/message/local/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "Please reset date time for localNotification"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/umeng/message/local/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "Please reset relavent data for localNotification"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2122
    :cond_2
    :try_start_3
    iget-object v1, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v1}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;)Lcom/umeng/message/local/b;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "add local notification has exists"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    :try_start_4
    sget-object v2, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 90
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v1

    .line 4122
    iget-object v2, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 3116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4232
    iget-object v2, p1, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 4402
    iget-object v2, v2, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 3116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6122
    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 91
    const-string v2, "add_local_notification"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 3120
    :cond_5
    iget-object v2, v1, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UmengLocalNotification"

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/umeng/message/local/b;->b()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3121
    iget-object v1, v1, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UmengNotificationBuilder"

    const/4 v3, 0x0

    .line 5232
    iget-object v4, p1, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 3122
    invoke-virtual {v4}, Lcom/umeng/message/local/g;->a()Landroid/content/ContentValues;

    move-result-object v4

    .line 3121
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/message/local/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v11

    .line 1062
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v9

    .line 54
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1064
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title LIKE \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' OR content LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1067
    iget-object v0, v11, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengLocalNotification"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1069
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    move-object v1, v9

    .line 1070
    :goto_1
    if-eqz v0, :cond_2

    .line 1071
    new-instance v13, Lcom/umeng/message/local/b;

    invoke-direct {v13, v12}, Lcom/umeng/message/local/b;-><init>(Landroid/database/Cursor;)V

    .line 1072
    const-string v3, "localnotification_id=?"

    .line 1073
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1122
    iget-object v1, v13, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 1073
    aput-object v1, v4, v0

    .line 1074
    iget-object v0, v11, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengNotificationBuilder"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1075
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 1077
    if-eqz v0, :cond_1

    .line 1078
    new-instance v0, Lcom/umeng/message/local/g;

    invoke-direct {v0, v1}, Lcom/umeng/message/local/g;-><init>(Landroid/database/Cursor;)V

    .line 1079
    invoke-virtual {v13, v0}, Lcom/umeng/message/local/b;->a(Lcom/umeng/message/local/g;)V

    .line 1081
    :cond_1
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_1

    .line 1084
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1085
    if-eqz v1, :cond_3

    .line 1086
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v0, v10

    .line 1087
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_2
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    goto/16 :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/local/d;->a()Ljava/util/List;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    sget-object v0, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v1, "list is empty"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return v7

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v2

    .line 8152
    invoke-virtual {v2}, Lcom/umeng/message/local/e;->a()Ljava/util/List;

    move-result-object v0

    .line 8153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/local/b;

    .line 8154
    const-string v4, "id=?"

    .line 8155
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 9122
    iget-object v0, v0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 8155
    aput-object v0, v5, v6

    .line 8156
    iget-object v0, v2, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UmengLocalNotification"

    invoke-virtual {v0, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8157
    const-string v0, "localnotification_id=?"

    .line 8158
    iget-object v4, v2, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UmengNotificationBuilder"

    invoke-virtual {v4, v6, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    :try_start_2
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :cond_2
    :try_start_3
    const-string v0, ""

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/local/b;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10122
    iget-object v0, v0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "clear_local_notification"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized b(Lcom/umeng/message/local/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 102
    monitor-enter p0

    if-nez p1, :cond_0

    .line 103
    :try_start_0
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "localNotification is null"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/umeng/message/local/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "Please reset date time for localNotification"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/umeng/message/local/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "Please reset relavent data for localNotification"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/message/local/e;->a(Lcom/umeng/message/local/b;)Z

    .line 7122
    iget-object v1, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 119
    const-string v2, "update_local_notification"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    :try_start_4
    sget-object v2, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/umeng/message/local/d;->a()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/local/b;

    .line 11122
    iget-object v0, v0, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 173
    const-string v2, "update_local_notification"

    invoke-direct {p0, v0, v2}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;)Lcom/umeng/message/local/b;

    move-result-object v2

    .line 132
    if-nez v2, :cond_0

    .line 133
    sget-object v1, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    const-string v2, "localNotification is null"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    .line 136
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/umeng/message/local/d;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v3

    .line 7141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7143
    const-string v4, "id=?"

    .line 7144
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 7145
    iget-object v6, v3, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "UmengLocalNotification"

    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7146
    const-string v4, "localnotification_id=?"

    .line 7147
    iget-object v3, v3, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UmengNotificationBuilder"

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8122
    :cond_1
    iget-object v2, v2, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 137
    const-string v3, "delete_local_notification"

    invoke-direct {p0, v2, v3}, Lcom/umeng/message/local/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 144
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    :try_start_2
    sget-object v2, Lcom/umeng/message/local/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
