.class public final Lcom/amap/api/mapcore2d/dw$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/dw;

.field private final b:Lcom/amap/api/mapcore2d/dw$c;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$c;)V
    .locals 1

    .prologue
    .line 771
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    .line 773
    invoke-static {p2}, Lcom/amap/api/mapcore2d/dw$c;->d(Lcom/amap/api/mapcore2d/dw$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->c:[Z

    .line 774
    return-void

    .line 773
    :cond_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dw;->e(Lcom/amap/api/mapcore2d/dw;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$c;Lcom/amap/api/mapcore2d/dw$1;)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dw$a;-><init>(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$c;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/dw$a;)Lcom/amap/api/mapcore2d/dw$c;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/dw$a;Z)Z
    .locals 0

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/dw$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/dw$a;)[Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dw;->e(Lcom/amap/api/mapcore2d/dw;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    .line 819
    invoke-static {v2}, Lcom/amap/api/mapcore2d/dw;->e(Lcom/amap/api/mapcore2d/dw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    monitor-enter v2

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dw$c;->a(Lcom/amap/api/mapcore2d/dw$c;)Lcom/amap/api/mapcore2d/dw$a;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 823
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 825
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dw$c;->d(Lcom/amap/api/mapcore2d/dw$c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 828
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/dw$c;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 831
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 845
    :goto_0
    :try_start_3
    new-instance v0, Lcom/amap/api/mapcore2d/dw$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/amap/api/mapcore2d/dw$a$a;-><init>(Lcom/amap/api/mapcore2d/dw$a;Ljava/io/OutputStream;Lcom/amap/api/mapcore2d/dw$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 834
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dw;->f(Lcom/amap/api/mapcore2d/dw;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 839
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 843
    goto :goto_0

    .line 842
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/amap/api/mapcore2d/dw;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 866
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/dw$a;->d:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/amap/api/mapcore2d/dw;->a(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$a;Z)V

    .line 868
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dw$a;->b:Lcom/amap/api/mapcore2d/dw$c;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/dw$c;->c(Lcom/amap/api/mapcore2d/dw$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/dw;->c(Ljava/lang/String;)Z

    .line 872
    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/dw$a;->e:Z

    .line 873
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    invoke-static {v0, p0, v2}, Lcom/amap/api/mapcore2d/dw;->a(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$a;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw$a;->a:Lcom/amap/api/mapcore2d/dw;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/amap/api/mapcore2d/dw;->a(Lcom/amap/api/mapcore2d/dw;Lcom/amap/api/mapcore2d/dw$a;Z)V

    .line 881
    return-void
.end method
