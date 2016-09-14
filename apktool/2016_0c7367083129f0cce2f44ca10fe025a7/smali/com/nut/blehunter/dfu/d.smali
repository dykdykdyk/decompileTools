.class final Lcom/nut/blehunter/dfu/d;
.super Landroid/os/CountDownTimer;
.source "DfuActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/dfu/DfuActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 4

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nut/blehunter/dfu/d;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    const-wide/32 v0, 0x15f90

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nut/blehunter/dfu/d;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->r(Lcom/nut/blehunter/dfu/DfuActivity;)Z

    .line 207
    iget-object v0, p0, Lcom/nut/blehunter/dfu/d;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->j(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/nut/blehunter/dfu/d;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->s(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 209
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
