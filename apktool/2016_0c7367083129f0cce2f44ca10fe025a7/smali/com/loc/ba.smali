.class public final Lcom/loc/ba;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Lcom/loc/bd;

.field final b:[Z

.field c:Z

.field final synthetic d:Lcom/loc/ax;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/loc/ax;Lcom/loc/bd;)V
    .locals 1

    .prologue
    .line 0
    iput-object p1, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/ba;->a:Lcom/loc/bd;

    .line 1000
    iget-boolean v0, p2, Lcom/loc/bd;->c:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/loc/ba;->b:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/loc/ax;->f(Lcom/loc/ax;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/loc/ax;Lcom/loc/bd;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/ba;-><init>(Lcom/loc/ax;Lcom/loc/bd;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    invoke-static {v0}, Lcom/loc/ax;->f(Lcom/loc/ax;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index 0 to be greater than 0 and less than the maximum value count of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    invoke-static {v2}, Lcom/loc/ax;->f(Lcom/loc/ax;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/loc/bd;

    .line 2000
    iget-object v0, v0, Lcom/loc/bd;->d:Lcom/loc/ba;

    .line 0
    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/loc/bd;

    .line 3000
    iget-boolean v0, v0, Lcom/loc/bd;->c:Z

    .line 0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ba;->b:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/loc/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/bd;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lcom/loc/bb;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/loc/bb;-><init>(Lcom/loc/ba;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    invoke-static {v0}, Lcom/loc/ax;->g(Lcom/loc/ax;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/loc/ax;->c()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 0
    iget-boolean v0, p0, Lcom/loc/ba;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/ba;Z)V

    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    iget-object v1, p0, Lcom/loc/ba;->a:Lcom/loc/bd;

    .line 4000
    iget-object v1, v1, Lcom/loc/bd;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/loc/ax;->c(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/loc/ba;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    invoke-static {v0, p0, v2}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/ba;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ba;->d:Lcom/loc/ax;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/ba;Z)V

    return-void
.end method
