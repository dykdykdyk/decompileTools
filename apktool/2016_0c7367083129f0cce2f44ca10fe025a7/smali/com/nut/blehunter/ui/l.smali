.class final Lcom/nut/blehunter/ui/l;
.super Ljava/lang/Object;
.source "BaseSetRegionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/i;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/i;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/nut/blehunter/ui/l;->a:Lcom/nut/blehunter/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/nut/blehunter/ui/l;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->f(Lcom/nut/blehunter/ui/i;)V

    .line 385
    iget-object v0, p0, Lcom/nut/blehunter/ui/l;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->g(Lcom/nut/blehunter/ui/i;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/l;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->g(Lcom/nut/blehunter/ui/i;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/nut/blehunter/ui/l;->a:Lcom/nut/blehunter/ui/i;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/i;->c()V

    .line 388
    :cond_0
    return-void
.end method
