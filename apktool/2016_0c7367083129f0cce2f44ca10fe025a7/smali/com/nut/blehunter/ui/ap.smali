.class final Lcom/nut/blehunter/ui/ap;
.super Lcom/nut/blehunter/rxApi/j;
.source "FindRegionActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/ui/FindRegionActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/FindRegionActivity;Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nut/blehunter/ui/ap;->c:Lcom/nut/blehunter/ui/FindRegionActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ap;->a:Lcom/nut/blehunter/entity/Nut;

    iput-object p3, p0, Lcom/nut/blehunter/ui/ap;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nut/blehunter/ui/ap;->c:Lcom/nut/blehunter/ui/FindRegionActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/ui/ap;->c:Lcom/nut/blehunter/ui/FindRegionActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 137
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ap;->a:Lcom/nut/blehunter/entity/Nut;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    const-string v1, "safe_region"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/nut/blehunter/ui/ap;->c:Lcom/nut/blehunter/ui/FindRegionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/nut/blehunter/ui/ap;->c:Lcom/nut/blehunter/ui/FindRegionActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->finish()V

    .line 142
    return-void
.end method
