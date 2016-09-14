.class final Lcom/nut/blehunter/ui/ga;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/fy;

.field final synthetic b:Lcom/nut/blehunter/ui/fz;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/fz;Lcom/nut/blehunter/ui/fy;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/nut/blehunter/ui/ga;->b:Lcom/nut/blehunter/ui/fz;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ga;->a:Lcom/nut/blehunter/ui/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/nut/blehunter/ui/ga;->b:Lcom/nut/blehunter/ui/fz;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fz;->o:Lcom/nut/blehunter/ui/fy;

    .line 9882
    iget-object v1, v0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    .line 1032
    iget-object v0, p0, Lcom/nut/blehunter/ui/ga;->b:Lcom/nut/blehunter/ui/fz;

    .line 10488
    iget v2, v0, Landroid/support/v7/widget/ex;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/support/v7/widget/ex;->b:I

    .line 1032
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    .line 1033
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nut/blehunter/entity/x;->a:Z

    .line 1034
    iget-object v1, p0, Lcom/nut/blehunter/ui/ga;->b:Lcom/nut/blehunter/ui/fz;

    iget-object v1, v1, Lcom/nut/blehunter/ui/fz;->o:Lcom/nut/blehunter/ui/fy;

    .line 11102
    iget-object v1, v1, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v1}, Landroid/support/v7/widget/dy;->b()V

    .line 1035
    iget-object v1, p0, Lcom/nut/blehunter/ui/ga;->b:Lcom/nut/blehunter/ui/fz;

    iget-object v1, v1, Lcom/nut/blehunter/ui/fz;->o:Lcom/nut/blehunter/ui/fy;

    iget-object v1, v1, Lcom/nut/blehunter/ui/fy;->d:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Lcom/nut/blehunter/ui/ScanDeviceActivity;Lcom/nut/blehunter/entity/x;)V

    .line 1036
    return-void

    .line 10488
    :cond_0
    iget v0, v0, Landroid/support/v7/widget/ex;->f:I

    goto :goto_0
.end method
