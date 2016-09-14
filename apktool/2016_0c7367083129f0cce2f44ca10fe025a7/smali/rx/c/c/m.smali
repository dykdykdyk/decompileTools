.class public final Lrx/c/c/m;
.super Lrx/m;
.source "ExecutorScheduler.java"


# instance fields
.field final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lrx/m;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/c/c/m;->b:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method


# virtual methods
.method public final createWorker()Lrx/n;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lrx/c/c/n;

    iget-object v1, p0, Lrx/c/c/m;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lrx/c/c/n;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
