.class final Lcom/crashlytics/android/a/f;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/a/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    .line 1016
    iget-object v12, v0, Lcom/crashlytics/android/a/b;->d:Lcom/crashlytics/android/a/ag;

    .line 1034
    iget-object v0, v12, Lcom/crashlytics/android/a/ag;->b:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/x;->d()Ljava/util/Map;

    move-result-object v0

    .line 1036
    iget-object v1, v12, Lcom/crashlytics/android/a/ag;->b:Lio/fabric/sdk/android/services/b/x;

    .line 1177
    iget-object v1, v1, Lio/fabric/sdk/android/services/b/x;->c:Ljava/lang/String;

    .line 1037
    iget-object v2, v12, Lcom/crashlytics/android/a/ag;->b:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/x;->a()Ljava/lang/String;

    move-result-object v3

    .line 1038
    sget-object v2, Lio/fabric/sdk/android/services/b/y;->d:Lio/fabric/sdk/android/services/b/y;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1040
    sget-object v2, Lio/fabric/sdk/android/services/b/y;->g:Lio/fabric/sdk/android/services/b/y;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1042
    iget-object v2, v12, Lcom/crashlytics/android/a/ag;->b:Lio/fabric/sdk/android/services/b/x;

    .line 1308
    const/4 v6, 0x0

    .line 1310
    iget-boolean v7, v2, Lio/fabric/sdk/android/services/b/x;->a:Z

    if-eqz v7, :cond_0

    .line 1311
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/x;->f()Lio/fabric/sdk/android/services/b/b;

    move-result-object v2

    .line 1312
    if-eqz v2, :cond_0

    .line 1313
    iget-boolean v2, v2, Lio/fabric/sdk/android/services/b/b;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1043
    :cond_0
    sget-object v2, Lio/fabric/sdk/android/services/b/y;->c:Lio/fabric/sdk/android/services/b/y;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1045
    iget-object v0, v12, Lcom/crashlytics/android/a/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2193
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2201
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1047
    invoke-static {}, Lio/fabric/sdk/android/services/b/x;->b()Ljava/lang/String;

    move-result-object v10

    .line 1048
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    new-instance v0, Lcom/crashlytics/android/a/ae;

    iget-object v11, v12, Lcom/crashlytics/android/a/ag;->c:Ljava/lang/String;

    iget-object v12, v12, Lcom/crashlytics/android/a/ag;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/crashlytics/android/a/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    .line 3016
    iget-object v1, v1, Lcom/crashlytics/android/a/b;->c:Lcom/crashlytics/android/a/i;

    .line 3037
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 3038
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnswersFilesManagerProvider cannot be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :goto_0
    return-void

    .line 3041
    :cond_1
    :try_start_1
    new-instance v2, Lcom/crashlytics/android/a/af;

    invoke-direct {v2}, Lcom/crashlytics/android/a/af;-><init>()V

    .line 3042
    new-instance v3, Lio/fabric/sdk/android/services/b/ah;

    invoke-direct {v3}, Lio/fabric/sdk/android/services/b/ah;-><init>()V

    .line 3043
    iget-object v4, v1, Lcom/crashlytics/android/a/i;->b:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v4

    .line 3044
    new-instance v6, Lio/fabric/sdk/android/services/c/p;

    iget-object v5, v1, Lcom/crashlytics/android/a/i;->a:Landroid/content/Context;

    const-string v7, "session_analytics.tap"

    const-string v8, "session_analytics_to_send"

    invoke-direct {v6, v5, v4, v7, v8}, Lio/fabric/sdk/android/services/c/p;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    new-instance v5, Lcom/crashlytics/android/a/x;

    iget-object v1, v1, Lcom/crashlytics/android/a/i;->a:Landroid/content/Context;

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/crashlytics/android/a/x;-><init>(Landroid/content/Context;Lcom/crashlytics/android/a/af;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/k;)V

    .line 122
    iget-object v1, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v5, v1}, Lcom/crashlytics/android/a/x;->a(Lio/fabric/sdk/android/services/c/l;)V

    .line 123
    iget-object v8, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    new-instance v1, Lcom/crashlytics/android/a/q;

    iget-object v2, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    .line 4016
    iget-object v2, v2, Lcom/crashlytics/android/a/b;->a:Lio/fabric/sdk/android/o;

    .line 123
    iget-object v3, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    .line 5016
    iget-object v3, v3, Lcom/crashlytics/android/a/b;->b:Landroid/content/Context;

    .line 123
    iget-object v4, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    iget-object v4, v4, Lcom/crashlytics/android/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/crashlytics/android/a/f;->a:Lcom/crashlytics/android/a/b;

    .line 6016
    iget-object v6, v6, Lcom/crashlytics/android/a/b;->e:Lio/fabric/sdk/android/services/network/l;

    move-object v7, v0

    .line 123
    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/a/q;-><init>(Lio/fabric/sdk/android/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/a/x;Lio/fabric/sdk/android/services/network/l;Lcom/crashlytics/android/a/ae;)V

    iput-object v1, v8, Lcom/crashlytics/android/a/b;->g:Lcom/crashlytics/android/a/aa;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
