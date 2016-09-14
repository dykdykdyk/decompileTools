.class public final Lrx/c/d/m;
.super Lrx/h;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h",
        "<TT;>;"
    }
.end annotation


# static fields
.field static c:Lrx/e/c;

.field static final d:Z


# instance fields
.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->c()Lrx/e/c;

    move-result-object v0

    sput-object v0, Lrx/c/d/m;->c:Lrx/e/c;

    .line 52
    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/c/d/m;->d:Z

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lrx/c/d/r;

    invoke-direct {v0, p1}, Lrx/c/d/r;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/e/c;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/h;-><init>(Lrx/i;)V

    .line 85
    iput-object p1, p0, Lrx/c/d/m;->e:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method static a(Lrx/t;Ljava/lang/Object;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/t",
            "<-TT;>;TT;)",
            "Lrx/l;"
        }
    .end annotation

    .prologue
    .line 64
    sget-boolean v0, Lrx/c/d/m;->d:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lrx/c/b/d;

    invoke-direct {v0, p0, p1}, Lrx/c/b/d;-><init>(Lrx/t;Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/d/u;

    invoke-direct {v0, p0, p1}, Lrx/c/d/u;-><init>(Lrx/t;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lrx/c/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/c/d/m",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lrx/c/d/m;

    invoke-direct {v0, p0}, Lrx/c/d/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lrx/b/f;)Lrx/h;
    .locals 1
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
    .line 236
    new-instance v0, Lrx/c/d/q;

    invoke-direct {v0, p0, p1}, Lrx/c/d/q;-><init>(Lrx/c/d/m;Lrx/b/f;)V

    invoke-static {v0}, Lrx/c/d/m;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/m;)Lrx/h;
    .locals 3
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
    .line 105
    instance-of v0, p1, Lrx/c/c/h;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lrx/c/c/h;

    .line 107
    new-instance v0, Lrx/c/d/n;

    invoke-direct {v0, p0, p1}, Lrx/c/d/n;-><init>(Lrx/c/d/m;Lrx/c/c/h;)V

    .line 133
    :goto_0
    new-instance v1, Lrx/c/d/s;

    iget-object v2, p0, Lrx/c/d/m;->e:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lrx/c/d/s;-><init>(Ljava/lang/Object;Lrx/b/f;)V

    invoke-static {v1}, Lrx/c/d/m;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lrx/c/d/o;

    invoke-direct {v0, p0, p1}, Lrx/c/d/o;-><init>(Lrx/c/d/m;Lrx/m;)V

    goto :goto_0
.end method
