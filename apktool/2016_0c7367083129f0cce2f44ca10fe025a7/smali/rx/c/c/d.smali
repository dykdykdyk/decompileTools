.class final Lrx/c/c/d;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lrx/c/c/b;


# direct methods
.method constructor <init>(Lrx/c/c/b;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lrx/c/c/d;->a:Lrx/c/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 65
    iget-object v1, p0, Lrx/c/c/d;->a:Lrx/c/c/b;

    .line 1099
    iget-object v0, v1, Lrx/c/c/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1102
    iget-object v0, v1, Lrx/c/c/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/g;

    .line 1238
    iget-wide v6, v0, Lrx/c/c/g;->a:J

    .line 1103
    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    .line 1104
    iget-object v5, v1, Lrx/c/c/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1105
    iget-object v5, v1, Lrx/c/c/b;->c:Lrx/f/c;

    invoke-virtual {v5, v0}, Lrx/f/c;->b(Lrx/u;)V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method
