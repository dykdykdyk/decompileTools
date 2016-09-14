.class final Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Lio/fabric/sdk/android/services/c/o;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/sdk/android/core/internal/scribe/f;

.field private final f:J

.field private final g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljavax/net/ssl/SSLSocketFactory;

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lretrofit/RestAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private final l:Lio/fabric/sdk/android/services/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [B

    const/16 v1, 0x5b

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    .line 48
    new-array v0, v3, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    .line 52
    new-array v0, v3, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/f;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;Lio/fabric/sdk/android/services/b/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/f;",
            "J",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lio/fabric/sdk/android/services/b/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    .line 70
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    .line 71
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 72
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Ljava/util/List;

    .line 73
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/ExecutorService;

    .line 75
    iput-object p9, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Lio/fabric/sdk/android/services/b/x;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    return-void
.end method

.method static synthetic a()[B
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 111
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 113
    const/4 v2, 0x0

    .line 115
    :try_start_0
    new-instance v1, Lio/fabric/sdk/android/services/b/ab;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/b/ab;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/j;

    invoke-direct {v0, p0, v4, v3}, Lcom/twitter/sdk/android/core/internal/scribe/j;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/b/ab;->a(Lio/fabric/sdk/android/services/b/af;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;)V

    throw v0

    .line 135
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized b()Lretrofit/RestAdapter;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 159
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    .line 2181
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    .line 2182
    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/m;->a(J)Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    .line 2183
    if-eqz v0, :cond_0

    :cond_1
    move-object v1, v0

    .line 160
    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/k;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Lio/fabric/sdk/android/services/b/x;

    invoke-direct {v2, v0, v3}, Lcom/twitter/sdk/android/core/internal/scribe/k;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/f;Lio/fabric/sdk/android/services/b/x;)V

    .line 2191
    if-eqz v1, :cond_3

    .line 3022
    iget-object v0, v1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/c;

    .line 2191
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 162
    :goto_0
    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/internal/scribe/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lretrofit/android/MainThreadExecutor;

    invoke-direct {v6}, Lretrofit/android/MainThreadExecutor;-><init>()V

    invoke-virtual {v4, v5, v6}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    new-instance v4, Lcom/twitter/sdk/android/core/e;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v4, v5, v1, v6}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/l;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v2, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2191
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v1, "No valid session at this time"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    .line 1144
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b()Lretrofit/RestAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    if-eqz v0, :cond_5

    .line 83
    :try_start_0
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter;

    const-class v4, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    invoke-virtual {v0, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    .line 1199
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/internal/scribe/f;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1200
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/internal/scribe/f;->e:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    .line 87
    :goto_1
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 105
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 1144
    goto :goto_0

    .line 1202
    :cond_1
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/internal/scribe/f;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/internal/scribe/f;->d:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v3, "Failed sending files"

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_3
    move v0, v2

    .line 105
    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v4, "Failed sending files"

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    const/16 v4, 0x1f4

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v3, 0x190

    if-ne v0, v3, :cond_3

    :cond_4
    move v0, v1

    .line 97
    goto :goto_2

    .line 100
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v1, "Failed sending files"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v1, "Cannot attempt upload at this time"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method
