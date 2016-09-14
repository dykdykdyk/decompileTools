.class final Lcom/nut/blehunter/ui/b/ab;
.super Ljava/lang/Object;
.source "NotDisturbWifiFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/aa;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/aa;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 77
    if-eqz p2, :cond_1

    const-string v0, "1"

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/aa;->a(Lcom/nut/blehunter/ui/b/aa;)Lcom/nut/blehunter/entity/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/aa;->a(Lcom/nut/blehunter/ui/b/aa;)Lcom/nut/blehunter/entity/User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/User;->a(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/b/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-static {v3}, Lcom/nut/blehunter/ui/b/aa;->a(Lcom/nut/blehunter/ui/b/aa;)Lcom/nut/blehunter/entity/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ab;->a:Lcom/nut/blehunter/ui/b/aa;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/aa;->b(Lcom/nut/blehunter/ui/b/aa;)V

    .line 83
    const-string v1, "NTUIEventDndRegionSetup"

    const-string v2, "DND_STATUS_BUTTON_TAPPED"

    const-string v3, "STATE"

    invoke-static {v1, v2, v3, v0}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 77
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
