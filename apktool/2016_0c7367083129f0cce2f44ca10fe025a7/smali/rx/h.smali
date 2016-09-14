.class public Lrx/h;
.super Ljava/lang/Object;
.source "Observable.java"


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
.field static final b:Lrx/e/c;


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
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->c()Lrx/e/c;

    move-result-object v0

    sput-object v0, Lrx/h;->b:Lrx/e/c;

    return-void
.end method

.method public constructor <init>(Lrx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/h;->a:Lrx/i;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1583
    invoke-static {p0}, Lrx/c/d/m;->b(Ljava/lang/Object;)Lrx/c/d/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<TT;>;)",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lrx/h;

    invoke-static {p0}, Lrx/e/c;->a(Lrx/i;)Lrx/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/h;-><init>(Lrx/i;)V

    return-object v0
.end method

.method public static a(Lrx/t;Lrx/h;)Lrx/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/t",
            "<-TT;>;",
            "Lrx/h",
            "<TT;>;)",
            "Lrx/u;"
        }
    .end annotation

    .prologue
    .line 8731
    if-nez p0, :cond_0

    .line 8732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8734
    :cond_0
    iget-object v0, p1, Lrx/h;->a:Lrx/i;

    if-nez v0, :cond_1

    .line 8735
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8743
    :cond_1
    invoke-virtual {p0}, Lrx/t;->onStart()V

    .line 8750
    instance-of v0, p0, Lrx/d/a;

    if-nez v0, :cond_2

    .line 8752
    new-instance v0, Lrx/d/a;

    invoke-direct {v0, p0}, Lrx/d/a;-><init>(Lrx/t;)V

    move-object p0, v0

    .line 8759
    :cond_2
    :try_start_0
    iget-object v0, p1, Lrx/h;->a:Lrx/i;

    invoke-static {v0}, Lrx/e/c;->b(Lrx/i;)Lrx/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/i;->call(Ljava/lang/Object;)V

    .line 8760
    invoke-static {p0}, Lrx/e/c;->a(Lrx/u;)Lrx/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8782
    :goto_0
    return-object v0

    .line 8761
    :catch_0
    move-exception v0

    .line 8763
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 8765
    invoke-virtual {p0}, Lrx/t;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8766
    invoke-static {}, Lrx/c/d/g;->a()V

    .line 8782
    :goto_1
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    goto :goto_0

    .line 8770
    :cond_3
    :try_start_1
    invoke-static {v0}, Lrx/e/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 8771
    :catch_1
    move-exception v1

    .line 8772
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 8775
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8779
    throw v2
.end method

.method public static b()Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1266
    invoke-static {}, Lrx/c/a/b;->a()Lrx/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lrx/b/f;)Lrx/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+",
            "Lrx/h",
            "<+TR;>;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5675
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/c/d/m;

    if-ne v0, v1, :cond_0

    .line 5676
    check-cast p0, Lrx/c/d/m;

    invoke-virtual {p0, p1}, Lrx/c/d/m;->c(Lrx/b/f;)Lrx/h;

    move-result-object v0

    .line 9945
    :goto_0
    return-object v0

    .line 5678
    :cond_0
    invoke-virtual {p0, p1}, Lrx/h;->b(Lrx/b/f;)Lrx/h;

    move-result-object v0

    .line 9944
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/c/d/m;

    if-ne v1, v2, :cond_1

    .line 9945
    check-cast v0, Lrx/c/d/m;

    invoke-static {}, Lrx/c/d/x;->a()Lrx/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c/d/m;->c(Lrx/b/f;)Lrx/h;

    move-result-object v0

    goto :goto_0

    .line 10076
    :cond_1
    sget-object v1, Lrx/c/a/n;->a:Lrx/c/a/m;

    .line 9947
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/j;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/j;)Lrx/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<+TR;-TT;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lrx/h;

    new-instance v1, Lrx/c/a/f;

    iget-object v2, p0, Lrx/h;->a:Lrx/i;

    invoke-direct {v1, v2, p1}, Lrx/c/a/f;-><init>(Lrx/i;Lrx/j;)V

    invoke-direct {v0, v1}, Lrx/h;-><init>(Lrx/i;)V

    return-object v0
.end method

.method public final a(Lrx/m;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/m;",
            ")",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6394
    sget v0, Lrx/c/d/h;->d:I

    .line 10483
    instance-of v1, p0, Lrx/c/d/m;

    if-eqz v1, :cond_0

    .line 10484
    check-cast p0, Lrx/c/d/m;

    invoke-virtual {p0, p1}, Lrx/c/d/m;->c(Lrx/m;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10486
    :cond_0
    new-instance v1, Lrx/c/a/r;

    invoke-direct {v1, p1, v0}, Lrx/c/a/r;-><init>(Lrx/m;I)V

    invoke-virtual {p0, v1}, Lrx/h;->a(Lrx/j;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lrx/o;

    .line 9088
    new-instance v1, Lrx/c/a/g;

    invoke-direct {v1, p0}, Lrx/c/a/g;-><init>(Lrx/h;)V

    .line 296
    invoke-direct {v0, v1}, Lrx/o;-><init>(Lrx/r;)V

    return-object v0
.end method

.method public final a(Lrx/k;)Lrx/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)",
            "Lrx/u;"
        }
    .end annotation

    .prologue
    .line 8637
    instance-of v0, p1, Lrx/t;

    if-eqz v0, :cond_0

    .line 8638
    check-cast p1, Lrx/t;

    .line 10726
    invoke-static {p1, p0}, Lrx/h;->a(Lrx/t;Lrx/h;)Lrx/u;

    move-result-object v0

    .line 8640
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/d/d;

    invoke-direct {v0, p1}, Lrx/c/d/d;-><init>(Lrx/k;)V

    .line 11726
    invoke-static {v0, p0}, Lrx/h;->a(Lrx/t;Lrx/h;)Lrx/u;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/t;)Lrx/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<-TT;>;)",
            "Lrx/u;"
        }
    .end annotation

    .prologue
    .line 8664
    :try_start_0
    invoke-virtual {p1}, Lrx/t;->onStart()V

    .line 8666
    iget-object v0, p0, Lrx/h;->a:Lrx/i;

    invoke-static {v0}, Lrx/e/c;->b(Lrx/i;)Lrx/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/i;->call(Ljava/lang/Object;)V

    .line 8667
    invoke-static {p1}, Lrx/e/c;->a(Lrx/u;)Lrx/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8684
    :goto_0
    return-object v0

    .line 8668
    :catch_0
    move-exception v0

    .line 8670
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 8673
    :try_start_1
    invoke-static {v0}, Lrx/e/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8684
    invoke-static {}, Lrx/f/f;->b()Lrx/u;

    move-result-object v0

    goto :goto_0

    .line 8674
    :catch_1
    move-exception v1

    .line 8675
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 8678
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8682
    throw v2
.end method

.method public final b(Lrx/b/f;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f",
            "<-TT;+TR;>;)",
            "Lrx/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6323
    new-instance v0, Lrx/c/a/k;

    invoke-direct {v0, p1}, Lrx/c/a/k;-><init>(Lrx/b/f;)V

    invoke-virtual {p0, v0}, Lrx/h;->a(Lrx/j;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/m;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/m;",
            ")",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8804
    instance-of v0, p0, Lrx/c/d/m;

    if-eqz v0, :cond_0

    .line 8805
    check-cast p0, Lrx/c/d/m;

    invoke-virtual {p0, p1}, Lrx/c/d/m;->c(Lrx/m;)Lrx/h;

    move-result-object v0

    .line 8807
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/a/y;

    invoke-direct {v0, p0, p1}, Lrx/c/a/y;-><init>(Lrx/h;Lrx/m;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
