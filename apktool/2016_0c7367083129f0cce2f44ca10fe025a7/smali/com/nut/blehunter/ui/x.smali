.class final Lcom/nut/blehunter/ui/x;
.super Landroid/os/CountDownTimer;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;)V
    .locals 4

    .prologue
    .line 537
    iput-object p1, p0, Lcom/nut/blehunter/ui/x;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/nut/blehunter/ui/x;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 551
    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    return-void
.end method

.method public final onTick(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 541
    iget-object v0, p0, Lcom/nut/blehunter/ui/x;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 542
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    iget-object v1, p0, Lcom/nut/blehunter/ui/x;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    const v2, 0x7f060057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/BindPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 546
    return-void
.end method
