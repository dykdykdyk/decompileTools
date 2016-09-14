.class public final Lio/fabric/sdk/android/n;
.super Lio/fabric/sdk/android/services/concurrency/p;
.source "InitializationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/p",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final a:Lio/fabric/sdk/android/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/o",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/o",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/p;-><init>()V

    .line 34
    iput-object p1, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/ai;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lio/fabric/sdk/android/services/b/ai;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    invoke-virtual {v2}, Lio/fabric/sdk/android/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/ai;->a()V

    .line 94
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lio/fabric/sdk/android/services/concurrency/o;->c:I

    return v0
.end method

.method protected final b()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/p;->b()V

    .line 41
    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/n;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/ai;

    move-result-object v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    invoke-virtual {v0}, Lio/fabric/sdk/android/o;->b_()Z
    :try_end_0
    .catch Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 51
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/ai;->b()V

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->i_()Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/ai;->b()V

    .line 53
    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->i_()Z

    throw v0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failure onPreExecute()"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/ai;->b()V

    .line 53
    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->i_()Z

    goto :goto_0
.end method

.method protected final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    iget-object v0, v0, Lio/fabric/sdk/android/o;->s:Lio/fabric/sdk/android/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/l;->a()V

    .line 74
    return-void
.end method

.method protected final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    invoke-virtual {v1}, Lio/fabric/sdk/android/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Lio/fabric/sdk/android/InitializationException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/InitializationException;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    iget-object v0, v0, Lio/fabric/sdk/android/o;->s:Lio/fabric/sdk/android/l;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/l;->a(Ljava/lang/Exception;)V

    .line 83
    return-void
.end method

.method protected final synthetic e()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    .line 1060
    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/n;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/ai;

    move-result-object v1

    .line 1061
    const/4 v0, 0x0

    .line 1457
    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1062
    if-nez v2, :cond_0

    .line 1063
    iget-object v0, p0, Lio/fabric/sdk/android/n;->a:Lio/fabric/sdk/android/o;

    invoke-virtual {v0}, Lio/fabric/sdk/android/o;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1066
    :cond_0
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/ai;->b()V

    .line 28
    return-object v0
.end method
