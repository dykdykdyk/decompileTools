.class final Lcom/nut/blehunter/ble/c;
.super Ljava/lang/Object;
.source "AlertManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/a;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ble/a;IZ)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p1, Lcom/nut/blehunter/ble/a;->b:I

    .line 230
    iput-boolean p3, p0, Lcom/nut/blehunter/ble/c;->b:Z

    .line 231
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    iget v1, v0, Lcom/nut/blehunter/ble/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/nut/blehunter/ble/a;->b:I

    .line 236
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    iget v0, v0, Lcom/nut/blehunter/ble/a;->b:I

    if-gtz v0, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 238
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 239
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    invoke-static {v0}, Lcom/nut/blehunter/ble/a;->c(Lcom/nut/blehunter/ble/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->a()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->e()Z

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 245
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/c;->b:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/nut/blehunter/ble/c;->a:Lcom/nut/blehunter/ble/a;

    invoke-static {v0}, Lcom/nut/blehunter/ble/a;->d(Lcom/nut/blehunter/ble/a;)V

    goto :goto_0
.end method
