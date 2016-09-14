.class final Lcom/nut/blehunter/dfu/a;
.super Landroid/os/CountDownTimer;
.source "DfuActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/dfu/DfuActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 4

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nut/blehunter/dfu/a;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nut/blehunter/dfu/a;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->a(Lcom/nut/blehunter/dfu/DfuActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/dfu/a;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->b(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/dfu/a;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
