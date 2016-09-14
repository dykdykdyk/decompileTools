.class final Lcom/nut/blehunter/ui/ej;
.super Landroid/os/CountDownTimer;
.source "NutSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutSettingActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 4

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nut/blehunter/ui/ej;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/ej;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/ui/ej;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ej;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    const v2, 0x7f0601a3

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
