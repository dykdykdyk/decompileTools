.class final Lcom/nut/blehunter/ui/fn;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 762
    iget-object v0, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->m(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 764
    iget-object v0, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/nut/blehunter/ui/b/a/aa;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 766
    iget-object v0, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0, v3}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V

    .line 767
    iget-object v0, p0, Lcom/nut/blehunter/ui/fn;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->n(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I

    .line 769
    :cond_0
    return-void
.end method
