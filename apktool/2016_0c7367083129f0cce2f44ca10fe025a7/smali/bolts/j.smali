.class final Lbolts/j;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/i;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lbolts/j;->a:Lbolts/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lbolts/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 490
    .line 1493
    invoke-virtual {p1}, Lbolts/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    iget-object v0, v0, Lbolts/i;->c:Lbolts/o;

    invoke-virtual {v0}, Lbolts/o;->a()V

    .line 1500
    :goto_0
    const/4 v0, 0x0

    .line 490
    return-object v0

    .line 1495
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    iget-object v0, v0, Lbolts/i;->c:Lbolts/o;

    invoke-virtual {p1}, Lbolts/h;->e()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/o;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1498
    :cond_1
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    iget-object v0, v0, Lbolts/i;->c:Lbolts/o;

    invoke-virtual {p1}, Lbolts/h;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/o;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
