.class public Lcom/amap/api/services/a/be;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "/a/"

    sput-object v0, Lcom/amap/api/services/a/be;->a:Ljava/lang/String;

    .line 64
    const-string v0, "b"

    sput-object v0, Lcom/amap/api/services/a/be;->b:Ljava/lang/String;

    .line 65
    const-string v0, "c"

    sput-object v0, Lcom/amap/api/services/a/be;->c:Ljava/lang/String;

    .line 66
    const-string v0, "d"

    sput-object v0, Lcom/amap/api/services/a/be;->d:Ljava/lang/String;

    .line 67
    const-string v0, "e"

    sput-object v0, Lcom/amap/api/services/a/be;->e:Ljava/lang/String;

    .line 68
    const-string v0, "f"

    sput-object v0, Lcom/amap/api/services/a/be;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/amap/api/services/a/bk;
    .locals 1

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    new-instance v0, Lcom/amap/api/services/a/bi;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/bi;-><init>(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    new-instance v0, Lcom/amap/api/services/a/bj;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/bj;-><init>(I)V

    goto :goto_0

    .line 144
    :pswitch_2
    new-instance v0, Lcom/amap/api/services/a/bh;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/bh;-><init>(I)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amap/api/services/a/bv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    const-class v0, Lcom/amap/api/services/a/bq;

    goto :goto_0

    .line 92
    :pswitch_1
    const-class v0, Lcom/amap/api/services/a/bs;

    goto :goto_0

    .line 95
    :pswitch_2
    const-class v0, Lcom/amap/api/services/a/bp;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v1, Lcom/amap/api/services/a/be;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;I)Lcom/amap/api/services/a/bk;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {v0, p0}, Lcom/amap/api/services/a/bk;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bg;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v0, Lcom/amap/api/services/a/be$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/be$1;-><init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(I)Lcom/amap/api/services/a/bv;
    .locals 1

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/amap/api/services/a/bq;

    invoke-direct {v0}, Lcom/amap/api/services/a/bq;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/amap/api/services/a/bs;

    invoke-direct {v0}, Lcom/amap/api/services/a/bs;-><init>()V

    goto :goto_0

    .line 111
    :pswitch_2
    new-instance v0, Lcom/amap/api/services/a/bp;

    invoke-direct {v0}, Lcom/amap/api/services/a/bp;-><init>()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bg;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v1, Lcom/amap/api/services/a/be$2;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/be$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    const-string v1, "Log"

    const-string v2, "processLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 131
    const-string v0, ""

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/amap/api/services/a/be;->d:Ljava/lang/String;

    goto :goto_0

    .line 126
    :pswitch_1
    sget-object v0, Lcom/amap/api/services/a/be;->c:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_2
    sget-object v0, Lcom/amap/api/services/a/be;->b:Ljava/lang/String;

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
