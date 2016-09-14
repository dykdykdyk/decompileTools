.class final Lcom/crashlytics/android/a/q;
.super Ljava/lang/Object;
.source "EnabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/a/aa;


# instance fields
.field final a:Lcom/crashlytics/android/a/ae;

.field b:Lio/fabric/sdk/android/services/c/o;

.field c:Lio/fabric/sdk/android/services/b/j;

.field d:Lcom/crashlytics/android/a/r;

.field e:Z

.field f:Z

.field volatile g:I

.field private final h:Lio/fabric/sdk/android/o;

.field private final i:Lio/fabric/sdk/android/services/network/l;

.field private final j:Landroid/content/Context;

.field private final k:Lcom/crashlytics/android/a/x;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/a/x;Lio/fabric/sdk/android/services/network/l;Lcom/crashlytics/android/a/ae;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance v0, Lio/fabric/sdk/android/services/b/j;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/b/j;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/q;->c:Lio/fabric/sdk/android/services/b/j;

    .line 46
    new-instance v0, Lcom/crashlytics/android/a/s;

    invoke-direct {v0}, Lcom/crashlytics/android/a/s;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/q;->d:Lcom/crashlytics/android/a/r;

    .line 47
    iput-boolean v1, p0, Lcom/crashlytics/android/a/q;->e:Z

    .line 48
    iput-boolean v1, p0, Lcom/crashlytics/android/a/q;->f:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/crashlytics/android/a/q;->g:I

    .line 55
    iput-object p1, p0, Lcom/crashlytics/android/a/q;->h:Lio/fabric/sdk/android/o;

    .line 56
    iput-object p2, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/crashlytics/android/a/q;->l:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    iput-object p4, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    .line 59
    iput-object p5, p0, Lcom/crashlytics/android/a/q;->i:Lio/fabric/sdk/android/services/network/l;

    .line 60
    iput-object p6, p0, Lcom/crashlytics/android/a/q;->a:Lcom/crashlytics/android/a/ae;

    .line 61
    return-void
.end method

.method private a(JJ)V
    .locals 9

    .prologue
    .line 204
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 205
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lio/fabric/sdk/android/services/c/r;

    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lio/fabric/sdk/android/services/c/r;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/n;)V

    .line 207
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling time based file roll over every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :try_start_0
    iget-object v7, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/crashlytics/android/a/q;->l:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    const-string v1, "Failed to schedule time based file roll over"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->b:Lio/fabric/sdk/android/services/c/o;

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    const-string v2, "Sending all files"

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/x;->e()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 151
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "attempt to send batch of %d files"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->b:Lio/fabric/sdk/android/services/c/o;

    invoke-interface {v1, v2}, Lio/fabric/sdk/android/services/c/o;->a(Ljava/util/List;)Z

    move-result v3

    .line 156
    if-eqz v3, :cond_2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v0

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/a/x;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 161
    :cond_2
    if-eqz v3, :cond_3

    .line 165
    :try_start_2
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v1}, Lcom/crashlytics/android/a/x;->e()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 168
    :goto_2
    iget-object v2, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 172
    :cond_3
    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/x;->g()V

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final a(Lcom/crashlytics/android/a/ac;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 91
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->a:Lcom/crashlytics/android/a/ae;

    .line 1131
    new-instance v0, Lcom/crashlytics/android/a/ab;

    iget-wide v2, p1, Lcom/crashlytics/android/a/ac;->b:J

    iget-object v4, p1, Lcom/crashlytics/android/a/ac;->a:Lcom/crashlytics/android/a/ad;

    iget-object v5, p1, Lcom/crashlytics/android/a/ac;->c:Ljava/util/Map;

    iget-object v6, p1, Lcom/crashlytics/android/a/ac;->d:Ljava/lang/String;

    iget-object v7, p1, Lcom/crashlytics/android/a/ac;->e:Ljava/util/Map;

    iget-object v8, p1, Lcom/crashlytics/android/a/ac;->f:Ljava/lang/String;

    iget-object v9, p1, Lcom/crashlytics/android/a/ac;->g:Ljava/util/Map;

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/a/ab;-><init>(Lcom/crashlytics/android/a/ae;JLcom/crashlytics/android/a/ad;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;B)V

    .line 93
    iget-boolean v1, p0, Lcom/crashlytics/android/a/q;->e:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/crashlytics/android/a/ad;->g:Lcom/crashlytics/android/a/ad;

    iget-object v2, v0, Lcom/crashlytics/android/a/ab;->c:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/a/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Custom events tracking disabled - skipping event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v1, p0, Lcom/crashlytics/android/a/q;->f:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/crashlytics/android/a/ad;->h:Lcom/crashlytics/android/a/ad;

    iget-object v2, v0, Lcom/crashlytics/android/a/ab;->c:Lcom/crashlytics/android/a/ad;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/a/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Predefined events tracking disabled - skipping event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->d:Lcom/crashlytics/android/a/r;

    invoke-interface {v1, v0}, Lcom/crashlytics/android/a/r;->a(Lcom/crashlytics/android/a/ab;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping filtered event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/a/x;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    :goto_1
    iget v0, p0, Lcom/crashlytics/android/a/q;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v10, 0x1

    .line 2123
    :cond_4
    if-eqz v10, :cond_0

    .line 2124
    iget v0, p0, Lcom/crashlytics/android/a/q;->g:I

    int-to-long v0, v0

    iget v2, p0, Lcom/crashlytics/android/a/q;->g:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/a/q;->a(JJ)V

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Answers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lcom/crashlytics/android/a/y;

    iget-object v1, p0, Lcom/crashlytics/android/a/q;->h:Lio/fabric/sdk/android/o;

    iget-object v3, p1, Lio/fabric/sdk/android/services/e/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/a/q;->i:Lio/fabric/sdk/android/services/network/l;

    iget-object v2, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/a/y;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;Ljava/lang/String;)V

    .line 1031
    new-instance v1, Lcom/crashlytics/android/a/t;

    new-instance v2, Lio/fabric/sdk/android/services/concurrency/a/c;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/concurrency/a/c;-><init>()V

    invoke-direct {v1, v2}, Lcom/crashlytics/android/a/t;-><init>(Lio/fabric/sdk/android/services/concurrency/a/a;)V

    .line 1033
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/a/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/concurrency/a/b;-><init>(I)V

    .line 1034
    new-instance v3, Lio/fabric/sdk/android/services/concurrency/a/e;

    invoke-direct {v3, v1, v2}, Lio/fabric/sdk/android/services/concurrency/a/e;-><init>(Lio/fabric/sdk/android/services/concurrency/a/a;Lio/fabric/sdk/android/services/concurrency/a/d;)V

    .line 1035
    new-instance v1, Lcom/crashlytics/android/a/u;

    invoke-direct {v1, v3}, Lcom/crashlytics/android/a/u;-><init>(Lio/fabric/sdk/android/services/concurrency/a/e;)V

    .line 1036
    new-instance v2, Lcom/crashlytics/android/a/l;

    invoke-direct {v2, v0, v1}, Lcom/crashlytics/android/a/l;-><init>(Lcom/crashlytics/android/a/y;Lcom/crashlytics/android/a/u;)V

    .line 66
    iput-object v2, p0, Lcom/crashlytics/android/a/q;->b:Lio/fabric/sdk/android/services/c/o;

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    .line 1062
    iput-object p1, v0, Lcom/crashlytics/android/a/x;->a:Lio/fabric/sdk/android/services/e/b;

    .line 71
    iget-boolean v0, p1, Lio/fabric/sdk/android/services/e/b;->f:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/a/q;->e:Z

    .line 72
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Custom event tracking "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/crashlytics/android/a/q;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p1, Lio/fabric/sdk/android/services/e/b;->g:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/a/q;->f:Z

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Predefined event tracking "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/crashlytics/android/a/q;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v0, p1, Lio/fabric/sdk/android/services/e/b;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Event sampling enabled"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/crashlytics/android/a/v;

    iget v1, p1, Lio/fabric/sdk/android/services/e/b;->i:I

    invoke-direct {v0, v1}, Lcom/crashlytics/android/a/v;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/a/q;->d:Lcom/crashlytics/android/a/r;

    .line 84
    :cond_0
    iget v0, p1, Lio/fabric/sdk/android/services/e/b;->b:I

    iput v0, p0, Lcom/crashlytics/android/a/q;->g:I

    .line 86
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/crashlytics/android/a/q;->g:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/a/q;->a(JJ)V

    .line 87
    return-void

    .line 72
    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "disabled"

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/x;->f()V

    .line 191
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->k:Lcom/crashlytics/android/a/x;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/x;->d()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 198
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    const-string v1, "Failed to roll file over."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->j:Landroid/content/Context;

    const-string v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 184
    iget-object v0, p0, Lcom/crashlytics/android/a/q;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    :cond_0
    return-void
.end method
