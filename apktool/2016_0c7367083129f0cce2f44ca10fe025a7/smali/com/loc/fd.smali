.class public final Lcom/loc/fd;
.super Lcom/loc/l;
.source "ExceptionLogProcessor.java"


# static fields
.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/fd;->c:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/eo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    invoke-static {p1}, Lcom/loc/eh;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_3

    sget-boolean v2, Lcom/loc/fd;->c:Z

    if-eqz v2, :cond_3

    sput-boolean v1, Lcom/loc/fd;->c:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/loc/aa;

    invoke-direct {v4, p1}, Lcom/loc/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/loc/aa;->a()Lcom/loc/ab;

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v3

    :goto_0
    return v0

    .line 1000
    :cond_0
    iget v2, v5, Lcom/loc/ab;->b:I

    if-ne v2, v0, :cond_1

    move v2, v0

    .line 0
    :goto_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/loc/ab;->b(Z)V

    invoke-virtual {v4, v5}, Lcom/loc/aa;->a(Lcom/loc/ab;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v2, v1

    .line 1000
    goto :goto_1

    .line 0
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
