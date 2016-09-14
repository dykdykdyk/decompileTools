.class final Lcom/nut/blehunter/ble/b;
.super Ljava/lang/Object;
.source "AlertManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/a;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nut/blehunter/ble/b;->a:Lcom/nut/blehunter/ble/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/nut/blehunter/ble/b;->a:Lcom/nut/blehunter/ble/a;

    invoke-static {v0}, Lcom/nut/blehunter/ble/a;->a(Lcom/nut/blehunter/ble/a;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/nut/blehunter/ble/b;->a:Lcom/nut/blehunter/ble/a;

    invoke-static {v0}, Lcom/nut/blehunter/ble/a;->b(Lcom/nut/blehunter/ble/a;)V

    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ble/b;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->e()Z

    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ble/b;->a:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->b()V

    goto :goto_0
.end method
