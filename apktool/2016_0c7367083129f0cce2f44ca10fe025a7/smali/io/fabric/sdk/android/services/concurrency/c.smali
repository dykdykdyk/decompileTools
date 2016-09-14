.class final Lio/fabric/sdk/android/services/concurrency/c;
.super Lio/fabric/sdk/android/services/concurrency/k;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/k",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/concurrency/a;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/a;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/c;->a:Lio/fabric/sdk/android/services/concurrency/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/c;->a:Lio/fabric/sdk/android/services/concurrency/a;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/a;->a(Lio/fabric/sdk/android/services/concurrency/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 311
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/c;->a:Lio/fabric/sdk/android/services/concurrency/a;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/c;->a:Lio/fabric/sdk/android/services/concurrency/a;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/a;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/concurrency/a;->a(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
