.class Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;
.super Lrx/t;
.source "OperatorMapResponseToBodyOrError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<",
        "Lretrofit2/Response",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

.field final synthetic val$child:Lrx/t;


# direct methods
.method constructor <init>(Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->this$0:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    iput-object p3, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/t;

    invoke-direct {p0, p2}, Lrx/t;-><init>(Lrx/t;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->onCompleted()V

    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/t;

    invoke-virtual {v0, p1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/t;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;->val$child:Lrx/t;

    new-instance v1, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-virtual {v0, v1}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
