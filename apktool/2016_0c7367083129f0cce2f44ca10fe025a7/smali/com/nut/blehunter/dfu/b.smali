.class final Lcom/nut/blehunter/dfu/b;
.super Lno/nordicsemi/android/dfu/DfuProgressListenerAdapter;
.source "DfuActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/dfu/DfuActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/dfu/DfuActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuProgressListenerAdapter;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->m(Lcom/nut/blehunter/dfu/DfuActivity;)Z

    .line 178
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->n(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->o(Lcom/nut/blehunter/dfu/DfuActivity;)V

    .line 180
    return-void
.end method


# virtual methods
.method public final onDeviceConnecting(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onDeviceDisconnecting(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final onDfuAborted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final onDfuCompleted(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nut/blehunter/dfu/c;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/dfu/c;-><init>(Lcom/nut/blehunter/dfu/b;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method public final onDfuProcessStarting(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final onEnablingDfuMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final onError(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    const-string v0, "upload error error code %s error type %s message %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->p(Lcom/nut/blehunter/dfu/DfuActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1006

    if-eq p2, v0, :cond_0

    const/16 v0, 0x85

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x81

    if-ne p2, v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->q(Lcom/nut/blehunter/dfu/DfuActivity;)I

    .line 191
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c()V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/b;->a()V

    .line 194
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->c(Lcom/nut/blehunter/dfu/DfuActivity;)V

    goto :goto_0
.end method

.method public final onFirmwareValidating(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onProgressChanged(Ljava/lang/String;IFFII)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->a(Lcom/nut/blehunter/dfu/DfuActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/nut/blehunter/dfu/b;->a()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->j(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->h(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    iget-object v0, p0, Lcom/nut/blehunter/dfu/b;->a:Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-static {v0}, Lcom/nut/blehunter/dfu/DfuActivity;->i(Lcom/nut/blehunter/dfu/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method
