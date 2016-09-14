.class final Lcom/nut/blehunter/ui/cy;
.super Landroid/os/CountDownTimer;
.source "MapLocationActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V
    .locals 4

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nut/blehunter/ui/cy;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/cy;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 134
    iget-object v0, p0, Lcom/nut/blehunter/ui/cy;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cy;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->d(Lcom/nut/blehunter/ui/MapLocationActivity;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
