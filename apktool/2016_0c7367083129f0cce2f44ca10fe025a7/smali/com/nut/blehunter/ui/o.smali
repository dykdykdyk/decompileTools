.class final Lcom/nut/blehunter/ui/o;
.super Landroid/os/CountDownTimer;
.source "BindDeviceActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/BindDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindDeviceActivity;)V
    .locals 4

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nut/blehunter/ui/o;->a:Lcom/nut/blehunter/ui/BindDeviceActivity;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nut/blehunter/ui/o;->a:Lcom/nut/blehunter/ui/BindDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/o;->a:Lcom/nut/blehunter/ui/BindDeviceActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/o;->a:Lcom/nut/blehunter/ui/BindDeviceActivity;

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 86
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
