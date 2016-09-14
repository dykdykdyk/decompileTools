.class final Lbolts/i;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbolts/g;

.field final synthetic b:Lbolts/h;

.field final synthetic c:Lbolts/o;


# direct methods
.method constructor <init>(Lbolts/g;Lbolts/h;Lbolts/o;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lbolts/i;->a:Lbolts/g;

    iput-object p2, p0, Lbolts/i;->b:Lbolts/h;

    iput-object p3, p0, Lbolts/i;->c:Lbolts/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lbolts/i;->a:Lbolts/g;

    iget-object v1, p0, Lbolts/i;->b:Lbolts/h;

    invoke-interface {v0, v1}, Lbolts/g;->then(Lbolts/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/h;

    .line 487
    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lbolts/i;->c:Lbolts/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/o;->a(Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v1, Lbolts/j;

    invoke-direct {v1, p0}, Lbolts/j;-><init>(Lbolts/i;)V

    invoke-virtual {v0, v1}, Lbolts/h;->a(Lbolts/g;)Lbolts/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, Lbolts/i;->c:Lbolts/o;

    invoke-virtual {v1, v0}, Lbolts/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
