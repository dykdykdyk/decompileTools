.class final Lio/fabric/sdk/android/services/concurrency/r;
.super Lio/fabric/sdk/android/services/concurrency/t;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/t",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/concurrency/q;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/q;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/r;->a:Lio/fabric/sdk/android/services/concurrency/q;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/fabric/sdk/android/services/concurrency/t;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()Lio/fabric/sdk/android/services/concurrency/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/l",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/y;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/u;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/y;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/r;->a:Lio/fabric/sdk/android/services/concurrency/q;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/q;->a(Lio/fabric/sdk/android/services/concurrency/q;)Lio/fabric/sdk/android/services/concurrency/p;

    move-result-object v0

    return-object v0
.end method
