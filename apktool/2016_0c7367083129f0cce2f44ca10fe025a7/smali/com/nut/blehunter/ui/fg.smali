.class final Lcom/nut/blehunter/ui/fg;
.super Ljava/lang/Object;
.source "SafeRegionManageActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/a/f;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    const-class v3, Lcom/nut/blehunter/ui/SetSafeRegionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v2, "safe_region"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    new-instance v1, Lcom/nut/blehunter/ui/widget/m;

    iget-object v2, p0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    new-instance v3, Lcom/nut/blehunter/ui/fh;

    invoke-direct {v3, p0, p2}, Lcom/nut/blehunter/ui/fh;-><init>(Lcom/nut/blehunter/ui/fg;I)V

    invoke-direct {v1, v2, p1, v3}, Lcom/nut/blehunter/ui/widget/m;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method
