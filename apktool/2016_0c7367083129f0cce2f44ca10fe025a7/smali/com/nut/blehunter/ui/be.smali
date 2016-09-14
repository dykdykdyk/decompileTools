.class final Lcom/nut/blehunter/ui/be;
.super Landroid/os/CountDownTimer;
.source "InputPhoneNumberActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V
    .locals 4

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nut/blehunter/ui/be;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nut/blehunter/ui/be;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    const v1, 0x7f0d01cf

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public final onTick(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 173
    iget-object v0, p0, Lcom/nut/blehunter/ui/be;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    const v1, 0x7f0d01cf

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 174
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/nut/blehunter/ui/be;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    const v2, 0x7f060057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method
