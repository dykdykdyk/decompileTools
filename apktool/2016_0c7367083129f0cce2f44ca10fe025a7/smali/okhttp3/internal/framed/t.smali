.class public final Lokhttp3/internal/framed/t;
.super Ljava/lang/Object;
.source "FramedStream.java"


# static fields
.field static final synthetic j:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lokhttp3/internal/framed/e;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lokhttp3/internal/framed/v;

.field final g:Lokhttp3/internal/framed/u;

.field public final h:Lokhttp3/internal/framed/w;

.field public final i:Lokhttp3/internal/framed/w;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lokhttp3/internal/framed/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/t;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILokhttp3/internal/framed/e;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/e;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/framed/t;->a:J

    .line 64
    new-instance v0, Lokhttp3/internal/framed/w;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/w;-><init>(Lokhttp3/internal/framed/t;)V

    iput-object v0, p0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    .line 65
    new-instance v0, Lokhttp3/internal/framed/w;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/w;-><init>(Lokhttp3/internal/framed/t;)V

    iput-object v0, p0, Lokhttp3/internal/framed/t;->i:Lokhttp3/internal/framed/w;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    .line 76
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput p1, p0, Lokhttp3/internal/framed/t;->c:I

    .line 79
    iput-object p2, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    .line 80
    iget-object v0, p2, Lokhttp3/internal/framed/e;->f:Lokhttp3/internal/framed/ap;

    .line 81
    invoke-virtual {v0}, Lokhttp3/internal/framed/ap;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/t;->b:J

    .line 82
    new-instance v0, Lokhttp3/internal/framed/v;

    iget-object v1, p2, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    .line 83
    invoke-virtual {v1}, Lokhttp3/internal/framed/ap;->b()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lokhttp3/internal/framed/v;-><init>(Lokhttp3/internal/framed/t;JB)V

    iput-object v0, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    .line 84
    new-instance v0, Lokhttp3/internal/framed/u;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/u;-><init>(Lokhttp3/internal/framed/t;)V

    iput-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    .line 85
    iget-object v0, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v0, p4}, Lokhttp3/internal/framed/v;->a(Lokhttp3/internal/framed/v;Z)Z

    .line 86
    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v0, p3}, Lokhttp3/internal/framed/u;->a(Lokhttp3/internal/framed/u;Z)Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/framed/t;->k:Ljava/util/List;

    .line 88
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/t;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lokhttp3/internal/framed/t;->c:I

    return v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    return-object v0
.end method

.method private d(Lokhttp3/internal/framed/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lokhttp3/internal/framed/t;->j:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v1}, Lokhttp3/internal/framed/v;->a(Lokhttp3/internal/framed/v;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v1}, Lokhttp3/internal/framed/u;->a(Lokhttp3/internal/framed/u;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget v1, p0, Lokhttp3/internal/framed/t;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/e;->b(I)Lokhttp3/internal/framed/t;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lokhttp3/internal/framed/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/t;->f()V

    return-void
.end method

.method private f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-void

    .line 586
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    sget-boolean v0, Lokhttp3/internal/framed/t;->j:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1450
    :cond_0
    monitor-enter p0

    .line 1451
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v0}, Lokhttp3/internal/framed/v;->a(Lokhttp3/internal/framed/v;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v0}, Lokhttp3/internal/framed/v;->b(Lokhttp3/internal/framed/v;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v0}, Lokhttp3/internal/framed/u;->a(Lokhttp3/internal/framed/u;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v0}, Lokhttp3/internal/framed/u;->b(Lokhttp3/internal/framed/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1452
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/framed/t;->a()Z

    move-result v1

    .line 1453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    if-eqz v0, :cond_4

    .line 1459
    sget-object v0, Lokhttp3/internal/framed/a;->l:Lokhttp3/internal/framed/a;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/a;)V

    :cond_2
    :goto_1
    return-void

    .line 1451
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1460
    :cond_4
    if-nez v1, :cond_2

    .line 1461
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget v1, p0, Lokhttp3/internal/framed/t;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/e;->b(I)Lokhttp3/internal/framed/t;

    goto :goto_1
.end method

.method static synthetic g(Lokhttp3/internal/framed/t;)Lokhttp3/internal/framed/w;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lokhttp3/internal/framed/t;->i:Lokhttp3/internal/framed/w;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    .line 1569
    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v0}, Lokhttp3/internal/framed/u;->b(Lokhttp3/internal/framed/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1571
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v0}, Lokhttp3/internal/framed/u;->a(Lokhttp3/internal/framed/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1572
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    if-eqz v0, :cond_2

    .line 1574
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/a;)V

    throw v0

    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method final a(J)V
    .locals 3

    .prologue
    .line 564
    iget-wide v0, p0, Lokhttp3/internal/framed/t;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/t;->b:J

    .line 565
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    :cond_0
    return-void
.end method

.method public final a(Lokhttp3/internal/framed/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget v1, p0, Lokhttp3/internal/framed/t;->c:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/e;->b(ILokhttp3/internal/framed/a;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v1}, Lokhttp3/internal/framed/v;->a(Lokhttp3/internal/framed/v;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    invoke-static {v1}, Lokhttp3/internal/framed/v;->b(Lokhttp3/internal/framed/v;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    .line 110
    invoke-static {v1}, Lokhttp3/internal/framed/u;->a(Lokhttp3/internal/framed/u;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    invoke-static {v1}, Lokhttp3/internal/framed/u;->b(Lokhttp3/internal/framed/u;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/t;->e:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lokhttp3/internal/framed/a;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/t;->d(Lokhttp3/internal/framed/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget v1, p0, Lokhttp3/internal/framed/t;->c:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/e;->a(ILokhttp3/internal/framed/a;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lokhttp3/internal/framed/t;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget-boolean v3, v3, Lokhttp3/internal/framed/e;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/t;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lokhttp3/internal/framed/t;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    invoke-virtual {v1}, Lokhttp3/internal/framed/w;->a()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    invoke-virtual {v0}, Lokhttp3/internal/framed/w;->a()V

    .line 144
    iget-object v0, p0, Lokhttp3/internal/framed/t;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/t;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_4
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/a;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method final declared-synchronized c(Lokhttp3/internal/framed/a;)V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lokhttp3/internal/framed/t;->l:Lokhttp3/internal/framed/a;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lokio/Sink;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/framed/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/t;->g:Lokhttp3/internal/framed/u;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lokhttp3/internal/framed/t;->j:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokhttp3/internal/framed/v;->a(Lokhttp3/internal/framed/v;Z)Z

    .line 293
    invoke-virtual {p0}, Lokhttp3/internal/framed/t;->a()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lokhttp3/internal/framed/t;->d:Lokhttp3/internal/framed/e;

    iget v1, p0, Lokhttp3/internal/framed/t;->c:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/e;->b(I)Lokhttp3/internal/framed/t;

    .line 299
    :cond_1
    return-void

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
