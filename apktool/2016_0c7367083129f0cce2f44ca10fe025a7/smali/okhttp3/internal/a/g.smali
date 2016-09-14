.class public final Lokhttp3/internal/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final o:Lokio/Sink;


# instance fields
.field private final c:Lokhttp3/internal/c/a;

.field private d:J

.field private final e:I

.field private f:J

.field private g:Lokio/BufferedSink;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lokhttp3/internal/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/a/g;->b:Z

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/a/g;->a:Ljava/util/regex/Pattern;

    .line 825
    new-instance v0, Lokhttp3/internal/a/h;

    invoke-direct {v0}, Lokhttp3/internal/a/h;-><init>()V

    sput-object v0, Lokhttp3/internal/a/g;->o:Lokio/Sink;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a(Lokhttp3/internal/a/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    .line 1842
    :try_start_0
    iget-object v1, p1, Lokhttp3/internal/a/i;->a:Lokhttp3/internal/a/j;

    .line 1968
    iget-object v0, v1, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 531
    if-eq v0, p1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Lokhttp3/internal/a/g;->e:I

    if-ge v0, v2, :cond_1

    .line 4968
    iget-object v2, v1, Lokhttp3/internal/a/j;->d:[Ljava/io/File;

    .line 550
    aget-object v2, v2, v0

    .line 561
    iget-object v3, p0, Lokhttp3/internal/a/g;->c:Lokhttp3/internal/c/a;

    invoke-interface {v3, v2}, Lokhttp3/internal/c/a;->a(Ljava/io/File;)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    iget v0, p0, Lokhttp3/internal/a/g;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/g;->i:I

    .line 8968
    const/4 v0, 0x0

    iput-object v0, v1, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 9968
    iget-boolean v0, v1, Lokhttp3/internal/a/j;->e:Z

    .line 567
    or-int/lit8 v0, v0, 0x0

    if-eqz v0, :cond_4

    .line 10968
    const/4 v0, 0x1

    iput-boolean v0, v1, Lokhttp3/internal/a/j;->e:Z

    .line 569
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    const-string v2, "CLEAN"

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 570
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    .line 11968
    iget-object v2, v1, Lokhttp3/internal/a/j;->a:Ljava/lang/String;

    .line 570
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 571
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    invoke-virtual {v1, v0}, Lokhttp3/internal/a/j;->a(Lokio/BufferedSink;)V

    .line 572
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 582
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 584
    iget-wide v0, p0, Lokhttp3/internal/a/g;->f:J

    iget-wide v2, p0, Lokhttp3/internal/a/g;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lokhttp3/internal/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/a/g;->m:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/g;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :cond_3
    monitor-exit p0

    return-void

    .line 577
    :cond_4
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    .line 13968
    iget-object v2, v1, Lokhttp3/internal/a/j;->a:Ljava/lang/String;

    .line 577
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 579
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    .line 14968
    iget-object v1, v1, Lokhttp3/internal/a/j;->a:Ljava/lang/String;

    .line 579
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 580
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lokhttp3/internal/a/g;->i:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/a/g;->i:I

    iget-object v1, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    .line 596
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 595
    goto :goto_0
.end method

.method private a(Lokhttp3/internal/a/j;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 618
    .line 15968
    iget-object v0, p1, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 618
    if-eqz v0, :cond_1

    .line 16968
    iget-object v2, p1, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 17859
    iget-object v0, v2, Lokhttp3/internal/a/i;->a:Lokhttp3/internal/a/j;

    .line 17968
    iget-object v0, v0, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 17859
    if-ne v0, v2, :cond_1

    move v0, v1

    .line 17860
    :goto_0
    iget-object v3, v2, Lokhttp3/internal/a/i;->c:Lokhttp3/internal/a/g;

    .line 18088
    iget v3, v3, Lokhttp3/internal/a/g;->e:I

    .line 17860
    if-ge v0, v3, :cond_0

    .line 17862
    :try_start_0
    iget-object v3, v2, Lokhttp3/internal/a/i;->c:Lokhttp3/internal/a/g;

    .line 19088
    iget-object v3, v3, Lokhttp3/internal/a/g;->c:Lokhttp3/internal/c/a;

    .line 17862
    iget-object v4, v2, Lokhttp3/internal/a/i;->a:Lokhttp3/internal/a/j;

    .line 19968
    iget-object v4, v4, Lokhttp3/internal/a/j;->d:[Ljava/io/File;

    .line 17862
    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Lokhttp3/internal/c/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17860
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17867
    :cond_0
    iget-object v0, v2, Lokhttp3/internal/a/i;->a:Lokhttp3/internal/a/j;

    .line 20968
    const/4 v2, 0x0

    iput-object v2, v0, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 622
    :cond_1
    :goto_2
    iget v0, p0, Lokhttp3/internal/a/g;->e:I

    if-ge v1, v0, :cond_2

    .line 623
    iget-object v0, p0, Lokhttp3/internal/a/g;->c:Lokhttp3/internal/c/a;

    .line 21968
    iget-object v2, p1, Lokhttp3/internal/a/j;->c:[Ljava/io/File;

    .line 623
    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lokhttp3/internal/c/a;->a(Ljava/io/File;)V

    .line 624
    iget-wide v2, p0, Lokhttp3/internal/a/g;->f:J

    .line 22968
    iget-object v0, p1, Lokhttp3/internal/a/j;->b:[J

    .line 624
    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/a/g;->f:J

    .line 23968
    iget-object v0, p1, Lokhttp3/internal/a/j;->b:[J

    .line 625
    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 628
    :cond_2
    iget v0, p0, Lokhttp3/internal/a/g;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/g;->i:I

    .line 629
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v0

    .line 24968
    iget-object v1, p1, Lokhttp3/internal/a/j;->a:Ljava/lang/String;

    .line 629
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 630
    iget-object v0, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    .line 25968
    iget-object v1, p1, Lokhttp3/internal/a/j;->a:Ljava/lang/String;

    .line 630
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lokhttp3/internal/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lokhttp3/internal/a/g;->m:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/g;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 636
    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/g;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 648
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/a/g;->f:J

    iget-wide v2, p0, Lokhttp3/internal/a/g;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 679
    iget-object v0, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/j;

    .line 680
    invoke-direct {p0, v0}, Lokhttp3/internal/a/g;->a(Lokhttp3/internal/a/j;)Z

    goto :goto_0

    .line 682
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/g;->l:Z

    .line 683
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/g;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/a/g;->k:Z

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/g;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 675
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/a/g;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/a/j;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/a/j;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 26968
    iget-object v4, v3, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 667
    if-eqz v4, :cond_4

    .line 27968
    iget-object v3, v3, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 28945
    iget-object v4, v3, Lokhttp3/internal/a/i;->c:Lokhttp3/internal/a/g;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28946
    :try_start_2
    iget-boolean v5, v3, Lokhttp3/internal/a/i;->b:Z

    if-eqz v5, :cond_2

    .line 28947
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28953
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 661
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 28949
    :cond_2
    :try_start_4
    iget-object v5, v3, Lokhttp3/internal/a/i;->a:Lokhttp3/internal/a/j;

    .line 28968
    iget-object v5, v5, Lokhttp3/internal/a/j;->f:Lokhttp3/internal/a/i;

    .line 28949
    if-ne v5, v3, :cond_3

    .line 28950
    iget-object v5, v3, Lokhttp3/internal/a/i;->c:Lokhttp3/internal/a/g;

    .line 29088
    invoke-direct {v5, v3}, Lokhttp3/internal/a/g;->a(Lokhttp3/internal/a/i;)V

    .line 28952
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, v3, Lokhttp3/internal/a/i;->b:Z

    .line 28953
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 666
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 671
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lokhttp3/internal/a/g;->d()V

    .line 672
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/g;->k:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/g;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/a/g;->c()V

    .line 655
    invoke-direct {p0}, Lokhttp3/internal/a/g;->d()V

    .line 656
    iget-object v0, p0, Lokhttp3/internal/a/g;->g:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
