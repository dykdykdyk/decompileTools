.class final Lcom/nut/blehunter/ui/gb;
.super Landroid/os/Handler;
.source "SelectWiFiActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SelectWiFiActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/d/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->b(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V

    .line 82
    iget-object v0, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Lcom/nut/blehunter/ui/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/gf;->notifyDataSetChanged()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/gb;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
