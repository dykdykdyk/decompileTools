.class public final Lu/aly/as;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static c:Lu/aly/as;

.field private static d:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lu/aly/as;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lu/aly/as;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/as;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lu/aly/as;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/as;->c:Lu/aly/as;

    if-nez v0, :cond_0

    .line 33
    invoke-static {p0}, Lu/aly/as;->b(Landroid/content/Context;)V

    .line 35
    :cond_0
    sget-object v0, Lu/aly/as;->c:Lu/aly/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const-class v1, Lu/aly/as;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/as;->c:Lu/aly/as;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    sput-object v0, Lu/aly/as;->c:Lu/aly/as;

    .line 27
    invoke-static {p0}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v0

    sput-object v0, Lu/aly/as;->d:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v1

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/as;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    sget-object v0, Lu/aly/as;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    :cond_0
    iget-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/as;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    sget-object v0, Lu/aly/as;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    :cond_0
    iget-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/as;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    :cond_0
    iget-object v0, p0, Lu/aly/as;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lu/aly/as;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method