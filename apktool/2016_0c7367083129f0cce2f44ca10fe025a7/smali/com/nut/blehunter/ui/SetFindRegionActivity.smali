.class public Lcom/nut/blehunter/ui/SetFindRegionActivity;
.super Lcom/nut/blehunter/ui/i;
.source "SetFindRegionActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/m;


# instance fields
.field private h:Lcom/nut/blehunter/entity/MapRegion;

.field private i:Lcom/nut/blehunter/entity/Nut;

.field private j:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->j:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->j:Landroid/view/Menu;

    const v1, 0x7f0d024a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->b(Z)V

    .line 54
    return-void
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->b(Z)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    .line 26
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 27
    const-string v0, "nut"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    .line 28
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    .line 1134
    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->e:Lcom/nut/blehunter/entity/Nut;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->d(I)V

    .line 33
    const v0, 0x7f0601d2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->c(I)V

    .line 34
    const-string v0, "map_region"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/MapRegion;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    if-nez v0, :cond_2

    .line 36
    new-instance v0, Lcom/nut/blehunter/entity/MapRegion;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/MapRegion;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    .line 37
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    .line 38
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->i:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    .line 39
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v1, v0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v4, v0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget v6, v0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->a(Ljava/lang/String;DDI)V

    .line 1156
    iput-object p0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    .line 43
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->j:Landroid/view/Menu;

    .line 59
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->b(Z)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 67
    const v1, 0x7f0d024a

    if-ne v0, v1, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Region;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->b:D

    .line 74
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->c:D

    .line 75
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    iget v0, v0, Lcom/nut/blehunter/entity/Region;->d:I

    iput v0, v1, Lcom/nut/blehunter/entity/MapRegion;->d:I

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v1, "map_region"

    iget-object v2, p0, Lcom/nut/blehunter/ui/SetFindRegionActivity;->h:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetFindRegionActivity;->finish()V

    .line 82
    :cond_2
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
