.class public final Lcom/twitter/sdk/android/core/internal/a;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/l;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/sdk/android/core/internal/e;

.field private final b:Lio/fabric/sdk/android/services/b/ah;

.field private final c:Lcom/twitter/sdk/android/core/internal/d;

.field private final d:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/twitter/sdk/android/core/m;Lio/fabric/sdk/android/services/b/ah;Lcom/twitter/sdk/android/core/internal/d;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/b/ah;",
            "Lcom/twitter/sdk/android/core/internal/d;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/a;->b:Lio/fabric/sdk/android/services/b/ah;

    .line 44
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a;->d:Lcom/twitter/sdk/android/core/m;

    .line 45
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/a;->c:Lcom/twitter/sdk/android/core/internal/d;

    .line 46
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 47
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/e;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/m;Ljava/util/concurrent/ExecutorService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Lio/fabric/sdk/android/services/b/ah;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/b/ah;-><init>()V

    new-instance v3, Lcom/twitter/sdk/android/core/internal/d;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/internal/d;-><init>()V

    new-instance v5, Lcom/twitter/sdk/android/core/internal/e;

    invoke-direct {v5}, Lcom/twitter/sdk/android/core/internal/e;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/a;-><init>(Lcom/twitter/sdk/android/core/m;Lio/fabric/sdk/android/services/b/ah;Lcom/twitter/sdk/android/core/internal/d;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/e;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->d:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/e;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/c;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/c;-><init>(Lcom/twitter/sdk/android/core/internal/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->d:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    .line 1162
    new-instance v2, Lcom/twitter/sdk/android/core/n;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/n;-><init>(Lcom/twitter/sdk/android/core/l;)V

    .line 2075
    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {v2, v0}, Lcom/twitter/sdk/android/core/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    .line 1103
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/twitter/sdk/android/core/a/f;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/e;

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/e;->b(J)V

    .line 93
    return-void
.end method
