.class public final Lbolts/m;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g",
        "<TTResult;",
        "Lbolts/h",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/g;

.field final synthetic b:Lbolts/h;


# direct methods
.method public constructor <init>(Lbolts/h;Lbolts/g;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lbolts/m;->b:Lbolts/h;

    iput-object p2, p0, Lbolts/m;->a:Lbolts/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lbolts/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    .line 1381
    invoke-virtual {p1}, Lbolts/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p1}, Lbolts/h;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/h;->a(Ljava/lang/Exception;)Lbolts/h;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    .line 1383
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-static {}, Lbolts/h;->f()Lbolts/h;

    move-result-object v0

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v0, p0, Lbolts/m;->a:Lbolts/g;

    invoke-virtual {p1, v0}, Lbolts/h;->a(Lbolts/g;)Lbolts/h;

    move-result-object v0

    goto :goto_0
.end method
