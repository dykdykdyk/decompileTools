.class public abstract Lio/fabric/sdk/android/services/concurrency/p;
.super Lio/fabric/sdk/android/services/concurrency/a;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/l;
.implements Lio/fabric/sdk/android/services/concurrency/u;
.implements Lio/fabric/sdk/android/services/concurrency/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/a",
        "<TParams;TProgress;TResult;>;",
        "Lio/fabric/sdk/android/services/concurrency/l",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/y;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/u;",
        "Lio/fabric/sdk/android/services/concurrency/y;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/concurrency/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/a;-><init>()V

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/v;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/v;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 76
    .line 5101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 76
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/u;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lio/fabric/sdk/android/services/concurrency/y;)V
    .locals 2

    .prologue
    .line 58
    .line 1353
    iget v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->f:I

    .line 58
    sget v1, Lio/fabric/sdk/android/services/concurrency/j;->a:I

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 61
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/l;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/y;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/p;->a(Lio/fabric/sdk/android/services/concurrency/y;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 91
    .line 8101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 91
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/y;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/y;->a(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 81
    .line 6101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 81
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/y;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/y;->a(Z)V

    .line 82
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/o;->a(Lio/fabric/sdk/android/services/concurrency/u;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .line 3101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 66
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 71
    .line 4101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 71
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->g()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 86
    .line 7101
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Lio/fabric/sdk/android/services/concurrency/v;

    .line 86
    check-cast v0, Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/y;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/y;->h()Z

    move-result v0

    return v0
.end method
