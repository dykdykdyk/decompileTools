.class public Lcom/twitter/sdk/android/core/internal/scribe/a;
.super Lcom/twitter/sdk/android/core/internal/scribe/e;
.source "DefaultScribeClient.java"


# static fields
.field private static volatile d:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Lio/fabric/sdk/android/o;

.field public final b:Ljava/lang/String;

.field private final e:Ljava/util/List;
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


# direct methods
.method private constructor <init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/List;Lio/fabric/sdk/android/services/b/x;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/o;",
            "Ljava/lang/String;",
            "Lcom/google/gson/Gson;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;",
            "Lio/fabric/sdk/android/services/b/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 2055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v0

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fabric/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/fabric/sdk/android/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3134
    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/fabric/sdk/android/services/e/v;->e:Lio/fabric/sdk/android/services/e/b;

    if-eqz v1, :cond_0

    .line 3135
    iget-object v1, v0, Lio/fabric/sdk/android/services/e/v;->e:Lio/fabric/sdk/android/services/e/b;

    iget v6, v1, Lio/fabric/sdk/android/services/e/b;->e:I

    .line 3136
    iget-object v0, v0, Lio/fabric/sdk/android/services/e/v;->e:Lio/fabric/sdk/android/services/e/b;

    iget v7, v0, Lio/fabric/sdk/android/services/e/b;->b:I

    .line 3142
    :goto_0
    const-string v0, "https://syndication.twitter.com"

    const-string v1, ""

    .line 3163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3143
    :goto_1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/f;

    const-string v2, "i"

    const-string v3, "sdk"

    const-string v4, ""

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/core/internal/scribe/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 50
    new-instance v5, Lcom/twitter/sdk/android/core/internal/scribe/h;

    invoke-direct {v5, p3}, Lcom/twitter/sdk/android/core/internal/scribe/h;-><init>(Lcom/google/gson/Gson;)V

    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v1

    .line 4063
    iget-object v6, v1, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 50
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/q;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v4, v0

    move-object v7, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/twitter/sdk/android/core/internal/scribe/e;-><init>(Lio/fabric/sdk/android/o;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/f;Lcom/twitter/sdk/android/core/internal/scribe/h;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Lio/fabric/sdk/android/services/b/x;)V

    .line 58
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->a:Lio/fabric/sdk/android/o;

    .line 60
    invoke-virtual {p5}, Lio/fabric/sdk/android/services/b/x;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/lang/String;

    .line 61
    return-void

    .line 3138
    :cond_0
    const/16 v6, 0x64

    .line 3139
    const/16 v7, 0x258

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3166
    goto :goto_1
.end method

.method public constructor <init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/util/List;Lio/fabric/sdk/android/services/b/x;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/o;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/m",
            "<+",
            "Lcom/twitter/sdk/android/core/l;",
            ">;>;",
            "Lio/fabric/sdk/android/services/b/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .line 1112
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Lcom/google/gson/Gson;Ljava/util/List;Lio/fabric/sdk/android/services/b/x;)V

    .line 46
    return-void
.end method

.method private static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 119
    const-class v1, Lcom/twitter/sdk/android/core/internal/scribe/a;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "scribe"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/t;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/internal/scribe/g;)V
    .locals 3

    .prologue
    .line 82
    .line 4087
    const/4 v0, 0x0

    .line 4088
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    .line 4089
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    .line 4090
    if-eqz v0, :cond_0

    .line 4100
    :cond_1
    if-eqz v0, :cond_2

    .line 5026
    iget-wide v0, v0, Lcom/twitter/sdk/android/core/l;->b:J

    .line 82
    :goto_0
    invoke-super {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/e;->a(Lcom/twitter/sdk/android/core/internal/scribe/g;J)Z

    .line 83
    return-void

    .line 4106
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
