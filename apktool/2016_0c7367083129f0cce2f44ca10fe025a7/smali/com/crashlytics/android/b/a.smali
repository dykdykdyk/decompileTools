.class abstract Lcom/crashlytics/android/b/a;
.super Ljava/lang/Object;
.source "AbstractCheckForUpdatesController.java"

# interfaces
.implements Lcom/crashlytics/android/b/l;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Lcom/crashlytics/android/b/e;

.field private e:Lio/fabric/sdk/android/services/b/x;

.field private f:Lio/fabric/sdk/android/services/e/f;

.field private g:Lcom/crashlytics/android/b/f;

.field private h:Lio/fabric/sdk/android/services/d/c;

.field private i:Lio/fabric/sdk/android/services/b/q;

.field private j:Lio/fabric/sdk/android/services/network/l;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/b/a;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/b/a;->k:J

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v3, p0, Lcom/crashlytics/android/b/a;->h:Lio/fabric/sdk/android/services/d/c;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/b/a;->h:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "last_update_check"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/crashlytics/android/b/a;->h:Lio/fabric/sdk/android/services/d/c;

    iget-object v4, p0, Lcom/crashlytics/android/b/a;->h:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update_check"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v2, p0, Lcom/crashlytics/android/b/a;->i:Lio/fabric/sdk/android/services/b/q;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/b/q;->a()J

    move-result-wide v10

    .line 125
    iget-object v2, p0, Lcom/crashlytics/android/b/a;->f:Lio/fabric/sdk/android/services/e/f;

    iget v2, v2, Lio/fabric/sdk/android/services/e/f;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v4

    const-string v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Check for updates delay: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v4

    const-string v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Check for updates last check time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    iget-wide v8, p0, Lcom/crashlytics/android/b/a;->k:J

    .line 129
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-wide v4, p0, Lcom/crashlytics/android/b/a;->k:J

    .line 132
    add-long/2addr v2, v4

    .line 134
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v4

    const-string v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Check for updates current time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", next check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    cmp-long v2, v10, v2

    if-ltz v2, :cond_1

    .line 3149
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Performing update check"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    new-instance v2, Lio/fabric/sdk/android/services/b/j;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/b/j;-><init>()V

    iget-object v2, p0, Lcom/crashlytics/android/b/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3152
    iget-object v2, p0, Lcom/crashlytics/android/b/a;->e:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/b/x;->d()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lio/fabric/sdk/android/services/b/y;->c:Lio/fabric/sdk/android/services/b/y;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 3155
    new-instance v2, Lcom/crashlytics/android/b/g;

    iget-object v3, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/e;

    iget-object v4, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/e;

    .line 4116
    iget-object v4, v4, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 3197
    const-string v5, "com.crashlytics.ApiEndpoint"

    invoke-static {v4, v5}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3155
    iget-object v5, p0, Lcom/crashlytics/android/b/a;->f:Lio/fabric/sdk/android/services/e/f;

    iget-object v5, v5, Lio/fabric/sdk/android/services/e/f;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/b/a;->j:Lio/fabric/sdk/android/services/network/l;

    new-instance v7, Lcom/crashlytics/android/b/i;

    invoke-direct {v7}, Lcom/crashlytics/android/b/i;-><init>()V

    invoke-direct/range {v2 .. v7}, Lcom/crashlytics/android/b/g;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;Lcom/crashlytics/android/b/i;)V

    .line 3166
    iget-object v3, p0, Lcom/crashlytics/android/b/a;->g:Lcom/crashlytics/android/b/f;

    invoke-virtual {v2, v9, v8, v3}, Lcom/crashlytics/android/b/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/b/f;)Lcom/crashlytics/android/b/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4173
    iput-wide v10, p0, Lcom/crashlytics/android/b/a;->k:J

    .line 146
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 141
    :catchall_1
    move-exception v2

    .line 5173
    iput-wide v10, p0, Lcom/crashlytics/android/b/a;->k:J

    .line 141
    throw v2

    .line 144
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Check for updates next check time was not passed"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/crashlytics/android/b/e;Lio/fabric/sdk/android/services/b/x;Lio/fabric/sdk/android/services/e/f;Lcom/crashlytics/android/b/f;Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/network/l;)V
    .locals 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/crashlytics/android/b/a;->c:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/crashlytics/android/b/a;->d:Lcom/crashlytics/android/b/e;

    .line 83
    iput-object p3, p0, Lcom/crashlytics/android/b/a;->e:Lio/fabric/sdk/android/services/b/x;

    .line 84
    iput-object p4, p0, Lcom/crashlytics/android/b/a;->f:Lio/fabric/sdk/android/services/e/f;

    .line 85
    iput-object p5, p0, Lcom/crashlytics/android/b/a;->g:Lcom/crashlytics/android/b/f;

    .line 86
    iput-object p6, p0, Lcom/crashlytics/android/b/a;->h:Lio/fabric/sdk/android/services/d/c;

    .line 87
    iput-object p7, p0, Lcom/crashlytics/android/b/a;->i:Lio/fabric/sdk/android/services/b/q;

    .line 88
    iput-object p8, p0, Lcom/crashlytics/android/b/a;->j:Lio/fabric/sdk/android/services/network/l;

    .line 1110
    iget-object v0, p0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1111
    iget-object v0, p0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/crashlytics/android/b/a;->a()V

    .line 93
    :cond_0
    return-void
.end method
