.class public Lcom/amap/api/services/a/ci;
.super Ljava/lang/Object;
.source "DynamicFileDBCreator.java"

# interfaces
.implements Lcom/amap/api/services/a/bl;


# static fields
.field private static a:Lcom/amap/api/services/a/ci;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized c()Lcom/amap/api/services/a/ci;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/amap/api/services/a/ci;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ci;->a:Lcom/amap/api/services/a/ci;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/amap/api/services/a/ci;

    invoke-direct {v0}, Lcom/amap/api/services/a/ci;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/ci;->a:Lcom/amap/api/services/a/ci;

    .line 64
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/ci;->a:Lcom/amap/api/services/a/ci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "dafile.db"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    const-string v1, "DynamicFileDBCreator"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
