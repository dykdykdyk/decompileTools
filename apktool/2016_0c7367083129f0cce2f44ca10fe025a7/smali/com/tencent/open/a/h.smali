.class public Lcom/tencent/open/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Lcom/tencent/open/a/h;

.field protected static final c:Lcom/tencent/open/a/b;

.field private static d:Z


# instance fields
.field protected b:Lcom/tencent/open/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 35
    sput-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    .line 40
    sput-boolean v3, Lcom/tencent/open/a/h;->d:Z

    .line 43
    sget v2, Lcom/tencent/open/a/c;->m:I

    .line 44
    sget-wide v9, Lcom/tencent/open/a/c;->n:J

    .line 2227
    sget-object v5, Lcom/tencent/open/a/c;->d:Ljava/lang/String;

    .line 4167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 4169
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v1

    .line 3178
    :goto_0
    if-nez v4, :cond_2

    move-object v4, v0

    .line 2231
    :goto_1
    if-eqz v4, :cond_5

    .line 6236
    iget-wide v6, v4, Lcom/tencent/open/a/f;->c:J

    .line 2232
    sget-wide v12, Lcom/tencent/open/a/c;->f:J

    cmp-long v4, v6, v12

    if-lez v4, :cond_5

    .line 2237
    :goto_2
    if-eqz v1, :cond_3

    .line 2238
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    :goto_3
    new-instance v0, Lcom/tencent/open/a/b;

    sget v3, Lcom/tencent/open/a/c;->g:I

    sget v4, Lcom/tencent/open/a/c;->h:I

    sget-object v5, Lcom/tencent/open/a/c;->c:Ljava/lang/String;

    sget v6, Lcom/tencent/open/a/c;->i:I

    int-to-long v6, v6

    sget-object v8, Lcom/tencent/open/a/c;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/tencent/open/a/b;-><init>(Ljava/io/File;IIILjava/lang/String;JLjava/lang/String;J)V

    sput-object v0, Lcom/tencent/open/a/h;->c:Lcom/tencent/open/a/b;

    .line 51
    return-void

    :cond_1
    move v4, v3

    .line 4169
    goto :goto_0

    .line 3182
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 4251
    new-instance v4, Lcom/tencent/open/a/f;

    invoke-direct {v4}, Lcom/tencent/open/a/f;-><init>()V

    .line 5214
    iput-object v6, v4, Lcom/tencent/open/a/f;->a:Ljava/io/File;

    .line 4255
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    .line 4258
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v14, v6

    .line 4259
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    .line 4261
    mul-long/2addr v14, v12

    .line 5227
    iput-wide v14, v4, Lcom/tencent/open/a/f;->b:J

    .line 4262
    mul-long/2addr v6, v12

    .line 5240
    iput-wide v6, v4, Lcom/tencent/open/a/f;->c:J

    goto :goto_1

    .line 2240
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 7085
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2240
    :goto_4
    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 7088
    :cond_4
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/tencent/open/a/a;

    sget-object v1, Lcom/tencent/open/a/h;->c:Lcom/tencent/open/a/b;

    invoke-direct {v0, v1}, Lcom/tencent/open/a/a;-><init>(Lcom/tencent/open/a/b;)V

    iput-object v0, p0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    .line 74
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 212
    const-class v1, Lcom/tencent/open/a/h;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    .line 1245
    iget-object v2, v0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    if-eqz v2, :cond_0

    .line 1246
    iget-object v2, v0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    invoke-virtual {v2}, Lcom/tencent/open/a/a;->a()V

    .line 1247
    iget-object v2, v0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    .line 2148
    invoke-virtual {v2}, Lcom/tencent/open/a/a;->b()V

    .line 2150
    iget-object v2, v2, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 1248
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    .line 214
    :cond_0
    sget-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    .line 217
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v2, 0x20

    .line 77
    sget-boolean v0, Lcom/tencent/open/a/h;->d:Z

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SDK_VERSION:2.9.4.lite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    iget-object v0, p0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-object v1, Lcom/tencent/open/a/g;->a:Lcom/tencent/open/a/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "openSDK_LOG"

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/open/a/g;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v1, p0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "openSDK_LOG"

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/open/a/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/open/a/h;->d:Z

    .line 92
    :cond_2
    sget-object v1, Lcom/tencent/open/a/g;->a:Lcom/tencent/open/a/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/open/a/g;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    sget v0, Lcom/tencent/open/a/c;->b:I

    invoke-static {v0, p1}, Lcom/tencent/open/a/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tencent/open/a/h;->b:Lcom/tencent/open/a/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/open/a/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method private static b()Lcom/tencent/open/a/h;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/tencent/open/a/h;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/open/a/h;

    invoke-direct {v0}, Lcom/tencent/open/a/h;-><init>()V

    sput-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/open/a/h;->d:Z

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/tencent/open/a/h;->b()Lcom/tencent/open/a/h;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tencent/open/a/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method
