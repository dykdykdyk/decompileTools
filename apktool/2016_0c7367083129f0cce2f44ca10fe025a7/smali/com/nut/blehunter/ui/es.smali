.class final Lcom/nut/blehunter/ui/es;
.super Landroid/os/CountDownTimer;
.source "RegisterActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 4

    .prologue
    .line 465
    iput-object p1, p0, Lcom/nut/blehunter/ui/es;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/nut/blehunter/ui/es;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 475
    iget-object v0, p0, Lcom/nut/blehunter/ui/es;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 476
    return-void
.end method

.method public final onTick(J)V
    .locals 9

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nut/blehunter/ui/es;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/es;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v2, 0x7f060057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method
