.class public final Lrx/c/a/r;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/m;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/m;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/c/a/r;->a:Lrx/m;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/c/a/r;->b:Z

    .line 62
    if-lez p2, :cond_0

    :goto_0
    iput p2, p0, Lrx/c/a/r;->c:I

    .line 63
    return-void

    .line 62
    :cond_0
    sget p2, Lrx/c/d/h;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lrx/t;

    .line 1067
    iget-object v0, p0, Lrx/c/a/r;->a:Lrx/m;

    instance-of v0, v0, Lrx/c/c/p;

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-object p1

    .line 1070
    :cond_1
    iget-object v0, p0, Lrx/c/a/r;->a:Lrx/m;

    instance-of v0, v0, Lrx/c/c/z;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Lrx/c/a/s;

    iget-object v1, p0, Lrx/c/a/r;->a:Lrx/m;

    iget-boolean v2, p0, Lrx/c/a/r;->b:Z

    iget v3, p0, Lrx/c/a/r;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/c/a/s;-><init>(Lrx/m;Lrx/t;ZI)V

    .line 1139
    iget-object v1, v0, Lrx/c/a/s;->a:Lrx/t;

    .line 1141
    new-instance v2, Lrx/c/a/t;

    invoke-direct {v2, v0}, Lrx/c/a/t;-><init>(Lrx/c/a/s;)V

    invoke-virtual {v1, v2}, Lrx/t;->setProducer(Lrx/l;)V

    .line 1152
    iget-object v2, v0, Lrx/c/a/s;->b:Lrx/n;

    invoke-virtual {v1, v2}, Lrx/t;->add(Lrx/u;)V

    .line 1153
    invoke-virtual {v1, v0}, Lrx/t;->add(Lrx/u;)V

    move-object p1, v0

    .line 40
    goto :goto_0
.end method
