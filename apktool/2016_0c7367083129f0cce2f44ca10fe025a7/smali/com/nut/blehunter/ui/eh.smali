.class final Lcom/nut/blehunter/ui/eh;
.super Landroid/os/CountDownTimer;
.source "NutDetailActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;J)V
    .locals 2

    .prologue
    .line 589
    iput-object p1, p0, Lcom/nut/blehunter/ui/eh;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nut/blehunter/ui/eh;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->d(Lcom/nut/blehunter/ui/NutDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/nut/blehunter/ui/eh;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->k(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    .line 600
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 593
    return-void
.end method
