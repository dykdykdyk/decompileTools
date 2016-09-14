.class final Lrx/c/d/u;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field c:Z


# direct methods
.method public constructor <init>(Lrx/t;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lrx/c/d/u;->a:Lrx/t;

    .line 263
    iput-object p2, p0, Lrx/c/d/u;->b:Ljava/lang/Object;

    .line 264
    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lrx/c/d/u;->c:Z

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n >= required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/d/u;->c:Z

    .line 278
    iget-object v0, p0, Lrx/c/d/u;->a:Lrx/t;

    .line 279
    invoke-virtual {v0}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lrx/c/d/u;->b:Ljava/lang/Object;

    .line 284
    :try_start_0
    invoke-virtual {v0, v1}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    invoke-virtual {v0}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    invoke-static {v2, v0, v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/k;Ljava/lang/Object;)V

    goto :goto_0
.end method
