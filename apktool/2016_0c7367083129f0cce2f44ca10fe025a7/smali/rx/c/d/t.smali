.class final Lrx/c/d/t;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/a;
.implements Lrx/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/b/a;",
        "Lrx/l;"
    }
.end annotation


# instance fields
.field final a:Lrx/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/t",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final c:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f",
            "<",
            "Lrx/b/a;",
            "Lrx/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/t;Ljava/lang/Object;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TT;>;TT;",
            "Lrx/b/f",
            "<",
            "Lrx/b/a;",
            "Lrx/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 185
    iput-object p1, p0, Lrx/c/d/t;->a:Lrx/t;

    .line 186
    iput-object p2, p0, Lrx/c/d/t;->b:Ljava/lang/Object;

    .line 187
    iput-object p3, p0, Lrx/c/d/t;->c:Lrx/b/f;

    .line 188
    return-void
.end method


# virtual methods
.method public final call()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lrx/c/d/t;->a:Lrx/t;

    .line 203
    invoke-virtual {v0}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lrx/c/d/t;->b:Ljava/lang/Object;

    .line 208
    :try_start_0
    invoke-virtual {v0, v1}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    invoke-virtual {v0}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    invoke-static {v2, v0, v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/k;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final request(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 192
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/d/t;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lrx/c/d/t;->a:Lrx/t;

    iget-object v0, p0, Lrx/c/d/t;->c:Lrx/b/f;

    invoke-interface {v0, p0}, Lrx/b/f;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/u;

    invoke-virtual {v1, v0}, Lrx/t;->add(Lrx/u;)V

    .line 198
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScalarAsyncProducer["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lrx/c/d/t;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrx/c/d/t;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
