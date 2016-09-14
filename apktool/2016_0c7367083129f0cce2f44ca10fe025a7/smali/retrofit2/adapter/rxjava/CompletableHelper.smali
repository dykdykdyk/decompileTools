.class final Lretrofit2/adapter/rxjava/CompletableHelper;
.super Ljava/lang/Object;
.source "CompletableHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCallAdapter(Lrx/m;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/m;",
            ")",
            "Lretrofit2/CallAdapter",
            "<",
            "Lrx/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;

    invoke-direct {v0, p0}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallAdapter;-><init>(Lrx/m;)V

    return-object v0
.end method
