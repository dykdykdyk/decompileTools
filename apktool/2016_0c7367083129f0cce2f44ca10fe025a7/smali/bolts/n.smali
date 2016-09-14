.class final Lbolts/n;
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
    .line 449
    iput-object p1, p0, Lbolts/n;->a:Lbolts/g;

    iput-object p2, p0, Lbolts/n;->b:Lbolts/h;

    iput-object p3, p0, Lbolts/n;->c:Lbolts/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lbolts/n;->a:Lbolts/g;

    iget-object v1, p0, Lbolts/n;->b:Lbolts/h;

    invoke-interface {v0, v1}, Lbolts/g;->then(Lbolts/h;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lbolts/n;->c:Lbolts/o;

    invoke-virtual {v1, v0}, Lbolts/o;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    iget-object v1, p0, Lbolts/n;->c:Lbolts/o;

    invoke-virtual {v1, v0}, Lbolts/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
