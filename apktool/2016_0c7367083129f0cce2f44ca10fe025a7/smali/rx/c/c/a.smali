.class public final Lrx/c/c/a;
.super Lrx/m;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/c/c/y;


# static fields
.field static final b:Lrx/c/c/g;

.field static final e:Lrx/c/c/b;

.field private static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field final c:Ljava/util/concurrent/ThreadFactory;

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/c/c/a;->f:Ljava/util/concurrent/TimeUnit;

    .line 32
    new-instance v0, Lrx/c/c/g;

    sget-object v1, Lrx/c/d/k;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/c/c/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    sput-object v0, Lrx/c/c/a;->b:Lrx/c/c/g;

    invoke-virtual {v0}, Lrx/c/c/g;->unsubscribe()V

    .line 139
    new-instance v0, Lrx/c/c/b;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lrx/c/c/b;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 140
    sput-object v0, Lrx/c/c/a;->e:Lrx/c/c/b;

    invoke-virtual {v0}, Lrx/c/c/b;->b()V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 5

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/m;-><init>()V

    .line 144
    iput-object p1, p0, Lrx/c/c/a;->c:Ljava/util/concurrent/ThreadFactory;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/c/c/a;->e:Lrx/c/c/b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1151
    new-instance v0, Lrx/c/c/b;

    iget-object v1, p0, Lrx/c/c/a;->c:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v2, 0x3c

    sget-object v4, Lrx/c/c/a;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/c/c/b;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 1153
    iget-object v1, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/a;->e:Lrx/c/c/b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1154
    invoke-virtual {v0}, Lrx/c/c/b;->b()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 160
    :cond_0
    iget-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/b;

    .line 161
    sget-object v1, Lrx/c/c/a;->e:Lrx/c/c/b;

    if-ne v0, v1, :cond_1

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/c/c/a;->e:Lrx/c/c/b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lrx/c/c/b;->b()V

    goto :goto_0
.end method

.method public final createWorker()Lrx/n;
    .locals 2

    .prologue
    .line 173
    new-instance v1, Lrx/c/c/e;

    iget-object v0, p0, Lrx/c/c/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/c/b;

    invoke-direct {v1, v0}, Lrx/c/c/e;-><init>(Lrx/c/c/b;)V

    return-object v1
.end method
