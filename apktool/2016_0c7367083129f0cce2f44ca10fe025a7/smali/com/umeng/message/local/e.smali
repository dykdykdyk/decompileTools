.class public Lcom/umeng/message/local/e;
.super Ljava/lang/Object;
.source "UmengLocalNotificationStore.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/umeng/message/local/e;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/umeng/message/local/f;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/umeng/message/local/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/e;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/e;->e:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/umeng/message/local/f;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/local/f;-><init>(Lcom/umeng/message/local/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/local/e;->d:Lcom/umeng/message/local/f;

    .line 34
    iget-object v0, p0, Lcom/umeng/message/local/e;->d:Lcom/umeng/message/local/f;

    invoke-virtual {v0}, Lcom/umeng/message/local/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/local/e;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/umeng/message/local/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/local/e;->c:Lcom/umeng/message/local/e;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/umeng/message/local/e;

    invoke-direct {v0, p0}, Lcom/umeng/message/local/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/local/e;->c:Lcom/umeng/message/local/e;

    .line 21
    :cond_0
    sget-object v0, Lcom/umeng/message/local/e;->c:Lcom/umeng/message/local/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/umeng/message/local/b;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-object v2

    .line 40
    :cond_0
    const-string v3, "id=?"

    .line 41
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 42
    iget-object v0, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengLocalNotification"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 45
    if-eqz v10, :cond_2

    .line 46
    new-instance v0, Lcom/umeng/message/local/b;

    invoke-direct {v0, v1}, Lcom/umeng/message/local/b;-><init>(Landroid/database/Cursor;)V

    move-object v9, v0

    .line 48
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    const-string v3, "localnotification_id=?"

    .line 50
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 51
    iget-object v0, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengNotificationBuilder"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 54
    if-eqz v10, :cond_1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lcom/umeng/message/local/g;

    invoke-direct {v1, v0}, Lcom/umeng/message/local/g;-><init>(Landroid/database/Cursor;)V

    .line 56
    invoke-virtual {v9, v1}, Lcom/umeng/message/local/b;->a(Lcom/umeng/message/local/g;)V

    :cond_1
    move-object v2, v9

    .line 58
    goto :goto_0

    :cond_2
    move-object v9, v2

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 12
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
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengLocalNotification"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 93
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 94
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 95
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    new-instance v11, Lcom/umeng/message/local/b;

    invoke-direct {v11, v9}, Lcom/umeng/message/local/b;-><init>(Landroid/database/Cursor;)V

    .line 97
    const-string v3, "localnotification_id=?"

    .line 98
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1122
    iget-object v1, v11, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 98
    aput-object v1, v4, v0

    .line 99
    iget-object v0, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UmengNotificationBuilder"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/umeng/message/local/g;

    invoke-direct {v0, v1}, Lcom/umeng/message/local/g;-><init>(Landroid/database/Cursor;)V

    .line 104
    invoke-virtual {v11, v0}, Lcom/umeng/message/local/b;->a(Lcom/umeng/message/local/g;)V

    .line 106
    :cond_0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_2
    return-object v10
.end method

.method public final a(Lcom/umeng/message/local/b;)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    .line 2122
    iget-object v2, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2232
    iget-object v2, p1, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 2402
    iget-object v2, v2, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UmengLocalNotification"

    invoke-virtual {p1}, Lcom/umeng/message/local/b;->b()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "id=?"

    new-array v6, v0, [Ljava/lang/String;

    .line 3122
    iget-object v7, p1, Lcom/umeng/message/local/b;->a:Ljava/lang/String;

    .line 133
    aput-object v7, v6, v1

    .line 132
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 134
    iget-object v4, p0, Lcom/umeng/message/local/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UmengNotificationBuilder"

    .line 3232
    iget-object v6, p1, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 134
    invoke-virtual {v6}, Lcom/umeng/message/local/g;->a()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "id=?"

    new-array v8, v0, [Ljava/lang/String;

    .line 4232
    iget-object v9, p1, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 4402
    iget-object v9, v9, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 135
    aput-object v9, v8, v1

    .line 134
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 137
    cmp-long v2, v2, v10

    if-eqz v2, :cond_3

    cmp-long v2, v4, v10

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
