.class final Lcom/nut/blehunter/ui/j;
.super Ljava/lang/Object;
.source "BaseSetRegionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/i;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/i;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->c(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->c(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    .line 1048
    iget-wide v0, v0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 91
    iget-object v2, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v2}, Lcom/nut/blehunter/ui/i;->b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;

    move-result-object v2

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Region;->b:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->c(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    .line 1052
    iget-wide v0, v0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 91
    iget-object v2, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v2}, Lcom/nut/blehunter/ui/i;->b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;

    move-result-object v2

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Region;->c:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->d(Lcom/nut/blehunter/ui/i;)V

    .line 95
    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v0}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v1}, Lcom/nut/blehunter/ui/i;->b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Region;->b()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/i;->a(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 96
    iget-object v0, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    iget-object v1, p0, Lcom/nut/blehunter/ui/j;->a:Lcom/nut/blehunter/ui/i;

    invoke-static {v1}, Lcom/nut/blehunter/ui/i;->b(Lcom/nut/blehunter/ui/i;)Lcom/nut/blehunter/entity/Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Region;->b()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/i;->a(Lcom/nut/blehunter/ui/i;Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/nut/blehunter/entity/CustomLatLng;

    .line 98
    :cond_1
    return-void
.end method
