.class final Lcom/nut/blehunter/ui/k;
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
    .line 356
    iput-object p1, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->e(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->f(Lcom/nut/blehunter/ui/i;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->g(Lcom/nut/blehunter/ui/i;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->g(Lcom/nut/blehunter/ui/i;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/nut/blehunter/ui/k;->a:Lcom/nut/blehunter/ui/i;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/i;->c()V

    .line 365
    :cond_1
    return-void
.end method
