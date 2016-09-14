.class final Lcom/nut/blehunter/ui/fh;
.super Ljava/lang/Object;
.source "SafeRegionManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/ui/fg;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/fg;I)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nut/blehunter/ui/fh;->b:Lcom/nut/blehunter/ui/fg;

    iput p2, p0, Lcom/nut/blehunter/ui/fh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nut/blehunter/ui/fh;->b:Lcom/nut/blehunter/ui/fg;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Lcom/nut/blehunter/ui/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/m;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/nut/blehunter/ui/fh;->b:Lcom/nut/blehunter/ui/fg;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ui/fh;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/nut/blehunter/ui/fh;->b:Lcom/nut/blehunter/ui/fg;

    iget-object v1, v1, Lcom/nut/blehunter/ui/fg;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/entity/SafeRegion;)V

    .line 150
    :cond_0
    return-void
.end method
