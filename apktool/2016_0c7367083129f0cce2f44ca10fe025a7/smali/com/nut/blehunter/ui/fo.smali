.class final Lcom/nut/blehunter/ui/fo;
.super Landroid/os/CountDownTimer;
.source "ScanDeviceActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 4

    .prologue
    .line 783
    iput-object p1, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    .prologue
    .line 798
    iget-object v0, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 800
    iget-object v0, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;I)V

    .line 801
    const-string v0, "NTBindEvent"

    const-string v1, "CONNECTION_FAILED"

    const-string v2, "TYPE"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 787
    iget-object v0, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 788
    iget-object v1, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 789
    iget-object v2, p0, Lcom/nut/blehunter/ui/fo;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v3, 0x7f06007d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-long v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    div-long v2, p1, v8

    const-wide/16 v4, 0x2d

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 792
    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 794
    :cond_0
    return-void
.end method
