.class public final Lrx/d/a;
.super Lrx/t;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lrx/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/t",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lrx/t;-><init>(Lrx/t;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a;->a:Z

    .line 71
    iput-object p1, p0, Lrx/d/a;->b:Lrx/t;

    .line 72
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lrx/d/a;->a:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a;->a:Z

    .line 84
    :try_start_0
    iget-object v0, p0, Lrx/d/a;->b:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lrx/d/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    invoke-static {}, Lrx/c/d/g;->a()V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_1
    move-exception v0

    .line 88
    :try_start_2
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 89
    invoke-static {}, Lrx/c/d/g;->a()V

    .line 90
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    .line 95
    :try_start_3
    invoke-virtual {p0}, Lrx/d/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    throw v0

    .line 97
    :catch_2
    move-exception v0

    invoke-static {}, Lrx/c/d/g;->a()V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    invoke-static {p1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 118
    iget-boolean v0, p0, Lrx/d/a;->a:Z

    if-nez v0, :cond_0

    .line 119
    iput-boolean v7, p0, Lrx/d/a;->a:Z

    .line 1155
    invoke-static {}, Lrx/c/d/g;->a()V

    .line 1157
    :try_start_0
    iget-object v0, p0, Lrx/d/a;->b:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :try_start_1
    invoke-virtual {p0}, Lrx/d/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1201
    :cond_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_1

    .line 1172
    :try_start_2
    invoke-virtual {p0}, Lrx/d/a;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1177
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0

    .line 1174
    :catch_1
    move-exception v0

    invoke-static {}, Lrx/c/d/g;->a()V

    .line 1175
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1184
    :cond_1
    invoke-static {}, Lrx/c/d/g;->a()V

    .line 1186
    :try_start_3
    invoke-virtual {p0}, Lrx/d/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1192
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1188
    :catch_2
    move-exception v1

    invoke-static {}, Lrx/c/d/g;->a()V

    .line 1189
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1199
    :catch_3
    move-exception v0

    invoke-static {}, Lrx/c/d/g;->a()V

    .line 1200
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-boolean v0, p0, Lrx/d/a;->a:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lrx/d/a;->b:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;Lrx/k;)V

    goto :goto_0
.end method
