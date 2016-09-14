.class final Lrx/c/c/ab;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/c/c/ac;

.field final synthetic b:Lrx/c/c/aa;


# direct methods
.method constructor <init>(Lrx/c/c/aa;Lrx/c/c/ac;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lrx/c/c/ab;->b:Lrx/c/c/aa;

    iput-object p2, p0, Lrx/c/c/ab;->a:Lrx/c/c/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lrx/c/c/ab;->b:Lrx/c/c/aa;

    iget-object v0, v0, Lrx/c/c/aa;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lrx/c/c/ab;->a:Lrx/c/c/ac;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
