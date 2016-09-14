.class public final Lrx/o;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static b:Lrx/e/i;


# instance fields
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v1

    .line 1184
    iget-object v0, v1, Lrx/e/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1186
    const-class v0, Lrx/e/i;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v0, v2}, Lrx/e/e;->a(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    if-nez v0, :cond_1

    .line 1189
    iget-object v0, v1, Lrx/e/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/e/j;->a()Lrx/e/i;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1196
    :cond_0
    :goto_0
    iget-object v0, v1, Lrx/e/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/i;

    .line 104
    sput-object v0, Lrx/o;->b:Lrx/e/i;

    return-void

    .line 1193
    :cond_1
    iget-object v2, v1, Lrx/e/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/e/i;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected constructor <init>(Lrx/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/r",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lrx/p;

    invoke-direct {v0, p0, p1}, Lrx/p;-><init>(Lrx/o;Lrx/r;)V

    iput-object v0, p0, Lrx/o;->a:Lrx/i;

    .line 98
    return-void
.end method
