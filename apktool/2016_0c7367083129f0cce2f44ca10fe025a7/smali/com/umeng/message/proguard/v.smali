.class public final Lcom/umeng/message/proguard/v;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static a:I


# direct methods
.method private static final declared-synchronized a()I
    .locals 3

    .prologue
    .line 12
    const-class v1, Lcom/umeng/message/proguard/v;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/umeng/message/proguard/v;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/umeng/message/proguard/v;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agoo-thread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/umeng/message/proguard/v;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v1, "ThreadUtil"

    const-string v2, "startTread"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
