.class final Lrx/a/b/b;
.super Lrx/m;
.source "LooperScheduler.java"


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lrx/m;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lrx/a/b/b;->b:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public final createWorker()Lrx/n;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lrx/a/b/c;

    iget-object v1, p0, Lrx/a/b/b;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/a/b/c;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
