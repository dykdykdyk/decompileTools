.class public final Lcom/amap/api/services/a/cl$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/cl;

.field private final b:Lcom/amap/api/services/a/cl$c;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$c;)V
    .locals 1

    .prologue
    .line 771
    iput-object p1, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    .line 773
    invoke-static {p2}, Lcom/amap/api/services/a/cl$c;->d(Lcom/amap/api/services/a/cl$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amap/api/services/a/cl$a;->c:[Z

    .line 774
    return-void

    .line 773
    :cond_0
    invoke-static {p1}, Lcom/amap/api/services/a/cl;->e(Lcom/amap/api/services/a/cl;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$c;Lcom/amap/api/services/a/cl$1;)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/cl$a;-><init>(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$c;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/cl$a;)Lcom/amap/api/services/a/cl$c;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/cl$a;Z)Z
    .locals 0

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/amap/api/services/a/cl$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/services/a/cl$a;)[Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->c:[Z

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

    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    invoke-static {v0}, Lcom/amap/api/services/a/cl;->e(Lcom/amap/api/services/a/cl;)I

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

    iget-object v2, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    .line 819
    invoke-static {v2}, Lcom/amap/api/services/a/cl;->e(Lcom/amap/api/services/a/cl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    iget-object v2, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    monitor-enter v2

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    invoke-static {v0}, Lcom/amap/api/services/a/cl$c;->a(Lcom/amap/api/services/a/cl$c;)Lcom/amap/api/services/a/cl$a;

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
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    invoke-static {v0}, Lcom/amap/api/services/a/cl$c;->d(Lcom/amap/api/services/a/cl$c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 828
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/cl$c;->b(I)Ljava/io/File;
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
    new-instance v0, Lcom/amap/api/services/a/cl$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/amap/api/services/a/cl$a$a;-><init>(Lcom/amap/api/services/a/cl$a;Ljava/io/OutputStream;Lcom/amap/api/services/a/cl$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 834
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    invoke-static {v0}, Lcom/amap/api/services/a/cl;->f(Lcom/amap/api/services/a/cl;)Ljava/io/File;

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
    invoke-static {}, Lcom/amap/api/services/a/cl;->d()Ljava/io/OutputStream;

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
    iget-boolean v0, p0, Lcom/amap/api/services/a/cl$a;->d:Z

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/amap/api/services/a/cl;->a(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$a;Z)V

    .line 868
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    iget-object v1, p0, Lcom/amap/api/services/a/cl$a;->b:Lcom/amap/api/services/a/cl$c;

    invoke-static {v1}, Lcom/amap/api/services/a/cl$c;->c(Lcom/amap/api/services/a/cl$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/cl;->c(Ljava/lang/String;)Z

    .line 872
    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/services/a/cl$a;->e:Z

    .line 873
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    invoke-static {v0, p0, v2}, Lcom/amap/api/services/a/cl;->a(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$a;Z)V

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
    iget-object v0, p0, Lcom/amap/api/services/a/cl$a;->a:Lcom/amap/api/services/a/cl;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/amap/api/services/a/cl;->a(Lcom/amap/api/services/a/cl;Lcom/amap/api/services/a/cl$a;Z)V

    .line 881
    return-void
.end method
