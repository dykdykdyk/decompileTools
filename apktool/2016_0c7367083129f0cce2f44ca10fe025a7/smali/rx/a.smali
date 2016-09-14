.class public final Lrx/a;
.super Ljava/lang/Object;
.source "Completable.java"


# static fields
.field static final a:Lrx/e/b;

.field static b:Lrx/e/a;

.field static final c:Lrx/a;

.field static final d:Lrx/a;


# instance fields
.field final e:Lrx/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->b()Lrx/e/b;

    move-result-object v0

    sput-object v0, Lrx/a;->a:Lrx/e/b;

    .line 45
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v1

    .line 1228
    iget-object v0, v1, Lrx/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1230
    const-class v0, Lrx/e/a;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v0, v2}, Lrx/e/e;->a(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 1231
    if-nez v0, :cond_1

    .line 1233
    iget-object v0, v1, Lrx/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lrx/e/g;

    invoke-direct {v2, v1}, Lrx/e/g;-><init>(Lrx/e/e;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1240
    :cond_0
    :goto_0
    iget-object v0, v1, Lrx/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/a;

    .line 45
    sput-object v0, Lrx/a;->b:Lrx/e/a;

    .line 94
    new-instance v0, Lrx/b;

    invoke-direct {v0}, Lrx/b;-><init>()V

    invoke-static {v0}, Lrx/a;->a(Lrx/f;)Lrx/a;

    move-result-object v0

    sput-object v0, Lrx/a;->c:Lrx/a;

    .line 103
    new-instance v0, Lrx/c;

    invoke-direct {v0}, Lrx/c;-><init>()V

    invoke-static {v0}, Lrx/a;->a(Lrx/f;)Lrx/a;

    move-result-object v0

    sput-object v0, Lrx/a;->d:Lrx/a;

    return-void

    .line 1237
    :cond_1
    iget-object v2, v1, Lrx/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/e/a;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>(Lrx/f;)V
    .locals 1

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    invoke-static {p1}, Lrx/e/a;->a(Lrx/f;)Lrx/f;

    move-result-object v0

    iput-object v0, p0, Lrx/a;->e:Lrx/f;

    .line 980
    return-void
.end method

.method static a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .prologue
    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 807
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 750
    if-nez p0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 753
    :cond_0
    return-object p0
.end method

.method public static a(Lrx/f;)Lrx/a;
    .locals 1

    .prologue
    .line 383
    invoke-static {p0}, Lrx/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :try_start_0
    new-instance v0, Lrx/a;

    invoke-direct {v0, p0}, Lrx/a;-><init>(Lrx/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 387
    :catch_0
    move-exception v0

    throw v0

    .line 390
    :catch_1
    move-exception v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method
