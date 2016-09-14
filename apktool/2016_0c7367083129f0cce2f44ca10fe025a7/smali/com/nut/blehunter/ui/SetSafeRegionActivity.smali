.class public Lcom/nut/blehunter/ui/SetSafeRegionActivity;
.super Lcom/nut/blehunter/ui/i;
.source "SetSafeRegionActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/m;


# instance fields
.field private final h:I

.field private i:Landroid/view/Menu;

.field private j:Z

.field private k:Lcom/nut/blehunter/entity/SafeRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;-><init>()V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->h:I

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 44
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 46
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c(Z)V

    .line 62
    return-void
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c(Z)V

    .line 57
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 113
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 114
    invoke-virtual {p0, v0, p3}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->finish()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "safe_region"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v1, v0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-wide v4, v0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget v6, v0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->a(Ljava/lang/String;DDI)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->d(I)V

    .line 36
    const v0, 0x7f060135

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c(I)V

    .line 1156
    iput-object p0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    .line 38
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->i:Landroid/view/Menu;

    .line 67
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->b(Z)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c(Z)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 78
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    .line 79
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->d()V

    .line 1160
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    .line 85
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    .line 86
    iget-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    iget v0, v0, Lcom/nut/blehunter/entity/Region;->d:I

    iput v0, v1, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    .line 91
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "safe_region"

    iget-object v2, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Lcom/nut/blehunter/entity/SafeRegion;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/entity/SafeRegion;-><init>(Lcom/nut/blehunter/entity/Region;)V

    iput-object v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->k:Lcom/nut/blehunter/entity/SafeRegion;

    goto :goto_1

    .line 99
    :pswitch_2
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    .line 100
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->b(Z)V

    .line 101
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->j:Z

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->a(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SetSafeRegionActivity;->c()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f0d024c
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
