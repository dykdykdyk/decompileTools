.class public final Lcom/crashlytics/android/a/b;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Lio/fabric/sdk/android/services/c/l;


# instance fields
.field final a:Lio/fabric/sdk/android/o;

.field final b:Landroid/content/Context;

.field final c:Lcom/crashlytics/android/a/i;

.field final d:Lcom/crashlytics/android/a/ag;

.field final e:Lio/fabric/sdk/android/services/network/l;

.field final f:Ljava/util/concurrent/ScheduledExecutorService;

.field g:Lcom/crashlytics/android/a/aa;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;Landroid/content/Context;Lcom/crashlytics/android/a/i;Lcom/crashlytics/android/a/ag;Lio/fabric/sdk/android/services/network/l;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/crashlytics/android/a/p;

    invoke-direct {v0}, Lcom/crashlytics/android/a/p;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/b;->g:Lcom/crashlytics/android/a/aa;

    .line 32
    iput-object p1, p0, Lcom/crashlytics/android/a/b;->a:Lio/fabric/sdk/android/o;

    .line 33
    iput-object p2, p0, Lcom/crashlytics/android/a/b;->b:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/crashlytics/android/a/b;->c:Lcom/crashlytics/android/a/i;

    .line 35
    iput-object p4, p0, Lcom/crashlytics/android/a/b;->d:Lcom/crashlytics/android/a/ag;

    .line 36
    iput-object p5, p0, Lcom/crashlytics/android/a/b;->e:Lio/fabric/sdk/android/services/network/l;

    .line 37
    iput-object p6, p0, Lcom/crashlytics/android/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/crashlytics/android/a/e;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/e;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final a(Lcom/crashlytics/android/a/ac;ZZ)V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/crashlytics/android/a/h;

    invoke-direct {v0, p0, p1, p3}, Lcom/crashlytics/android/a/h;-><init>(Lcom/crashlytics/android/a/b;Lcom/crashlytics/android/a/ac;Z)V

    .line 165
    if-eqz p2, :cond_0

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to run events task"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to submit events task"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
