.class public Lcom/twitter/sdk/android/core/q;
.super Lio/fabric/sdk/android/o;
.source "TwitterCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/o",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/a",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/l;",
            "Lcom/twitter/sdk/android/core/n;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lio/fabric/sdk/android/o;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    return-void
.end method

.method public static e()Lcom/twitter/sdk/android/core/q;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->g()V

    .line 54
    const-class v0, Lcom/twitter/sdk/android/core/q;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/o;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/q;

    return-object v0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/twitter/sdk/android/core/q;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/o;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->f:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 85
    :try_start_1
    new-instance v0, Lcom/twitter/sdk/android/core/s;

    .line 1116
    iget-object v1, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 85
    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/s;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/m;->a(Lio/fabric/sdk/android/services/network/n;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 87
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Custom SSL pinning enabled"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Exception setting up custom SSL pinning"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "1.3.1.37"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method protected final b_()Z
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lcom/twitter/sdk/android/core/j;

    new-instance v1, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/o;)V

    new-instance v2, Lcom/twitter/sdk/android/core/v;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/v;-><init>()V

    const-string v3, "active_twittersession"

    const-string v4, "twittersession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/j;-><init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    .line 100
    new-instance v0, Lcom/twitter/sdk/android/core/internal/a;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    .line 1123
    iget-object v2, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 1500
    iget-object v2, v2, Lio/fabric/sdk/android/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/a;-><init>(Lcom/twitter/sdk/android/core/m;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->c:Lcom/twitter/sdk/android/core/internal/a;

    .line 103
    new-instance v0, Lcom/twitter/sdk/android/core/j;

    new-instance v1, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/o;)V

    new-instance v2, Lcom/twitter/sdk/android/core/b;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/b;-><init>()V

    const-string v3, "active_appsession"

    const-string v4, "appsession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/j;-><init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/m;

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 24
    .line 2112
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    .line 2113
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    .line 2114
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/q;->f()Ljavax/net/ssl/SSLSocketFactory;

    .line 2135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    iget-object v1, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2137
    iget-object v1, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3109
    iget-object v1, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 4029
    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/a;

    const-string v3, "TwitterCore"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/util/List;Lio/fabric/sdk/android/services/b/x;)V

    sput-object v2, Lcom/twitter/sdk/android/core/internal/scribe/o;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    .line 2116
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->c:Lcom/twitter/sdk/android/core/internal/a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/a;->a()V

    .line 2119
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->c:Lcom/twitter/sdk/android/core/internal/a;

    .line 4123
    iget-object v1, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 4496
    iget-object v1, v1, Lio/fabric/sdk/android/f;->d:Lio/fabric/sdk/android/a;

    .line 5055
    new-instance v2, Lcom/twitter/sdk/android/core/internal/b;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/internal/b;-><init>(Lcom/twitter/sdk/android/core/internal/a;)V

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/d;)Z

    .line 2120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final f()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->g()V

    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/q;->h()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->f:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
