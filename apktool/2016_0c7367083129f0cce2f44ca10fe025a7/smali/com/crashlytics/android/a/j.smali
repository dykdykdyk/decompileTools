.class final Lcom/crashlytics/android/a/j;
.super Lio/fabric/sdk/android/d;
.source "AnswersLifecycleCallbacks.java"


# instance fields
.field private final a:Lcom/crashlytics/android/a/z;

.field private final b:Lcom/crashlytics/android/a/m;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/a/z;Lcom/crashlytics/android/a/m;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/fabric/sdk/android/d;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    .line 16
    iput-object p2, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ad;)V

    .line 27
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ad;->b:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ad;)V

    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    .line 1053
    iput-boolean v2, v0, Lcom/crashlytics/android/a/m;->e:Z

    .line 1055
    iget-object v0, v0, Lcom/crashlytics/android/a/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 37
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ad;->c:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ad;)V

    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->b:Lcom/crashlytics/android/a/m;

    .line 1062
    iget-boolean v1, v0, Lcom/crashlytics/android/a/m;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/crashlytics/android/a/m;->e:Z

    if-nez v1, :cond_0

    .line 1063
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crashlytics/android/a/m;->e:Z

    .line 1065
    :try_start_0
    iget-object v1, v0, Lcom/crashlytics/android/a/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/crashlytics/android/a/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/crashlytics/android/a/n;

    invoke-direct {v4, v0}, Lcom/crashlytics/android/a/n;-><init>(Lcom/crashlytics/android/a/m;)V

    const-wide/16 v6, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to schedule background detector"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/a/j;->a:Lcom/crashlytics/android/a/z;

    sget-object v1, Lcom/crashlytics/android/a/ad;->d:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/a/z;->a(Landroid/app/Activity;Lcom/crashlytics/android/a/ad;)V

    .line 44
    return-void
.end method
