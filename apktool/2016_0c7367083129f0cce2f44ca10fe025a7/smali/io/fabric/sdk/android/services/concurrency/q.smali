.class public final Lio/fabric/sdk/android/services/concurrency/q;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lio/fabric/sdk/android/services/concurrency/p;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/p;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/q;->a:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/q;->b:Lio/fabric/sdk/android/services/concurrency/p;

    .line 110
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/q;)Lio/fabric/sdk/android/services/concurrency/p;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/q;->b:Lio/fabric/sdk/android/services/concurrency/p;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/q;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/r;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/concurrency/r;-><init>(Lio/fabric/sdk/android/services/concurrency/q;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
